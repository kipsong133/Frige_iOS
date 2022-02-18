//
//  ChooseFrigeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/11.
//

import SwiftUI

struct ChooseFrigeView: View {
    @Binding var currentPageIndex: Int
    
    var gridItemLayout = [GridItem(.flexible(), spacing: 10, alignment: .trailing), GridItem(.flexible(), spacing: 10, alignment: .leading)]
    
    @State private var selectedFrigeIndex = 0
    let screenSize = UIScreen.main.bounds.size
    
    var body: some View {
        ZStack {
            VStack {
                
                pageIndicator
                
                Spacer()
                
                titleText

                Spacer()

                // Grid 3 x 2
                HStack {
                    Spacer()
                    LazyVGrid(columns: gridItemLayout,
                              alignment: .center,
                              spacing: 10) {
                        ForEach(1..<7) { index in
                            ZStack {
                                (selectedFrigeIndex == index
                                ? Color.selectedMangoColor : Color.whiteThree)
                                Image("MiniFrige01")
                            }
                            .frame(
                                width: screenSize.width * (123 / 375),
                                height: screenSize.width * (123 / 375))
                            .cornerRadius(20)
                            .onTapGesture {
                                selectedFrigeIndex = index
                            }
                        }
                    }
                    Spacer()
                }
                Spacer()
                
                // nextButton
                RegisterNextButton(action: {
                    //
                })
                    .padding(.bottom, 49)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ChooseFrigeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChooseFrigeView(currentPageIndex: .constant(1))
                .previewDevice("iPhone 11 Pro")
            ChooseFrigeView(currentPageIndex: .constant(1))
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension ChooseFrigeView {
    var pageIndicator: some View {
        CustomPageIndicator(
            pageIndex: $currentPageIndex,
            maxCount: 2)
    }
    
    var titleText: some View {
        VStack {
            Text("귀하의 냉장고는\n어떤 타입인가요?")
                .font(.system(size: 30, weight: .bold))
                .lineSpacing(3)
                .multilineTextAlignment(.center)
                .padding(.bottom, 5)
            
            Text("가장 유사한 냉장고 타입을 선택해주세요.")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.darkGray)
        }
    }
}
