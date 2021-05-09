//
//  CovidInfoViewModel.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/09.
//

import UIKit

struct CovidInfoViewModel {
    
    // GETリクエスト
    // escapingで関数外でもデータを保持する
    static func getTotal(completion: @escaping (CovidInfoResponse.Total) -> Void) {
        let url = URL(string: "https://covid19-japan-web-api.vercel.app/api/v1/total")!
        let request = URLRequest(url: url)
        // URLにリクエストを投げる
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print("error:\(error!.localizedDescription)")
            }
            if let data = data {
                // 受け取ったデータをデコードする
                let result = try! JSONDecoder().decode(CovidInfoResponse.Total.self, from: data)
                completion(result)
            }
        }.resume()
        
    }
}
