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
    
    func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/trending/movies?api_key=\(K.APICalls.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do{
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func getTrendingTv(completion: @escaping (Result<[Title], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/trending/tv?api_key=\(K.APICalls.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do{
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getPopularMovies(completion: @escaping (Result<[Title], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/movie/popular?api_key=\(K.APICalls.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _ , error in
            guard let data = data, error == nil else { return }
            do{
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/movie/upcoming?api_key=\(K.APICalls.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _ , error in
            guard let data = data, error == nil else { return }
            do{
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getTopRated(completion: @escaping (Result<[Title], Error>) -> Void){
        guard let url = URL(string: "\(K.APICalls.baseURL)/3/movie/top_rated?api_key=\(K.APICalls.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _ , error in
            guard let data = data, error == nil else { return }
            do{
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            
            catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
}
