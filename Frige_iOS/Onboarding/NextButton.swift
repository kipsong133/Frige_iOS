//
//  NextButton.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct NextButton: View {
    
    let title: String
    @Binding var index: Int
    
    var body: some View {
        Button(action: {
            withAnimation {
                index < 3 ? (index += 1) : (index = 3)
            }
        }) { // label
            HStack {
                Text(title)
                    .foregroundColor(.white)
                    .frame(
                        width: UIScreen.main.bounds.width - 48,
                        height: 54,
                        alignment: .center)
                    .background(Color.buttonBackgroundColor)
                    .cornerRadius(8)
            }
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(title: "시작하기", index: .constant(1))
    }
}
