//
//  APIConfig.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case networkError(Error)
    case invalidData
    case decodingError(Error)
}

class APIConfig {
    static let shared = APIConfig()
    
    private let baseURL = "https://jsonplaceholder.typicode.com/"
    
    func fetchData<T: Decodable>(endpoint: String, method: HTTPMethod, completion: @escaping (Result<T, APIError>) -> Void) {
        guard let url = URL(string: endpoint, relativeTo: URL(string: baseURL)) else {
            completion(.failure(.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(.networkError(error)))
                return
            }
            
            guard response is HTTPURLResponse else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(.decodingError(error)))
            }
        }.resume()
    }
}
