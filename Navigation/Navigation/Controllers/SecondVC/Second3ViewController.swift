//
//  Second3ViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class Second3ViewController: UIViewController {

    @IBOutlet weak var second3Label: UILabel!
    var second3String: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        second3Label.text = second3String
        // Do any additional setup after loading the view.
    }

    @IBAction func second3GoBtnPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
