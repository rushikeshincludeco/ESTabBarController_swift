//
//  ESTabBarController.swift
//  StarFuture
//
//  Created by codeLocker on 2017/9/4.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

import UIKit

public class ESTabBarController: UITabBarController {
    
   public var isTranslucent : Bool = false {
        didSet {
            self.tabBar.isTranslucent = isTranslucent
        }
    }
    
   public var barTintColor : UIColor = .white {
        didSet {
            self.tabBar.barTintColor = barTintColor
        }
    }
    
   public var tintColor : UIColor = .white {
        didSet {
            self.tabBar.tintColor = tintColor
        }
    }
    
   public var hideLine : Bool = false {
        didSet {
            if hideLine {
                self.tabBar.backgroundImage = UIImage()
                self.tabBar.shadowImage = UIImage()
            }
        }
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }

    public init() {
        super.init(nibName: nil, bundle: nil)
        //Do whatever you want here
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func setViewController(_ viewController:UIViewController?, title:String?, normalImage:UIImage?, selectedImage:UIImage?) {
        
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
