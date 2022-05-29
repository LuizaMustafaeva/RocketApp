//
//  ViewController.swift
//  RocketApp
//
//  Created by Luiza on 29.05.2022.
//

import UIKit

class FirstViewController: UIViewController {
    var mainView = UIView()
    var mainLabel = UILabel()
    var shopButton = UIButton()
    var curierButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "Rocket App"
        setupView()
    }
    
    func setupView() {
        
        mainView.frame = CGRect(x: 20, y: 250, width: 350, height: 230)
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 10
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        mainView.layer.shadowRadius = 1
        mainView.layer.shadowOpacity = 0.5
        
        mainLabel.frame = CGRect(x: 40, y: 250, width: 350, height: 50)
        mainLabel.font = UIFont.systemFont(ofSize: 30.0)
        mainLabel.text = "Выберите способ"
        
        shopButton.frame = CGRect(x: 30, y: 320, width: 330, height: 50)
        shopButton.layer.cornerRadius = 10
        shopButton.backgroundColor = UIColor(named: "greenColor")
        shopButton.setTitle("Магазин", for: .normal)
        shopButton.layer.shadowColor = UIColor.black.cgColor
        shopButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shopButton.layer.shadowRadius = 5
        shopButton.layer.shadowOpacity = 0.5
        shopButton.addTarget(self, action: #selector(openRegistrationScreen), for: .touchUpInside)
        
        curierButton.frame = CGRect(x: 30, y: 400, width: 330, height: 50)
        curierButton.layer.cornerRadius = 10
        curierButton.backgroundColor = UIColor(named: "greenColor")
        curierButton.setTitle("Курьер", for: .normal)
        curierButton.layer.shadowColor = UIColor.black.cgColor
        curierButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        curierButton.layer.shadowRadius = 5
        curierButton.layer.shadowOpacity = 0.5
        curierButton.addTarget(self, action: #selector(openRegistrationScreen), for: .touchUpInside)
        
        view.addSubview(mainView)
        view.addSubview(mainLabel)
        view.addSubview(shopButton)
        view.addSubview(curierButton)
        
    }
    
    @objc func openRegistrationScreen() {
        let loginViewController = LoginViewController()
        self.navigationController?.show(loginViewController, sender: nil)
    }
    
}

