//
//  BaseViewController.swift
//  RangeB
//
//  Created by naresh-mac@Naresh on 20/02/15.
//  Copyright (c) 2015 Naresh. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate,UIAlertViewDelegate, UIActionSheetDelegate,UIGestureRecognizerDelegate {
    
    //var hud: MBProgressHUD? = MBProgressHUD()
    var imagePicker: UIImagePickerController = UIImagePickerController()
    var alertController: UIAlertController = UIAlertController()
    var pickedImage: UIImage!
    var lineView: UIView?
    
    //var  factory: NIKFontAwesomeIconFactory?
    var logoImgView : UIImageView?
    //let reachability = Reachability.reachabilityForInternetConnection()
    let useClosures = false
    
    let borderAlpha : CGFloat = 0.7
    let screenSize: CGRect = UIScreen.main.bounds



    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationController?.navigationBar.hidden = false
//        addAppTitileToNavigationController()
//
//        
//        //        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
//        //        self.navigationController!.navigationBar.titleTextAttributes = titleDict as? [String : AnyObject]
//        //rect edge, to align view elements properly with top and bottom guids
//        if(self.respondsToSelector("edgesForExtendedLayout"))
//        {
//            self.edgesForExtendedLayout = UIRectEdge.None
//        }
//        self.imagePicker = UIImagePickerController()
//        self.imagePicker.delegate = self
        //         hud = MBProgressHUD.showHUDAddedTo(self.navigationController?.view, animated: true)
        //        hud?.hidden = true
       // self.addBackButton()
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    func addBackButton() {
        
        let button: UIButton = UIButton(type: .custom)
        button.setImage(UIImage(named: "backBtn.png"), for: UIControlState())
        button.addTarget(self, action: #selector(BaseViewController.backButtonPressed), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    @objc func backButtonPressed() {
        
        self.navigationController?.popViewController(animated: true)
    }

    func navigationBarApperance()
    {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
//    func hereAttributedTextCreation(text: NSMutableAttributedString)->NSMutableAttributedString
//    {
//        
//        let myString = NSMutableAttributedString(string: "here")
//        
//        // Set an attribute on part of the string
//        let myRange = NSRange(location: 0, length: 2) // range of "Swift"
//        let myCustomAttribute = [ "MyCustomAttributeName": "some value"]
//        myString.addAttributes(myCustomAttribute, range: myRange)
//        
//        return myString;
//
//    }
    
    
//    func clickedOnSettingsButton()
//    {
//        let settingsVC = SettingsViewController (nibName: "SettingsViewController", bundle: nil)
//        self.navigationController?.pushViewController(settingsVC, animated: true)
//        
//    }
//    func keyboardShown(notification: NSNotification) {
//        let info  = notification.userInfo!
//        let value: AnyObject = info[UIKeyboardFrameEndUserInfoKey]!
//        
//        let rawFrame = value.CGRectValue
//        let keyboardFrame = view.convertRect(rawFrame, fromView: nil)
//        
//        print("keyboardFrame: \(keyboardFrame)")
//    }
//    override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Public Functions
//    func addAppTitileToNavigationController () {
//        
//        let frame = UIScreen.mainScreen().bounds
//        let logoImg: UIImage = UIImage(named: "MainLogo.png")!
//        logoImgView = UIImageView(image: logoImg)
//        logoImgView!.frame = CGRectMake(0,0, frame.width / 2, 25)
//        logoImgView!.contentMode = UIViewContentMode.ScaleAspectFit
//        self.navigationItem.titleView = logoImgView!
//    }
    
//    func removeTitleImg () {
//        
//       self.navigationItem.titleView?.removeFromSuperview()
//    }
    
//    func addBackButton() {
//        
//        let backButton = UIBarButtonItem()
//        factory  = NIKFontAwesomeIconFactory.barButtonItemIconFactory()
//        backButton.image = factory!.createImageForIcon(NIKFontAwesomeIcon.ChevronLeft)
//        backButton.action = "popview"
//        backButton.target = self
//        backButton.enabled = true
//        backButton.style = UIBarButtonItemStyle.Plain
//        self.navigationItem.leftBarButtonItem = backButton
//    }
    
    
//    func addSettingsButton () {
//        
//        factory = NIKFontAwesomeIconFactory.barButtonItemIconFactory()
//        
//        let settingsButton = UIBarButtonItem()
//        settingsButton.image = factory!.createImageForIcon(NIKFontAwesomeIcon.Cog)
//        settingsButton.action = "clickedOnSettingsButton:"
//        settingsButton.target = self
//        settingsButton.enabled = true
//        settingsButton.style = UIBarButtonItemStyle.Plain
//        self.navigationItem.rightBarButtonItem = settingsButton
//    }
//    func addTitleToView (title: String) {
//        
//        let titleLab: UILabel = UILabel(frame: CGRectMake(0, 0, screenSize.width, 40))
//        titleLab.text = title
//        titleLab.textAlignment = NSTextAlignment.Center
//        titleLab.backgroundColor = UIColor.clearColor()
//        titleLab.textColor = UIColor.whiteColor()
//        self.navigationItem.titleView = titleLab
//        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
//        
//
//    }
//    func addLogtoNavigation () {
//        
//    }
    
   
//    func showAlertWithTitle(title:String?,message:String?, buttons:Int) {
//        
//        alertController = UIAlertController(title: title, message:
//            message, preferredStyle: UIAlertControllerStyle.Alert)
//        if buttons > 0 {
//            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
//                // ...
//            }
//            alertController.addAction(cancelAction)
//            let publishAction = UIAlertAction(title: "Publish Anyways", style: .Default) { (action) -> Void in
//                print("publish video")
//            }
//            alertController.addAction(publishAction)
//        }else {
//        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
//        }
//        self.presentViewController(alertController, animated: true, completion: nil)
//    }
//    func showActionSheetForImage() {
//        
//        // action Sheet
//        alertController = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
//        alertController.view.tintColor = UIColor.redColor()
//        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
//            // ...
//        }
//        alertController.addAction(cancelAction)
//        
//        let camButton = UIAlertAction(title: "Change Name",  style: .Default) { (action) in
//            
//        }
//        
//        alertController.addAction(camButton)
//        
//        let destroyAction = UIAlertAction(title: "Choose Photo From Library", style: .Default) { (action) in
//            self.imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
//            self.presentViewController(self.imagePicker, animated: true, completion:nil)
//            
//        }
//        alertController.addAction(destroyAction)
//
//        let changeUdle = UIAlertAction(title: "Change Youdlee",  style: .Default) { (action) in
//            
//            self.navigateToContactsPage()
//        }
//        alertController.addAction(changeUdle)
//        
//        self.presentViewController(alertController, animated: true, completion: nil)
//    }
    
//    func navigateToContactsPage() {
//        
//        let contactsPage = ContactsTableViewController(nibName: "ContactsTableViewController", bundle: nil)
//        contactsPage.chooseYoudlee = true
//        self.navigationController?.pushViewController(contactsPage, animated: true)
//    }
    
    //MARK: Navigation 
    
//    func popview (){
//        self.navigationController?.popViewControllerAnimated(true)
//    }
//    // MARK: - UIImagePickerControllerDelegate
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
//    self.pickedImage = info [UIImagePickerControllerOriginalImage] as! UIImage
//    
//    picker.dismissViewControllerAnimated(true, completion: nil)
//        
//    }
//    
//    func imagePickerControllerDidCancel(picker: UIImagePickerController){
//        picker.dismissViewControllerAnimated(true, completion: nil)
//
//    }
//    func applicationDocumentsDirectory() -> String! {
//        
//        let paths: NSArray!  = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
//        let basePath  =  paths.objectAtIndex(0)
//        return basePath as! String
//        
//    }
    //MARK: HUDProgress
//    func showHUDProgressWithMessage(message: String) {
//        
//        hud!.mode = MBProgressHUDMode.Text
//        hud!.labelText = message
//        hud?.show(true)
//        hud!.hide(true, afterDelay: 2)
//    }
    //MARK: Reachability
    
//    func checkNetworkRechability () {
//        if (useClosures) {
//            reachability?.whenReachable = { reachability in
//                self.updateLabelColourWhenReachable(reachability)
//            }
//            reachability?.whenUnreachable = { reachability in
//                self.updateLabelColourWhenNotReachable(reachability)
//            }
//        } else {
//            NSNotificationCenter.defaultCenter().addObserver(self, selector: "reachabilityChanged:", name: ReachabilityChangedNotification, object: reachability)
//        }
//        
//        reachability?.startNotifier()
//        
//        // Initial reachability check
//        if let reachability = reachability {
//            if reachability.isReachable() {
//                updateLabelColourWhenReachable(reachability)
//            } else {
//                updateLabelColourWhenNotReachable(reachability)
//            }
//        }
//    }
    
//    deinit {
//        
//        reachability?.stopNotifier()
//        
//        if (!useClosures) {
//            NSNotificationCenter.defaultCenter().removeObserver(self, name: ReachabilityChangedNotification, object: nil)
//        }
//    }

//    func updateLabelColourWhenReachable(reachability: Reachability) {
// 
//        print("internet conneted")
//    }
    
//    func updateLabelColourWhenNotReachable(reachability: Reachability) {
//
//        self.showAlertWithTitle("No Internet", message: "Please check the Internet connection", buttons: 0)
//    }
//    
//    
//    func reachabilityChanged(note: NSNotification) {
//        let reachability = note.object as! Reachability
//        
//        if reachability.isReachable() {
//            updateLabelColourWhenReachable(reachability)
//        } else {
//            updateLabelColourWhenNotReachable(reachability)
//        }
//    }
}
