//
//  First3ViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class First3ViewController: UIViewController {

    @IBOutlet weak var first3Label: UILabel!
    var first3String: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        first3Label.text = first3String
        // Do any additional setup after loading the view.
    }

    @IBAction func first3GoBtnPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
