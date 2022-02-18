//
//  FrigeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/12.
//

import SwiftUI

struct FrigeView: View {
    
    let screen = UIScreen.main.bounds
    
    var frigeHeight: CGFloat {
        return CGFloat(screen.height * 0.612)
    }
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("냉장고")
                    Image("Arrow.Frige.down")
                }
                
                borderLine
                
                HStack {
                    addFriendButton
                        .padding(.trailing, 18)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(1 ..< 10) { index in
                                Button(action: {}) {
                                    Circle()
                                        .fill(Color.darkGray)
                                        .frame(width: 44, height: 44)
                                        .padding(.horizontal, 6)
                                }
                            }
                        }
                    }
                    Spacer()
                }
                borderLine
                
                Spacer()
                // 냉장고 UI
                ZStack {
                    // width와 height 값을 하위 냉장고에 주입해줄 것.
                    TwoDoorHorizontalFrigeTypeView(height: frigeHeight)
    //                FourDoorBalanceFrigeTypeView()
    //                TwoDoorVerticalFrigeTypeView()
    //                ThreeDoorVerticalFrigeTypeView()
                }
                Spacer()
            }
            
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                Circle()
                                    .fill(Color.mangoTwo)
                            )
                    }
                    .padding(.bottom, 25)
                    .padding(.trailing, 20)
                }
            }
        }
    }
}

struct FrigeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrigeView()
            FrigeView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension FrigeView {
    var borderLine: some View {
        Color.warmGreyTwo
            .frame(
                width: UIScreen.main.bounds.width,
                height: 1, alignment: .center)
    }
    
    var addFriendButton: some View {
        
        Button(action: {}) {
            Text("+ 버튼")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.darkGray)
                .padding(.vertical, 6)
                .padding(.horizontal, 11)
        }
        .background(Color.mangoTwo)
        .cornerRadius(15)
        .padding(.vertical, 12)
        .padding(.leading, 16)
    }
}
