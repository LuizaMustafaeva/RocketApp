//
//  LoginViewController.swift
//  RocketApp
//
//  Created by Luiza on 29.05.2022.
//

import UIKit

class LoginViewController: UIViewController {

    var mainView = UIView()
    var mainLabel = UILabel()
    var numberTextField = UITextField()
    var pusswordTextField = UITextField()
    var loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "Login"
        setupView()
    }
    
    func setupView() {
        
        mainView.frame = CGRect(x: 20, y: 250, width: 350, height: 300)
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 10
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        mainView.layer.shadowRadius = 1
        mainView.layer.shadowOpacity = 0.5
        
        mainLabel.frame = CGRect(x: 40, y: 250, width: 350, height: 50)
        mainLabel.font = UIFont.systemFont(ofSize: 30.0)
        mainLabel.text = "Войти"
        
        numberTextField.frame = CGRect(x: 30, y: 320, width: 330, height: 50)
        numberTextField.placeholder = "Номер телефона"
        numberTextField.keyboardType = .numberPad
        numberTextField.layer.borderColor = UIColor.black.cgColor
        numberTextField.indent(size: 10)
        numberTextField.layer.borderWidth = 0.5
        numberTextField.layer.cornerRadius = 10
        numberTextField.layer.shadowColor = UIColor.lightGray.cgColor
        numberTextField.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        numberTextField.layer.shadowRadius = 0.5
        numberTextField.layer.shadowOpacity = 0.5
        
        pusswordTextField.frame = CGRect(x: 30, y: 400, width: 330, height: 50)
        pusswordTextField.placeholder = "Пароль"
        pusswordTextField.layer.cornerRadius = 10
        pusswordTextField.indent(size: 10)
        pusswordTextField.layer.shadowColor = UIColor.lightGray.cgColor
        pusswordTextField.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        pusswordTextField.layer.borderColor = UIColor.black.cgColor
        pusswordTextField.layer.borderWidth = 0.5
        pusswordTextField.layer.shadowRadius = 0.5
        pusswordTextField.layer.shadowOpacity = 0.5
        
        loginButton.frame = CGRect(x: 30, y: 480, width: 330, height: 50)
        loginButton.layer.cornerRadius = 10
        loginButton.backgroundColor = UIColor(named: "greenColor")
        loginButton.setTitle("Войти", for: .normal)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        loginButton.layer.shadowRadius = 5
        loginButton.layer.shadowOpacity = 0.5
        loginButton.addTarget(self, action: #selector(openRegistrationScreen), for: .touchUpInside)
        
        view.addSubview(mainView)
        view.addSubview(mainLabel)
        view.addSubview(numberTextField)
        view.addSubview(pusswordTextField)
        view.addSubview(loginButton)
        
    }
    
    @objc func openRegistrationScreen() {
        
        if numberTextField.text == "111" && pusswordTextField.text == "111"{
            let shopViewController = TabBarViewController()
            self.navigationController?.show(shopViewController, sender: nil)
        } else if numberTextField.text == "222" && pusswordTextField.text == "222"{
            let curierViewController = TabBarViewController()
            self.navigationController?.show(curierViewController, sender: nil)
        }
    }
}

extension UITextField {
    func indent(size:CGFloat) {
        self.leftView = UIView(frame: CGRect(x: self.frame.minX, y: self.frame.minY, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
}
