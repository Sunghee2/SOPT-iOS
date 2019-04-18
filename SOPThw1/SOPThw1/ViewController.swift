//
//  ViewController.swift
//  SOPThw1
//
//  Created by Sunghee Lee on 15/04/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var pw: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        id.makeRounded(cornerRadius: 21)
        id.setBorder(borderColor: UIColor(red: 206/255, green: 206/255, blue: 206/255, alpha: 1.0), borderWidth: 0.5)
        id.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: id.frame.height))
        id.leftViewMode = .always
        id.keyboardType = UIKeyboardType.emailAddress
        
        pw.makeRounded(cornerRadius: 21)
        pw.setBorder(borderColor: UIColor(red: 206/255, green: 206/255, blue: 206/255, alpha: 1.0), borderWidth: 0.5)
        pw.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: id.frame.height))
        pw.leftViewMode = .always
        
        loginBtn.makeRounded(cornerRadius: 22)
        loginBtn.dropShadow(color: UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0), offSet: CGSize(width: 0, height: 3), opacity: 100, radius: 3)
        
        
        
    }

    @IBAction func LogInAction(_ sender: Any) {
        guard let idText = id.text, id.text?.characters.count != 0 else {
            // 이메일 입력하지 않은 경우
            return
        }
        
        if idText.validateEmail() == false {
            // 이메일 형식이 맞지 않은 경우
        }
        
        guard let pwText = pw.text, pw.text?.characters.count != 0 else {
            // 비밀번호를 입력하지 않은 경우
            return
        }
    }
    
    @IBAction func SignUpAction(_ sender: Any) {
        if let signupScreen = self.storyboard?.instantiateViewController(withIdentifier: "signupVC") {
            self.present(signupScreen, animated: true)
        }
    }
    
}

