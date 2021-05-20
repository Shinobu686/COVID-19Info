//
//  HomeView.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/06.
//

import SwiftUI
import WKView

struct HomeView: View {
    
    @ObservedObject var covidInfoVM = CovidInfoViewModel()
    @State var flag: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("新型コロナウイルスの状況")
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(.white)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(width: UIComponents.screenWidth, height: UIComponents.screenWidth + 100)
                        .shadow(color: .gray, radius: 3, x: 10, y: 7)
                    
                    HStack(spacing: 10) {
                        VStack(spacing: 40) {
                            CovidDataItem(itemName: "PCR検査数", numValue: "\(covidInfoVM.covidData?.pcr ?? 0)")
                            
                            CovidDataItem(itemName: "入院者数", numValue: "\(covidInfoVM.covidData?.hospitalize ?? 0)")
                            CovidDataItem(itemName: "死者数", numValue: "\(covidInfoVM.covidData?.death ?? 0)")
                        }
                        
                        VStack(spacing: 40) {
                            CovidDataItem(itemName: "感染者数", numValue: "\(covidInfoVM.covidData?.positive ?? 0)")
                            CovidDataItem(itemName: "重症者数", numValue: "\(covidInfoVM.covidData?.severe ?? 0)")
                            CovidDataItem(itemName: "退院者数", numValue: "\(covidInfoVM.covidData?.discharge ?? 0)")
                        }
                    }.onAppear() {
                        self.covidInfoVM.fetchCovidInfo()
                    }
                }.padding(.bottom)
                
                NavigationLink(destination: WebView(url: "https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000164708_00001.html"), isActive: $flag) {
                    EmptyView()
                }
                
                moveToWebButton(action: {
                    self.flag = true
                })
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
