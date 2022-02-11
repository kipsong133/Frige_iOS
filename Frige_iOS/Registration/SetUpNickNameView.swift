//
//  SetUpNickNameView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/09.
//

import SwiftUI

struct SetUpNickNameView: View {
    @State private var currentPageIndex: Int = 0
    @State private var nickname = ""
    @State private var isShow = false
    
    var body: some View {

        VStack {
            pageIndicator
                .padding(.top, 60)

            Spacer()
            
            titleText
                

            Spacer()
                .frame(maxHeight: 20)
            
            profileImage
                
            Spacer()
            
            nicknameTextField
                .padding(.leading, 33)
            
            Spacer()
            
            // nextButton
            RegisterNextButton(action: {
                //
            })
                .padding(.bottom, 49)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SetUpNickNameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SetUpNickNameView()
            SetUpNickNameView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}

extension SetUpNickNameView {
    var pageIndicator: some View {
        CustomPageIndicator(
            pageIndex: $currentPageIndex,
            maxCount: 2)
    }
    
    var titleText: some View {
        VStack {
            Text("환영합니다!\n닉네임을 설정해주세요.")
                .font(.system(size: 30, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.bottom, 5)
            
            Text("설정한 닉네임은 마이페이지에서 확인 가능합니다.")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.darkGray)
        }
    }
    
    var profileImage: some View {
        VStack {
            ZStack {
            Image("EmptyProfile")
                .resizable()
                .frame(
                    width: 114,
                    height: 114,
                    alignment: .center)
                .fixedSize()
                .padding(.top, 10)
                
                Image("CameraButton")
                    .offset(x:46,
                            y:39)
            }
            
            Text("프로필 사진")
                .font(.system(size: 15, weight: .regular))
                .foregroundColor(.darkGray)
        }
    }
    
    var nicknameTextField: some View {
        HStack {
            Text("닉네임")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.darkGray)
                .padding(.trailing, 26)
            
            TextField("닉네임을 입력", text: $nickname)
                .underlineTextField(.mangoTwo)
                .padding(.trailing, 15)
        }
    }
}



extension View {
    func underlineTextField(_ color: Color) -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(color)
            .padding(10)
    }
}


struct RegisterNextButton: View {
    
    var action = {}
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text("다음")
                .foregroundColor(.white)
                .padding(.horizontal, UIScreen.main.bounds.width / 2.4)
                .padding(.vertical, 15)
                .background(Color.darkGray)
                .cornerRadius(25)
        }
    }
}
