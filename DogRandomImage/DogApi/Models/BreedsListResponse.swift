//
//  BreedsListResponse.swift
//  DogApi
//
//  Created by Abhishek Bhardwaj on 12/12/23.
//

import Foundation

struct BreedsListResponse: Codable {
    let status: String
    let message: [String: [String]]
}
