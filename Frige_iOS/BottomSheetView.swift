//
//  BottomSheetView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/06.
//

import SwiftUI

struct BottomSheetView: View {
    @State var isOpen = false
    
    var offset: CGFloat {
        isOpen ? 0 : UIScreen.main.bounds.height / 3
    }
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Button(action: {
                self.isOpen.toggle()
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.black)
                    
                    Text("Open")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            })
            .buttonStyle(DefaultButtonStyle())
            .frame(width: 300, height: 50, alignment: .center)
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Color.red
                        .frame(width:geometry.size.width,
                               height: geometry.size.height / 3,
                               alignment: .center)
                        .background(
                            Color.white
                        )
                        .offset(y: offset)
                        .animation(.easeInOut(duration: 0.5))                            .transition(.move(edge: .bottom))
                }                            .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BottomSheetView()
            BottomSheetView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
