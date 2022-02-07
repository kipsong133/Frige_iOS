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
            Image(systemName: "x.circle")
            
            Image("Onboarding_AI")
            
            Text("AI 영수증 인식")
            
            Text("찰각! 카메라 버튼만 누르면\n식재료를 손쉽게 등록할 수 있어요.")
                .multilineTextAlignment(.center)

            CustomPageIndicator(pageIndex: $currentPageIndex)

            Button(action: {
                
            }) {
                Text("다음")
            }
        }
        
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
