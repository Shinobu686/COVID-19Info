//
//  CovidInfoResponse.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/09.
//

import UIKit

struct CovidInfoResponse: Decodable {
    // 国内の合計値
    var pcr: Int
    var positive: Int
    var hospitalize: Int
    var severe: Int
    var death: Int
    var discharge: Int
}
