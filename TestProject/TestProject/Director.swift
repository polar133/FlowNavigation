//
//  Director.swift
//  TestProject
//
//  Created by Carlos Jimenez on 7/27/17.
//

import Foundation
import FirstFramework
import SecondFramework

class Director {

    var navigationController: UINavigationController!
    
    func initialize(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func createFirstViewController() -> FirstViewController{
        let vm = FirstVM()
        vm.onNext = {
            self.navigationController.pushViewController(self.createSecondViewController(), animated: true)
        }
        
        let vc = FirstViewController.createStoryboardInstance()
        vc.viewModel = vm
        
        return vc
    }
    
    func createSecondViewController() -> SecondViewController{
        let vm = SecondVM()
        vm.onBack = {
            self.navigationController.popViewController(animated: true)
        }
        
        let vc = SecondViewController.createStoryboardInstance()
        vc.secondVM = vm
        
        return vc
    }
    
}
