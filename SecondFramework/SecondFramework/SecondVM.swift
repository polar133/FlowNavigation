//
//  SecondVM.swift
//  SecondFramework
//
//  Created by Carlos Jimenez on 7/27/17.
//

import Foundation

public class SecondVM : NSObject {
    
    public var onBack: ((Void) -> Void)?
    
    func backPressed() {
        onBack?()
    }

}
