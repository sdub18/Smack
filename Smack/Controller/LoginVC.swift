//
//  LoginVC.swift
//  Smack
//
//  Created by Sam DuBois on 1/26/18.
//  Copyright © 2018 Sam DuBois. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var usrnameTxt: UITextField!
    @IBOutlet weak var psswdTxt: UITextField!
    @IBOutlet weak var activityWheel: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        activityWheel.isHidden = false
        activityWheel.startAnimating()
        
        guard let email = usrnameTxt.text , usrnameTxt.text != "" else { return }
        guard let pass = psswdTxt.text, psswdTxt.text != "" else { return }
        
        AuthService.instance.logInUser(email: email, pass: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_CHANGED, object: nil)
                        self.activityWheel.isHidden = true
                        self.activityWheel.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATEACCOUNTVC, sender: nil)
    }
    
    func setUpView() {
        activityWheel.isHidden = true
        usrnameTxt.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceHolder])
        psswdTxt.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceHolder])
    }

}
