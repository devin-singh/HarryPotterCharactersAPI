//
//  URLSessionManager.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class URLSessionManager {
    
    static func fetchData(for url: URL, completion: @escaping (Result<Data, NetworkError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            guard let data = data else { return completion(.failure(.noDataFound)) }
            
            completion(.success(data))
            
        }.resume()
    }
}

