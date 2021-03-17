//
//  RootRouter.swift
//  TabBarAppTemplate+LoginScreen
//
//  Created by Bowie Tso on 18/3/2021.
//
import UIKit

class RootRouter: Router{
    
    //use root router to show screen
    
    func showHome(animated: Bool, complete: (() -> Void)? = nil ){
        guard
          let homeViewController = UIStoryboard.storyboard(.main).instantiateViewController(HomeViewController.self) else {
            return
        }
        //        let homeNavigationController = BaseNavigationController.init(rootViewController: homeViewController)
        homeViewController.router = self
        //navigationController?.setNavigationBarHidden(true, animated: animated)
    //        homeViewController.modalPresentationStyle = .fullScreen
        homeViewController.navigationController?.navigationBar.backItem?.hidesBackButton = false
        homeViewController.hidesBottomBarWhenPushed = false
        navigationController?.pushViewController(homeViewController, animated: false)
    }

    func showTest(){
        guard
            let testViewController = UIStoryboard.storyboard(.main).instantiateViewController(TestViewController.self) else {
              return
          }
          
        testViewController.router = self
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.pushViewController(testViewController, animated: true)
    }
    
    func showMore(){
        guard
            let moreViewController = UIStoryboard.storyboard(.more).instantiateViewController(MoreViewController.self) else { // UIStoryboard.storyboard(.more) mean using More storyboard
            return
        }
        //        let homeNavigationController = BaseNavigationController.init(rootViewController: homeViewController)
//        moreViewController.router = MoreRouter(moreNavigationController!)
        moreViewController.router = self
        //navigationController?.setNavigationBarHidden(true, animated: false)
        navigationController?.pushViewController(moreViewController, animated: false)
    }
}
