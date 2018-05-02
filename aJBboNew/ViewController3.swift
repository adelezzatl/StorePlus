//
//  ViewController3.swift
//  aJBboNew
//
//  Created by عبدالله on ١٥ شعبان، ١٤٣٩ هـ.
//  Copyright © ١٤٣٩ هـ عبدالله. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var YT: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //a ضع قناتك في اليوتيوب هنا
        let abURL = URL(string: "https://www.youtube.com/channel/xxxxxxxxxxx")
        let abURLRequest = URLRequest(url: abURL!)
        YT.loadRequest(abURLRequest)
        
    }
    @IBAction func r(_ sender: Any) {
        YT.reload()
    }
    
    
    @IBAction func SCL(_ sender: Any) {
        let alert = SCLAlertView()
        
        alert.addButton("WhatsApp") {
            if #available(iOS 10.0, *) {
                //قم بتغيير الـ ****** الي رقم الواتساب الخاص فيك
                UIApplication.shared.open(URL(string: "https://api.whatsapp.com/send?phone=+966xxxxxxxxx")! as URL, options: [:], completionHandler: nil)
            } else {
                // Fallback on earlier versions
            }
        }
        
        
        alert.addButton("Twitter") {
            if #available(iOS 10.0, *) {
                //قم بتغيير الـ ****** الي حسابك بالسناب شات
                UIApplication.shared.open(URL(string: "https://twitter.com/xxxxxxxxx")! as URL, options: [:], completionHandler: nil)
            } else {
                // Fallback on earlier versions
            }
        }
        
        alert.showSuccess("اي مشكله تواحهك في المتجر", subTitle:"👇تواصل معنا عبر👇")
    }
    
}
