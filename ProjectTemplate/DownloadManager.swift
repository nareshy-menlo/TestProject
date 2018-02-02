    //
    //  DownloadManager.swift
    //  POPPY
    //
    //  Created by Naresh Reddy Yadulla on 05/10/15.
    //  Copyright © 2015 Menlo. All rights reserved.
    //
    
    import Foundation
    import Alamofire
    import Reachability
    protocol DownloadManagerDelegate {
        func downloadCompleted(_ info:DownloadInfo)
        func downloadFailed(_ info:DownloadInfo)        
    }

    class DownloadManager : NSObject {
        open class var sharedManager: Alamofire.SessionManager {
            let configuration = URLSessionConfiguration.default
            configuration.timeoutIntervalForResource = 15
            configuration.timeoutIntervalForRequest = 30
            return SessionManager(configuration: configuration)
        }
        
        override init() {
            super.init()
        }
        func noInternetConnection(){
            let app = UIApplication.shared.delegate as! AppDelegate
            let alertController = UIAlertController(title: "Error", message:
                "Your internet connection appears to be offline. Please check your network settings.", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
            app.window!.rootViewController!.present(alertController, animated: true, completion: nil)
        }
        func sendRequestToServerWithInfo(_ info : DownloadInfo) {
            
            if let reachability = Reachability(){
                if reachability.connection == .none{
                    noInternetConnection()
                    return
                }
            }
            else{
                noInternetConnection()
                return
            }
            var urlString:String!
            if info.serviceName.hasPrefix("http") {
                urlString = (URL(string:info.serviceName!)?.absoluteString)!
            }
//            else{
//                urlString = (URL(string: info.serviceName!, relativeToURL:URL(string: BASE_URL + URL_VERSION)!)?.absoluteString)!
//            }
//            let token: String? = UserDefaults.standardUserDefaults().valueForKey(globalTOKEN) as? String
//            if token != nil
//            {
//                info.headers = [
//                    "x-auth-token": token!,
//                ]
//            }
            print("URL:\(urlString) Params :\(info.requestParams)")
            DownloadManager.sharedManager.request(urlString, method: info.serviceMethod, parameters: info.requestParams, encoding: URLEncoding.default, headers: info.headers)
                .validate(statusCode: 200..<300)
                .responseJSON { response in
                    switch response.result {
                    case .success:
                        info.responseDict = response.result.value as? NSDictionary
                        print(info.responseDict ?? NSDictionary())
                        if let dele = info.delegate
                        {
//                            if let error = info.responseDict?.valueForKey("message") {
//                                if error.isKindOfClass(NSString) {
//                                    if error as! String == "Unauthorized" {
//                                        return
//                                    }
//                                }
//                            }
                            DispatchQueue.main.async{
                                dele.downloadCompleted(info)
                            }
                        }
                    case .failure(let error):
                        print(error)
                        if (response.response?.statusCode == 401)
                        {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                let alertController = UIAlertController(title: "Error", message:
                                    "Your session has expired. Please login to continue", preferredStyle: UIAlertControllerStyle.alert)
                                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
                                let app = UIApplication.shared.delegate as! AppDelegate
                                app.window!.rootViewController!.present(alertController, animated: true, completion: nil)
                            }
                        }
                        info.error = error as NSError?
                        info.responseDict = response.result.value as? NSDictionary
                        if let dele = info.delegate
                        {
                            DispatchQueue.main.async{
                                dele.downloadFailed(info)
                            }
                        }
                    }
            }
        }
    }
