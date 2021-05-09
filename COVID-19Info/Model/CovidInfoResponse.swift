//
//  CovidInfoResponse.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/09.
//

import UIKit

struct CovidInfoResponse: Codable { // 都道府県別の結果にも対応できるように大枠
    // 国内の合計値
    struct Total: Codable {
        var pcr: Int
        var positive: Int
        var hospitalize: Int
        var severe: Int
        var death: Int
        var discharge: Int
    }
}
