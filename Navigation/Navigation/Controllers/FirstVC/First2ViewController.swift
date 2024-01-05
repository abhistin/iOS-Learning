//
//  First2ViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class First2ViewController: UIViewController {

    @IBOutlet weak var first2Label: UILabel!
    var first2String: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        first2Label.text = first2String
        
    }
    @IBAction func first2GoBtnPressed(_ sender: UIButton) {
        let first3VC = storyboard?.instantiateViewController(withIdentifier: "First3ViewController") as! First3ViewController
        first3VC.first3String = "Hey Now you are at the Final Screen of FirstVC."
        navigationController?.pushViewController(first3VC, animated: true)
    }
    
}
