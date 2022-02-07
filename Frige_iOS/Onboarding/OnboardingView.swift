//
//  OnboardingView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/06.
//

import SwiftUI

struct OnboardingView: View {
    
    // Touring-Service View will show
    @State private var isTouringViewShow = false
    
    // Show View that user can choose social-login
    // Apple or Kakao
    @State private var isShowSocialBottomView = false
    var bottomSheetDivider: CGFloat {
        UIScreen.main.bounds.height > 800 ? 2.5 : 1.8
    }
    
    var offset: CGFloat {
        isShowSocialBottomView ? 0 : UIScreen.main.bounds.height / bottomSheetDivider
    }
    
    var body: some View {
        
        ZStack {
            if isTouringViewShow {
                TouringServiceFirstView(isShow: $isTouringViewShow)
                    .zIndex(1)
                    .transition(.opacity)
            }
            
            
            if isShowSocialBottomView {
                Color.backgroundColorShowbottomSheet
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(1)
            }

            VStack(alignment: .center) {
                
                touringServiceButton
                
                Spacer()
                
                // Description
                descriptionLabels
                
                Spacer()
                
                // Image
                Image("OnboardingFrige")
                
                Spacer()
                
                // Button
                startButton
            }
            .padding(.bottom, 54)
                .edgesIgnoringSafeArea(.bottom)
            
            // bottomSheet
            socialLoginBottomSheet
                .edgesIgnoringSafeArea(.bottom)
        }
        .onTapGesture {
            withAnimation(.linear) {
                self.isShowSocialBottomView = false
            }
        }
        
        
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingView()
                .previewDevice("iPhone 8")
                .preferredColorScheme(.light)
            
            
            OnboardingView()
                .previewDevice("iPhone 13 Pro Max")
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            
        }
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
    
    var startButton: some View {
        Button(action: {
            // push Onboarding page
            self.isShowSocialBottomView = true
            
        }) { // label
            HStack {
                Text("시작하기")
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
    
    var touringServiceButton: some View {
        Button(action: {
            withAnimation {
                self.isTouringViewShow = true
            }
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
    
    var socialBottomSheetView: some View {
        VStack {
            
            socialLoginDescriptionText
                .padding(.top, 40)
                .padding(.bottom, 30)


            Group {
                kakaoButton
                    .padding(.bottom, 12)
                    
                appleButton
                    .padding(.bottom, 26)
            }
            .foregroundColor(.black)
            .padding(.horizontal, 10)

            naverButton
            Spacer()
                
        }
    }
    
    
    var socialLoginDescriptionText: some View {
        Text("간단하게 SNS 로그인 하고\n냉장GO의 모든 서비스를 누려보세요.")
            .font(.system(size: 16, weight: .medium))
            .multilineTextAlignment(.center)
            .lineSpacing(2)
    }
    
    var kakaoButton: some View {
        // Kakao Social Login Button
        Button(action: { }) {
            HStack {
                Spacer()
                Image(systemName: "message.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical, 3)
                    .frame(width: 20, height: 20)
                    
                Text("카카오로 시작하기")
                    .font(.system(size: 16, weight: .medium))
                Spacer()
                    
            }
            .padding(.vertical, 20)
            .background(Color.yellow)
            .cornerRadius(4)
        }
    }
    
    
    var appleButton: some View {
        // Apple Social Login Button
        Button(action: { }) {
            HStack {
                Spacer()
                Image(systemName: "applelogo")
                    .aspectRatio(12, contentMode: .fit)
                    
                Text("Apple로 시작하기")
                    .font(.system(size: 16, weight: .medium))
                Spacer()
                    
            }
            .padding(.vertical, 20)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.black, lineWidth: 1)
            )
        }
    }
    
    var naverButton: some View {
        // Kakao Social Login Button
        Button(action: { }) {
            Text("네이버로 시작하기")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color.warmGreyTwo)
                .underline()
        }
    }
    
    var socialLoginBottomSheet: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                socialBottomSheetView
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height / bottomSheetDivider,
                        alignment: .center)
                    .background(Color.white)
                    .offset(y: offset)
                    .animation(.easeInOut(duration: 0.5),
                               value: self.isShowSocialBottomView)
                    .edgesIgnoringSafeArea(.bottom)
                
            }
        }.zIndex(1)
    }
}
