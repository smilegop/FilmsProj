//
//  NetworkDataFecth.swift
//  FilmsProj
//
//  Created by smilegop on 14.12.2021.
//

import Foundation


class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() { }
    
    func fetchMovie(urlString: String, responce: @escaping (Model?, Error?) -> Void) {
     
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            
            switch result {
                
            case .success(let data):
                do{
                    let films  = try JSONDecoder().decode(Model.self, from: data)
                    responce(films, nil)
                } catch let jsonError {
                  print("Faildet to decode JSON" , jsonError)
                }
            case .failure(let error):
                print("Error data: \(error.localizedDescription)")
                responce(nil, error)
            }
        }
        }
    }


