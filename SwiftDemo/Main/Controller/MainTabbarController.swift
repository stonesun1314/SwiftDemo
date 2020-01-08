//
//  MainTabbarController.swift
//  SwiftDemo
//
//  Created by John Snow on 2020/1/3.
//  Copyright © 2020 Johnsnow. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addChildController(viewController: HomeViewController(),Title: "首页", DefaultImage: "btn_home_normal", SelectedImage: "btn_home_selected")
        addChildController(viewController: LiveViewController(),Title: "直播", DefaultImage: "btn_column_normal", SelectedImage: "btn_column_selected")
        addChildController(viewController: FollowViewController(),Title: "关注", DefaultImage: "btn_live_normal", SelectedImage: "btn_live_selected")
        addChildController(viewController: MinViewController(),Title: "我的", DefaultImage: "btn_user_normal", SelectedImage: "btn_user_selected")
    }
    
    func addChildController(viewController: UIViewController!,Title title: String, DefaultImage defaultImage: String?,SelectedImage selectedImage: String?){
        let navController:BaseNavigationController = BaseNavigationController.init(rootViewController: viewController)
        let normalImage: UIImage? = UIImage(named: defaultImage ?? "")
        let selImage:UIImage? = UIImage(named: selectedImage ?? "")
        navController.tabBarItem = UITabBarItem(title: title, image: normalImage?.withRenderingMode(.alwaysOriginal), selectedImage: selImage?.withRenderingMode(.alwaysOriginal))
        self.addChild(navController)
        
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
