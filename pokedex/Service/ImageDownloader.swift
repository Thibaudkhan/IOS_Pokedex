//
//  ImageDownloader.swift
//  pokedex
//
//  Created by Guiock Anthony on 10/10/2019. (mensonge)
//  Copyright © 2019 Guiock Anthony. All rights reserved. (mensonge too)
//

import Foundation
import UIKit

enum Result<Value> {
    case success(Value)
    case failure(Error)
    
    var value: Value? {
        switch self {
        case .success(let value) :
            return value
        case .failure :
            return nil
        }
    }
    
    var error: Error? {
        switch self {
        case .success :
            return nil
        case .failure(let error) :
            return error
        }
    }
}

struct ImageDownloader {
    
    static func download(imageURLString : String, completion: @escaping (Result<UIImage>) -> Void) {
        print("mdr")
        guard let imageURL = URL(string: imageURLString) else {
            completion(.failure(APIError.badUrl))
            return
        }
        DispatchQueue.global().async {
            let session = URLSession.shared.dataTask(with: imageURL) { data, _, _ in
                guard let data = data,
                    let image = UIImage(data: data) else {
                        DispatchQueue.main.async {
                            completion(.failure(APIError.noImageFound))
                        }
                        return
                }
                DispatchQueue.main.async {
                    completion(.success(image))
                }
            }
            session.resume()
        }
    }
}
