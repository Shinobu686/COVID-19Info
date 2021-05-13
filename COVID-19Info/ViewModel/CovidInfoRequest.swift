//
//  CovidInfoViewModel.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/09.
//

import Foundation
import SwiftUI

class CovidInfoRequest {
    
    // カスタムエラーの定義
    enum NetWorkError: Error {
        case badUrl
        case noData
        case decodingError
    }
    
    // APIリクエストに関する処理
    static func getCovidInfo(completion: @escaping (Result<CovidInfoResponse?, NetWorkError>) -> Void) {
        guard let url = URL(string: "https://covid19-japan-web-api.vercel.app/api/v1/total") else {
            return completion(.failure(.badUrl))
        }
        // URLにリクエストを投げる
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            let covidInfoResponse = try? JSONDecoder().decode(CovidInfoResponse.self, from: data)
            if let covidInfoResponse = covidInfoResponse {
                completion(.success(covidInfoResponse))
            } else {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
