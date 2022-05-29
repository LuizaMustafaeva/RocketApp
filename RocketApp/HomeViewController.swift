//
//  HomeViewController.swift
//  RocketApp
//
//  Created by Luiza on 29.05.2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mainTableView = UITableView()
    var mainLabel = UILabel()
    var shopButton = UIButton()
    var curierButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        view.backgroundColor = .white
        self.title = "Ваши доставки"
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
    
    func setupView() {
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        mainTableView.separatorStyle = .none
        
        mainTableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        mainLabel.frame = CGRect(x: 100, y: 100, width: 250, height: 50)
        mainLabel.font = UIFont.systemFont(ofSize: 25.0)
        mainLabel.text = "Магазин Афина"
        
        mainTableView.frame = CGRect(x: 10, y: 150, width: 370, height: 700)
        mainTableView.backgroundColor = .white
        
        view.addSubview(mainLabel)
        view.addSubview(mainTableView)
        
        view.addSubview(shopButton)
        view.addSubview(curierButton)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.setupView()
        cell.mainLabel.text = "Номер заказа: 1900"
        cell.firstLabel.text = "Время доставки: 15:00 - 17:00"
        cell.secondLabel.text = "Адрес: Наурызбай 16"
        cell.thirdLabel.text = "Номер клиента: 878954545467"
        cell.fourthLabel.text = "Имя клиента: Асем"
        cell.fifthLabel.text = "Стоимость: 800 тенге"
        cell.sixthLabel.text = "Статус: Опубликован, не принят"
        return cell
    }
    

}
