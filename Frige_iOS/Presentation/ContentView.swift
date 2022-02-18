//
//  ContentView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showRegisterView = true
    
    var body: some View {
        
        if !showRegisterView {
            
            SetUpNickNameView()
                .onAppear {
                    UITextField.appearance().clearButtonMode = .whileEditing
                }
            
        } else {
            MainTabView()
        }
//        OnboardingView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
