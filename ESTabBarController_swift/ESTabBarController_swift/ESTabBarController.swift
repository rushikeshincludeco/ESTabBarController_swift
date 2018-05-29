//
//  ESTabBarController.swift
//  StarFuture
//
//  Created by codeLocker on 2017/9/4.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

import UIKit

open class ESTabBarController: UITabBarController {
    
   open var es_isTranslucent : Bool = false {
        didSet {
            self.tabBar.isTranslucent = es_isTranslucent
        }
    }
    
   open var es_barTintColor : UIColor = .white {
        didSet {
            self.tabBar.barTintColor = es_barTintColor
        }
    }
    
   open var es_tintColor : UIColor = .white {
        didSet {
            self.tabBar.tintColor = es_tintColor
        }
    }
    
   open var es_hideLine : Bool = false {
        didSet {
            if es_hideLine {
                self.tabBar.backgroundImage = UIImage()
                self.tabBar.shadowImage = UIImage()
            }
        }
    }
    
    open var es_barBackgroundImage : UIImage? {
        didSet {
            self.tabBar.backgroundImage = es_barBackgroundImage
        }
    }
    
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }

    public init() {
        super.init(nibName: nil, bundle: nil)
        //Do whatever you want here
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open func es_setViewController(_ viewController:UIViewController?, title:String?, normalImage:UIImage?, selectedImage:UIImage?) {
        
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
