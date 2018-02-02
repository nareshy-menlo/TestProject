
import UIKit

var farmerOrUserBoolValue=false;
var signInOrSignUp=false

//
//let screenSize: CGRect = UIScreen.mainScreen().bounds
//
//fonts
func appFontOfSize(_ size:CGFloat) -> (UIFont)!
{
    let font = UIFont(name: "Helvetica Neue", size: size)
    if let f = font{
        return f as UIFont!
    }
    return UIFont.systemFont(ofSize: size)
}
func boldAppFontOfSize(_ size:CGFloat) -> (UIFont)
{
    let font = UIFont(name: "Helvetica Neue", size: size)
    if let f = font{
        return f as UIFont!
    }
    return UIFont.boldSystemFont(ofSize: size)
}

func textFieldBorderStyle(_ textField : UITextField) -> UITextField
{
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.lightGray.cgColor
    
    return textField
}

//func italicAppFontOfSize(size:CGFloat) -> (UIFont)
//{
//    let font = UIFont(name: "Helvetica Neue", size: size)
//    if let f = font{
//        return f
//    }
//    return UIFont.systemFontOfSize(size)
//}
//
//
////attributedString
//func attributedStringForplaceHolder(str :String) -> NSAttributedString {
// 
////    let font = UIFont(name: "HelveticaNeue", size: 15)
//    
//    let placeholder = NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName : UIColor.redColor()])
//    return placeholder
//}
//func attributedStringWithStringAndColor(str : String , color: UIColor) -> NSAttributedString {
//    
//    let placeholder = NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName : color])
//    return placeholder
//}
//
////colors
//func appTheamColor() -> UIColor
//{
//    return UIColor(red: 255.0/255.0, green: 151.0/255.0, blue: 52.0/255.0, alpha: 1.0)
//}
//func appActionColor() -> UIColor
//{
//    return UIColor(red: 20.0/255.0, green: 186.0/255.0, blue: 99.0/255.0, alpha: 1.0)
//}
//
//func appDangerColor() -> UIColor
//{
//    return UIColor.redColor()
//}
//
////app name
//func applicationName() -> String {
////    return "YOUDLE"
//    let mainBundle = NSBundle.mainBundle()
//    let displayName = mainBundle.objectForInfoDictionaryKey("CFBundleDisplayName") as? String
//    let name = mainBundle.objectForInfoDictionaryKey(kCFBundleNameKey as String) as! String
//    return displayName != nil ? name : "YOUDLE"
//}
//
////func sizeForText(string:NSString, font:UIFont, width:CGFloat) -> CGFloat
////{
////    var attributes = NSDictionary(object: font, forKey: NSFontAttributeName)
////    var size = string.boundingRectWithSize(CGSizeMake(width, CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attributes as [NSObject : AnyObject], context: nil)
////    return size.height
////}
//func isValidEmail(email:String)->Bool
//{
//    let stricterFilter = false// Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
//    let stricterFilterString = "[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}"
//    let laxString = ".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*"
//    let emailRegex = stricterFilter ? stricterFilterString : laxString
//    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegex)
//    return emailTest.evaluateWithObject(email)
//}
//func isValidPassword(password:String)->Bool
//{
//    var upperCaseChars = NSCharacterSet (charactersInString:"ABCDEFGHIJKLKMNOPQRSTUVWXYZ")
//    var lowerCaseChars = NSCharacterSet (charactersInString:"abcdefghijklmnopqrstuvwxyz")
//    
//    if ( password.characters.count<6 || password.characters.count>20 )
//    {
//        return false // too long or too short
//    }
////    if let range = password.rangeOfCharacterFromSet(NSCharacterSet.letterCharacterSet()) {
////    }
////    else {
////        return false//no letter
////    }
////    if let range = password.rangeOfCharacterFromSet(NSCharacterSet.decimalDigitCharacterSet()) {
////    }
////    else {
////        return false//no number
////    }
////    if let range = password.rangeOfCharacterFromSet(upperCaseChars) {
////    }
////    else {
////        return false//no uppercase
////    }
////    if let range = password.rangeOfCharacterFromSet(lowerCaseChars) {
////    }
////    else {
////        return false//no lowercase
////    }
//    return true
//}
//func isValidString(text:String)->Bool
//{
//    let test = text.stringByReplacingOccurrencesOfString(" ", withString: "", options: [], range: nil)
//    if (test.characters.count < 1)
//    {
//        return false // too long or too short
//    }
//    return true
//}
//func isValidPhone(text:String)->Bool
//{
//    let phoneRegex = "[0-9]{5,15}$"
//    let phoneTest = NSPredicate(format:"SELF MATCHES %@", phoneRegex)
//    return phoneTest.evaluateWithObject(text)
//}
//func isValidWebsite(text:String)->Bool
//{
//    let urlRegEx =
//    "((http|https)://)?((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
//    let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegEx)
//    return urlTest.evaluateWithObject(text)
//}
//
//func deleteFileFormDocuments(fileUrl: NSURL) {
//    
//    let fileMgr: NSFileManager = NSFileManager.defaultManager()
//    
//    if fileMgr.fileExistsAtPath(fileUrl.absoluteString) {
//        
//        do {
//          try  fileMgr.removeItemAtURL(fileUrl)
//        }catch {
//            print("file not deleted")
//        }
//    }
//    
//}
//
//
//
//
//
//
//
//
