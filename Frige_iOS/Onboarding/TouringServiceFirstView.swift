//
//  TouringServiceFirstView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct TouringServiceFirstView: View {
    
    @State private var currentPageIndex = 1
    
    var body: some View {
        VStack {

            xButton
            
            Spacer()
            
            Image("Onboarding_AI")
                .padding(.bottom, 27.6)
            
            Text("AI 영수증 인식")
                .font(.system(size: 28, weight: .bold))
                .padding(.bottom, 13)
            
            Text("찰각! 카메라 버튼만 누르면\n식재료를 손쉽게 등록할 수 있어요.")
                .font(.system(size: 18, weight: .regular))
                .multilineTextAlignment(.center)
                .lineSpacing(2)
            
            Spacer()

            CustomPageIndicator(pageIndex: $currentPageIndex)
            
            Spacer()
            
            NextButton(title: "다음") { // action
                print("TEST")
            }
            .padding(.bottom, 54)
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct TouringServiceFirstView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TouringServiceFirstView()
            TouringServiceFirstView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension TouringServiceFirstView {
    var xButton: some View {
        HStack {
            Spacer()
            Button(action: {}) {
                Image(systemName: "x.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .fixedSize()
                    .foregroundColor(.gray)
                    .padding(.top, 57)
                    .padding(.trailing, 19)
            }
        }
    }
}
