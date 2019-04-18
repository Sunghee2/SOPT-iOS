//
//  SignUpViewController.swift
//  SOPThw1
//
//  Created by Sunghee Lee on 15/04/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var pw: UITextField!
    @IBOutlet weak var pwCheck: UITextField!
    @IBOutlet weak var name: UITextField!
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
        
        pwCheck.makeRounded(cornerRadius: 21)
        pwCheck.setBorder(borderColor: UIColor(red: 206/255, green: 206/255, blue: 206/255, alpha: 1.0), borderWidth: 0.5)
        pwCheck.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: id.frame.height))
        pwCheck.leftViewMode = .always
        
        name.makeRounded(cornerRadius: 21)
        name.setBorder(borderColor: UIColor(red: 206/255, green: 206/255, blue: 206/255, alpha: 1.0), borderWidth: 0.5)
        name.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: id.frame.height))
        name.leftViewMode = .always
        
        signupBtn.makeRounded(cornerRadius: 22)
        signupBtn.dropShadow(color: UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0), offSet: CGSize(width: 0, height: 3), opacity: 100, radius: 3)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupAction(_ sender: Any) {
        guard let idText = id.text, id.text?.count != 0 else {
            // 이메일 입력하지 않은 경우
            return
        }
        
        if idText.validateEmail() == false {
            // 이메일 형식이 맞지 않은 경우
        }
        
        guard let pwText = pw.text, pw.text?.count != 0 else {
            // 비밀번호를 입력하지 않은 경우
            return
        }
        
        guard let pwCheckText = pwCheck.text, pwCheck.text?.count != 0 else {
            // 비밀번호 확인를 입력하지 않은 경우
            return
        }
        
        if pwText != pwCheckText {
            // 입력한 비밀번호와 비밀번호 확인이 다른 경우
        }
        
        guard let nameText = name.text, name.text?.count != 0 else {
            // 이름을 입력하지 않은 경우
            return
        }
        
        
        
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
