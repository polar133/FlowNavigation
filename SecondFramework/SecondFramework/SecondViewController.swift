//
//  SecondViewController.swift
//  SecondFramework
//
//  Created by Carlos Jimenez on 7/27/17.
//

import UIKit
import StringFramework

public class SecondViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    public var secondVM: SecondVM?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = SubTitle()
    }
    
    static public func createStoryboardInstance() -> SecondViewController {
        return UIStoryboard(name: "SecondStoryboard", bundle: Bundle(for: self)).instantiateViewController(withIdentifier: "second") as! SecondViewController
    }
    
    @IBAction func goBack(){
        self.secondVM?.backPressed()
    }
    
    
}
