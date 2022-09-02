//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Swantan Barua on 03/09/22.
//

import Foundation

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/trending/all/day?api_key=\(K.APICalls.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
