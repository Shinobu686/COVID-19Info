//
//  CovidInfoViewModel.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/13.
//

import Foundation

class CovidInfoViewModel: ObservableObject {
    
    @Published var covidData: CovidInfoResponse?
    
    // リクエストメソッドの呼び出し
    func fetchCovidInfo() {
        CovidInfoService().getCovidInfo { result in
            switch result {
            case .success(let covidData):
                DispatchQueue.main.async {
                    self.covidData = covidData
                }
            case . failure(_ ):
                print("error")
            }
        }
    }
}
