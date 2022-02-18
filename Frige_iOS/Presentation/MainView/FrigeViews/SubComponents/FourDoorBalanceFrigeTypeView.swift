//
//  SecondFrigeTypeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/18.
//

import SwiftUI

struct FourDoorBalanceFrigeTypeView: View {
    
    let height = CGFloat(500)
    let width = CGFloat(274)
    
    var sideWidth: CGFloat {
        return width / 2
    }
    
    var sideHeight: CGFloat {
        return height / 2
    }
    
    
    var body: some View {
        ZStack {
            Color.mangoTwo
            VStack(spacing: 1) {
                HStack(spacing: 1) {
                    ZStack {
                        // 2사분면
                        Color.white
                            .frame(
                                width: (sideWidth) - 1.5,
                                height: (sideHeight) - 2)
                            .cornerRadius(radius: 8, corners: [.topLeft])
                    }
                    
                    ZStack {
                        // 1사분면
                        Color.white
                            .frame(
                                width: (sideWidth) - 1.5,
                                height: (sideHeight) - 2)
                            .cornerRadius(radius: 8, corners: [.topRight])
                    }
                }
                
                HStack(spacing: 1) {
                    ZStack {
                        // 3사분면
                        Color.white
                            .frame(
                                width: (sideWidth) - 1.5,
                                height: (sideHeight) - 2)
                            .cornerRadius(radius: 8, corners: [.bottomLeft])
                    }
                    
                    ZStack {
                        // 4사분면
                        Color.white
                            .frame(
                                width: (sideWidth) - 1.5,
                                height: (sideHeight) - 2)
                            .cornerRadius(radius: 8, corners: [ .bottomRight])
                    }
                }
            }
        }
        .frame(width: width, height: height)
        .cornerRadius(8)
    }
    
}

struct FourDoorBalanceFrigeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        FourDoorBalanceFrigeTypeView()
            .previewLayout(.sizeThatFits)
    }
}
