//
//  TabBarController.swift
//  RocketApp
//
//  Created by Luiza on 29.05.2022.
//

import UIKit

enum TabBarType: String, CaseIterable {
    case home
    case discovery
}

extension TabBarType {
    func getTuBarItem() -> UITabBarItem {
        var tag = 0
        var title = ""
        let imageNamed = "ic\(self.rawValue)Tab"
        switch self {
        case .home:
            tag = 0
            title = "Home"
        case .discovery:
            tag = 1
            title = "Discovery"
        }
        
        return UITabBarItem(title: title, image: UIImage(named: imageNamed), tag: tag)
    }
}

class TabBarViewController: UITabBarController {
    
    private var lastSelectedIndex: Int = 0
    let coustmeTabBarView:UIView = {
        
        //  daclare coustmeTabBarView as view
        let view = UIView(frame: .zero)
        
        // to make the cornerRadius of coustmeTabBarView
        view.backgroundColor = .white
//        view.layer.cornerRadius = 20
//        view.layer.borderWidth = CGFloat(0.3)
//        view.layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
        return view
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        addcoustmeTabBarView()
        hideTabBarBorder()
        
        var arrayVC = [UIViewController]()
        
        
        TabBarType.allCases.forEach { (item) in
            
            var isRoot = false
            var vc = UIViewController()
            switch  item {
            case .home:
                isRoot = true
                vc = HomeViewController()
                self.navigationController?.show(vc, sender: nil)
            case .discovery:
                vc = OrderViewController()
                self.navigationController?.show(vc, sender: nil)
            }
            let rootVC = UINavigationController(rootViewController: vc)
            if isRoot {
                rootVC.tabBarItem = item.getTuBarItem()
                arrayVC.append(rootVC)
            } else {
                vc.tabBarItem = item.getTuBarItem()
                arrayVC.append(vc)
            }
        }
        setViewControllers(arrayVC, animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        coustmeTabBarView.frame = tabBar.frame
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var newSafeArea = UIEdgeInsets()
        newSafeArea.bottom += coustmeTabBarView.bounds.size.height
        self.children.forEach({$0.additionalSafeAreaInsets = newSafeArea})
    }
    
    private func addcoustmeTabBarView() {
        coustmeTabBarView.frame = tabBar.frame
        view.addSubview(coustmeTabBarView)
        view.bringSubviewToFront(self.tabBar)
    }
    
    func hideTabBarBorder()  {
        let tabBar = self.tabBar
        tabBar.backgroundImage = UIImage.from(color: .clear)
        tabBar.shadowImage = UIImage()
        tabBar.clipsToBounds = true
    }
}

extension UIImage {
    static func from(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
}
