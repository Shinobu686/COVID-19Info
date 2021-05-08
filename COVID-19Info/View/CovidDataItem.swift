//
//  CovidDataItem.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/08.
//

import SwiftUI

struct CovidDataItem: View {
    
    var itemName: String
    var numValue: String
    
    var body: some View {
        
        VStack(spacing: 40) {
            Text(itemName)
                .fontWeight(.bold)
                .font(.title2)
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            Text(numValue)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom)
        }
        .frame(width: UIScreen.main.bounds.width / 2)
    }
}

struct CovidDataItem_Previews: PreviewProvider {
    static var previews: some View {
        CovidDataItem(itemName: "PCR検査数", numValue: "10000")
    }
}
