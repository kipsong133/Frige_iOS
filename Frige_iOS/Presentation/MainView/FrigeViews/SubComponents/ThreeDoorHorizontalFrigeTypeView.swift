//
//  ThreeDoorHorizontalFrigeTypeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/18.
//

import SwiftUI

struct ThreeDoorHorizontalFrigeTypeView: View {
    
    let height = CGFloat(500)
    let width = CGFloat(274)
    
    var sideWidth: CGFloat {
        return width / 3
    }
    
    var body: some View {
        ZStack {
            Color.mangoTwo
            HStack(spacing: 1) {
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 1.5,
                            height: height - 2)
                        .cornerRadius(radius: 8, corners: [.topLeft, .bottomLeft])
                }
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 1.5,
                            height: height - 2)
                }
                    
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 1.5,
                            height: height - 2)
                        .cornerRadius(radius: 8, corners: [.topRight, .bottomRight])
                }
                
            }
        }
        .frame(width: width, height: height)
        .cornerRadius(8)
    }
}

struct ThreeDoorHorizontalFrigeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeDoorHorizontalFrigeTypeView()
    }
}
