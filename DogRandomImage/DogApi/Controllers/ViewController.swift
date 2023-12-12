//
//  ViewController.swift
//  DogApi
//
//  Created by Abhishek Bhardwaj on 09/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var dogImageView: UIImageView!
    
    var breeds: [String]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        DogAPI.fetchAllBreedsFromURL(completionHandler: handleBreedsListResponse(breeds:error:))
    }
    func handleBreedsListResponse(breeds: [String], error: Error?) {
        self.breeds = breeds
        DispatchQueue.main.async {
            self.pickerView.reloadAllComponents()
        }
    }
        func handleRandomImageResponse(imageData: DogImage?, error: Error?) {
            guard let imageURl = URL(string: imageData?.message ?? "") else { return }
            DogAPI.fetchImageFromURL(url: imageURl, completionHandler: handleImageFileResponse(image:error:))
        }
        func handleImageFileResponse(image: UIImage?, error: Error?) {
            DispatchQueue.main.async {
                self.dogImageView.image = image
            }
        }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return breeds.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return breeds[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DogAPI.requestRandomImage(breed: breeds[row], completionHandler: handleRandomImageResponse(imageData:error:))
    }
    
}

