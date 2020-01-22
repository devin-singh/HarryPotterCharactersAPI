//
//  HarryPotterCharactersService.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class HarryPoterCharactersService {
    
    // MARK: - Properties
    
    static private let baseURL = URL(string: "https://www.potterapi.com/v1/characters?key=$2a$10$F.cBmOE44KqCCfc5Sg/9AeXAn7bMuUIxCXB27TgEcIlTw.qMfBBKm")
    
    // MARK: - Methods
    
    static func fetchHarryPotterCharacters(completion: @escaping (Result<[Character], NetworkError>) -> Void) {
        
        guard let baseURL = baseURL else { return completion(.failure(.invalidURL))}
        
        URLSessionManager.fetchData(for: baseURL) { (result) in
            switch result {
            case .success(let data):
                do {
                    let characters = try JSONDecoder().decode([Character].self, from: data)
                    completion(.success(characters))
                } catch {
                    print(error, error.localizedDescription)
                    completion(.failure(.thrownError(error)))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
