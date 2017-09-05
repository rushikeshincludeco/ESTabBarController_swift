//
//  ESTabBarController.swift
//  StarFuture
//
//  Created by codeLocker on 2017/9/4.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

import UIKit

class ESTabBarController: UITabBarController {
    
    var isTranslucent : Bool = false {
        didSet {
            self.tabBar.isTranslucent = isTranslucent
        }
    }
    
    var barTintColor : UIColor = .white {
        didSet {
            self.tabBar.barTintColor = barTintColor
        }
    }
    
    var tintColor : UIColor = .white {
        didSet {
            self.tabBar.tintColor = tintColor
        }
    }
    
    var hideLine : Bool = false {
        didSet {
            if hideLine {
                self.tabBar.backgroundImage = UIImage()
                self.tabBar.shadowImage = UIImage()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        //Do whatever you want here
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setViewController(_ viewController:UIViewController?, title:String?, normalImage:UIImage?, selectedImage:UIImage?) {
        
        guard let viewController = viewController else {
            return;
        }
        let item = UITabBarItem.init()
        item.title = title
        item.image = normalImage?.withRenderingMode(.alwaysOriginal)
        item.selectedImage = selectedImage?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem = item;
        self.addChildViewController(viewController)
    }
}
