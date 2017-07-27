//
//  FirstVM.swift
//  FirstFramework
//
//  Created by Carlos Jimenez on 7/27/17.
//

import Foundation

public class FirstVM : NSObject {
    
    public var onNext: ((Void) -> Void)?
    
    func nextPressed() {
        onNext?()
    }
    
}
