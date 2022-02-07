//
//  Color+Extension.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/06.
//

import SwiftUI

import SwiftUI

extension Color {
    
    static let buttonBackgroundColor = Color("ButtonBackgroundColor")
    static let warmGreyTwo = Color("WarmGrey-Two")
    
    static let backgroundColorShowbottomSheet = Color("BottomSheetBackgroundColor")
    static let darkGray = Color("DarkGray")
    
    static let primaryShadow = Color.primary.opacity(0.2)
    static let secondaryText = Color(hex: "#6e6e6e")
    static let background = Color(UIColor.systemGray6)
    
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
