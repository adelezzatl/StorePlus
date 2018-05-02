//
//  ViewController.swift
//  aJBboNew
//
//  Created by عبدالله on ١٥ شعبان، ١٤٣٩ هـ.
//  Copyright © ١٤٣٩ هـ عبدالله. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var webSite: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    let abURL = URL(string: "https://xxxxxxxxxxxxxxx.com")
    let abURLRequest = URLRequest(url: abURL!)
    webSite.loadRequest(abURLRequest)
    
    
    
    
    


}
    @IBAction func r(_ sender: Any) {
        webSite.reload()
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
                UIApplication.shared.open(URL(string: "https://twitter.com/xxxxxxxxxx")! as URL, options: [:], completionHandler: nil)
            } else {
                // Fallback on earlier versions
            }
        }
        
        alert.showSuccess("اي مشكله تواحهك في المتجر", subTitle:"👇تواصل معنا عبر👇")
    }
    
}
    
