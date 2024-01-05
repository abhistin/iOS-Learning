//
//  Second2ViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class Second2ViewController: UIViewController {

    @IBOutlet weak var second2Label: UILabel!
    var second2String: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        second2Label.text = second2String
        // Do any additional setup after loading the view.
    }

    @IBAction func second2GoBtnPressed(_ sender: UIButton) {
        let second3VC = storyboard?.instantiateViewController(withIdentifier: "Second3ViewController") as! Second3ViewController
        second3VC.second3String = "Hey you are in the last Screen of SecondVC."
        navigationController?.pushViewController(second3VC, animated: true)
    }
}
