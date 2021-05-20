//
//  CovidInfoBoard.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/21.
//

import SwiftUI

struct CovidInfoBoard: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(width: UIComponents.screenWidth, height: UIComponents.screenWidth + 100)
            .shadow(color: Color.gray.opacity(0.6), radius: 4, x: 10, y: 10)
    }
    
}

struct CovidInfoBoard_Previews: PreviewProvider {
    static var previews: some View {
        CovidInfoBoard()
    }
}
