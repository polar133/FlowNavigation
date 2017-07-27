//
//  MainFlowController.swift
//  TestProject
//
//  Created by Carlos Jimenez on 7/27/17.
//

import Foundation

import UIKit

class MainFlowController {
    
    private let navigationController: UINavigationController
    
    var onFinish: ((Void) -> Void)?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start<T>(firstVC: T) {
        navigationController.setViewControllers([firstVC as! UIViewController], animated: false)
    }
    
}
