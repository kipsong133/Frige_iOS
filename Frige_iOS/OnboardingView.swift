//
//  OnboardingView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/06.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            
           guestModeButton
            
            Spacer()
            
            // Description
            descriptionLabels
            
            Spacer()
            
            // Image
            Image("OnboardingFrige")
            
            Spacer()
            
            // Button
           nextButton
            
            Spacer()
        }
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


// MARK: - UI
extension OnboardingView {
    
    var descriptionLabels: some View {
        VStack {
            HStack {
                Text("쉬운 식재료 관리,\n냉장GO로 시작하세요.")
                    .font(.system(size: 24, weight: .bold))
                    .lineSpacing(2)
                Spacer()
            }
            .padding(.bottom, 16)
            
            
            HStack {
                Text("한눈에 파악하기 힘든\n식재료 유통기한 관리부터\n음식물 쓰레기 조회까지!")
                    .font(.system(size: 16, weight: .regular))
                    .lineSpacing(2)
                Spacer()
            }
        }.padding(.leading, 24)
    }
    
    var nextButton: some View {
        Button(action: {
            // push Onboarding page
            
        }) { // label
            Text("시작하기")
                .foregroundColor(.white)
                .padding(.horizontal, 150)
                .padding(.vertical, 20)
                .background(Color.buttonBackgroundColor)
                .cornerRadius(8)
        }
    }
    
    var guestModeButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Spacer()
                Text("기능 둘러보기")
                    .font(.system(size: 14))
                    .foregroundColor(Color.warmGreyTwo)
                    .underline()
                    .padding(.trailing, 24)
            }
        }
    }
}
