//
//  moveToWebButton.swift
//  COVID-19Info
//
//  Created by 久富稜也 on 2021/05/20.
//

import SwiftUI

struct moveToWebButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text("厚労省ホームページ")
                .fontWeight(.bold)
                .frame(width: UIComponents.screenWidth / 1.2, height: UIComponents.screenWidth / 9)
                .foregroundColor(Color.white)
                .font(.title2)
                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                .cornerRadius(30)

                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 10, y: 10)
                .padding()
            
        }
    }
}

struct moveToWebButton_Previews: PreviewProvider {
    static var previews: some View {
        moveToWebButton(action:{})
    }
}
