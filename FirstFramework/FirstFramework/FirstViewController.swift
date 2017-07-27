//
//  FirstViewController.swift
//  FirstFramework
//
//  Created by Carlos Jimenez on 7/27/17.
//

import UIKit
import StringFramework

public class FirstViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    public var viewModel: FirstVM?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = Title()
    }
    
    static public func createStoryboardInstance() -> FirstViewController {
        return UIStoryboard(name: "FirstViewStoryboard", bundle: Bundle(for: self)).instantiateViewController(withIdentifier: "first") as! FirstViewController
    }

    @IBAction func nextPressed(_ sender: Any) {
        viewModel?.nextPressed()
    }
    
}
