//
//  DogAPI.swift
//  DogApi
//
//  Created by Abhishek Bhardwaj on 09/12/23.
//

import Foundation
import UIKit
class DogAPI {
    
enum Endpoint {
    case randomImageFromAllDogsCollection
    case randomImageForBreed(String)
    case listAllBreeds
    var url: URL {
        return URL(string: self.stringValue)!
    }
    
    var stringValue: String {
        switch self {
        case .randomImageFromAllDogsCollection:
            return "https://dog.ceo/api/breeds/image/random"
        case .randomImageForBreed(let breed):
            return "https://dog.ceo/api/breed/\(breed)/images/random"
        case .listAllBreeds:
            return "https://dog.ceo/api/breeds/list/all"
        }
    }
}

    class func fetchAllBreedsFromURL(completionHandler: @escaping ([String], Error?) -> Void) {
        let url = DogAPI.Endpoint.listAllBreeds.url
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completionHandler([], error)
                return
            }
            
            let decoder = JSONDecoder()
            let breedsList = try! decoder.decode(BreedsListResponse.self, from: data)
            let breeds = breedsList.message.keys.map { $0 }
            completionHandler(breeds, nil)
        }
        task.resume()
    }
    class func requestRandomImage(breed: String, completionHandler: @escaping (DogImage?, Error?) -> Void) {
        let url = DogAPI.Endpoint.randomImageForBreed(breed).url
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completionHandler(nil, error)
                return
            }
            let decoder = JSONDecoder()
            
            let imageData = try! decoder.decode(DogImage.self, from: data)
            completionHandler(imageData, nil)
        }
        task.resume()
    }
    
    class  func fetchImageFromURL(url: URL, completionHandler: @escaping (UIImage?, Error?) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else { 
                completionHandler(nil, error)
                return
            }
            let downloadedImage = UIImage(data: data)
            completionHandler(downloadedImage, nil)
        }
        task.resume()
    }
}
