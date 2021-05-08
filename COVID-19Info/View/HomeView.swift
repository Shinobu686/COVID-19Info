//
//  HomeView.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/06.
//

import SwiftUI

struct HomeView: View {
    var screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button(action:{}) {
                    Image(systemName: "goforward")
                        .resizable()
                        .frame(width: screenWidth / 10, height: screenWidth / 10)
                }.padding()
            }
            
            Text("新型コロナウイルスの状況")
                .fontWeight(.bold)
                .font(.title2)
                .foregroundColor(.white)
            
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(width: screenWidth, height: screenWidth * 1.4)
                    .shadow(color: .gray, radius: 3, x: 10, y: 7)
                
                HStack(spacing: 10) {
                    VStack(spacing: 40) { // 数値は仮
                        CovidDataItem(itemName: "PCR検査数", numValue: "54793")
                        CovidDataItem(itemName: "入院者数", numValue: "63315")
                        CovidDataItem(itemName: "死者数", numValue: "10846")
                    }
                    
                    VStack(spacing: 40) { // 数値は仮
                        CovidDataItem(itemName: "感染者数", numValue: "635281")
                        CovidDataItem(itemName: "重症者数", numValue: "1131")
                        CovidDataItem(itemName: "退院者数", numValue: "551293")
                    }
                }
            }.padding(.bottom, 50)
            
            Button(action: {}) {
                Text("厚労省ホームページ")
                    .fontWeight(.bold)
                    .frame(width: screenWidth / 1.2, height: screenWidth / 9)
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                    .padding()
            }
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.6177746357)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
