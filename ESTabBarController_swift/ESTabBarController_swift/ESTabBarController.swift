//
//  ESTabBarController.swift
//  StarFuture
//
//  Created by codeLocker on 2017/9/4.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

import UIKit

public class ESTabBarController: UITabBarController {
    
   public var es_isTranslucent : Bool = false {
        didSet {
            self.tabBar.isTranslucent = es_isTranslucent
        }
    }
    
   public var es_barTintColor : UIColor = .white {
        didSet {
            self.tabBar.barTintColor = es_barTintColor
        }
    }
    
   public var es_tintColor : UIColor = .white {
        didSet {
            self.tabBar.tintColor = es_tintColor
        }
    }
    
   public var es_hideLine : Bool = false {
        didSet {
            if es_hideLine {
                self.tabBar.backgroundImage = UIImage()
                self.tabBar.shadowImage = UIImage()
            }
        }
    }
    
    public var es_barBackgroundImage : UIImage? {
        didSet {
            self.tabBar.backgroundImage = es_barBackgroundImage
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
    
    public func es_setViewController(_ viewController:UIViewController?, title:String?, normalImage:UIImage?, selectedImage:UIImage?) {
        
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
