//
//  DownloadInfo.swift
//  POPPY
//
//  Created by Naresh Reddy Yadulla on 05/10/15.
//  Copyright © 2015 Menlo. All rights reserved.
//

import Foundation
import Alamofire

class DownloadInfo: NSObject {
    var identifier:String!
    var serviceName:String!
    var serviceMethod:HTTPMethod!//OPTIONS, GET, HEAD, POST, PUT, PATCH, DELETE, TRACE, CONNECT
    var headers:[String : String]!
    var responseDict:NSDictionary?
    var requestParams:[String : AnyObject]!
    var error:NSError?
    var delegate:DownloadManagerDelegate?
}
