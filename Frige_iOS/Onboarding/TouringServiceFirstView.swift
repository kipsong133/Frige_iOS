//
//  TouringServiceFirstView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct TouringServiceFirstView: View {
    
    @State private var currentPageIndex = 0
    
    let screen = UIScreen.main.bounds
    
    let pageTitleArr = [
        "AI 영수증 인식",
        "장보기 리스트",
        "지구 지킴이",
        "커뮤니티"
    ]
    
    let pageDescArr = [
        "찰각! 카메라 버튼만 누르면\n식재료를 손쉽게 등록할 수 있어요.",
        "집에 식재료가 있는지 헷갈리지 마세요.\n냉장고에 있는 식재료를 알려줘요.",
        "음식물 쓰레기 배출 카드를 등록해보세요.\n배출량과 금액을 한눈에 확인할 수 있어요.",
        "사용자들과 함께 레시피, 식재료 관리법 등 \n유용한 정보를 공유해봐요."
    ]
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                xButton
                
                Spacer()
                
                HStack {
                    
                    if currentPageIndex == 0 {
                        Image("Onboarding_AI")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 287.4 * (UIScreen.main.bounds.height / 812),
                                   alignment: .center)
                            .padding(.bottom, 27.6)
                            .transition(.leftToRightTransition)
                    }
                    
                    if currentPageIndex == 1 {
                        Image("Onboarding_Shopping")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 287.4 * (UIScreen.main.bounds.height / 812),
                                   alignment: .center)
                            .padding(.bottom, 27.6)
                            .transition(.leftToRightTransition)
                    }
                    
                    if currentPageIndex == 2 {
                        Image("Onboarding_Shopping")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 287.4 * (UIScreen.main.bounds.height / 812),
                                   alignment: .center)
                            .padding(.bottom, 27.6)
                            .transition(.leftToRightTransition)
                    }
                    
                    if currentPageIndex == 3 {
                        Image("Onboarding_Shopping")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 287.4 * (UIScreen.main.bounds.height / 812),
                                   alignment: .center)
                            .padding(.bottom, 27.6)
                            .transition(.leftToRightTransition)
                    }
                }
                .frame(width: screen.width,
                       height: 194.7)
                
                Group {
                    Text(pageTitleArr[currentPageIndex])
                        .font(.system(size:28, weight: .bold))
                        .padding(.bottom, 13)

                    Text(pageDescArr[currentPageIndex])
                        .font(.system(size: 18, weight: .regular))
                        .foregroundColor(.darkGray)
                        .multilineTextAlignment(.center)
                        .lineSpacing(2)
                }
                .animation(nil)

                    
                
                Spacer()
                
                HStack {
                    CustomPageIndicator(pageIndex: $currentPageIndex)
                }
                .frame(width: screen.width, height: 8)

                Spacer()
                
                NextButton(title: "다음", index: $currentPageIndex)
                    .padding(.bottom, 54)
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


extension AnyTransition {
    
    static var leftToRightTransition: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .offset(x: 500),
            removal: .offset(x: -500))
    }
}
