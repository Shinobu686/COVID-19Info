//
//  CovidInfoResponse.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/09.
//

import UIKit

struct CovidInfoResponse: Decodable {
    // 国内の合計値
    var pcr: Int //PCR検査数
    var positive: Int //感染者数
    var hospitalize: Int //入院患者数
    var severe: Int //重症者数
    var death: Int //死者数
    var discharge: Int //退院者数
}
