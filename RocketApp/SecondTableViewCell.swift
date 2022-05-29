//
//  SecondTableViewCell.swift
//  RocketApp
//
//  Created by Luiza on 29.05.2022.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    var mainView = UIView()
    
    var mainLabel = UILabel()
    var firstLabel = UILabel()
    var secondLabel = UILabel()
    var thirdLabel = UILabel()
    var fourthLabel = UILabel()
    var fifthLabel = UILabel()
    var sixthLabel = UILabel()
   
    override func awakeFromNib() {
        super.awakeFromNib()

        self.backgroundColor = .gray

        mainLabel.numberOfLines = 0
        firstLabel.numberOfLines = 0
        secondLabel.numberOfLines = 0
        thirdLabel.numberOfLines = 0
        fourthLabel.numberOfLines = 0
        fifthLabel.numberOfLines = 0
        sixthLabel.numberOfLines = 0
        
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func setupView() {
        
        mainView.frame = CGRect(x: 20, y: 10, width: 330, height: 200)
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 10
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        mainView.layer.shadowRadius = 1
        mainView.layer.shadowOpacity = 0.5
        
        mainLabel.frame = CGRect(x: 40, y: 10, width: 330, height: 50)
        mainLabel.font = UIFont.systemFont(ofSize: 30.0)
        
        firstLabel.frame = CGRect(x: 20, y: 60, width: 50, height: 50)
        firstLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        secondLabel.frame = CGRect(x: 80, y: 60, width: 60, height: 50)
        secondLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        thirdLabel.frame = CGRect(x: 150, y: 60, width: 70, height: 50)
        thirdLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        fourthLabel.frame = CGRect(x: 40, y: 150, width: 330, height: 50)
        fourthLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        fifthLabel.frame = CGRect(x: 40, y: 180, width: 330, height: 50)
        fifthLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        sixthLabel.frame = CGRect(x: 40, y: 210, width: 330, height: 50)
        sixthLabel.font = UIFont.systemFont(ofSize: 16.0)
        
        self.addSubview(mainView)
        self.addSubview(mainLabel)
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(thirdLabel)
        self.addSubview(fourthLabel)
        self.addSubview(fifthLabel)
        self.addSubview(sixthLabel)
        
    }
}
