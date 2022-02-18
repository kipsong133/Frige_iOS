//
//  MainTabView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/12.
//

import SwiftUI

struct MainTabView: View {
    private enum Tabs {
      case frige, recipe, community, favorite, myProfile
    }
    
    @State private var selectedTab: Tabs = .frige
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Group {
                frige
                    .tag(Tabs.frige)
                recipe
                    .tag(Tabs.recipe)
                myProfile
                    .tag(Tabs.myProfile)
            }
        }
        .accentColor(.darkGray)
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

extension MainTabView {
    var frige: some View {
        FrigeView()
            .tag(Tabs.frige)
            .tabItem(
                image: selectedTab == .frige ? "SelectedFrige" : "UnSelectedFrige",
                text: "냉장고")
            .onTapGesture {
                selectedTab = .frige
            }
        //        .onAppear { UITableView.appearance().separatorStyle = .none }
    }
    
    var recipe: some View {
      Text("레시피")
        .tag(Tabs.recipe)
        .tabItem(
            image: selectedTab == .recipe ? "SelectedRecipe" : "UnSelectedRecipe",
            text: "레시피")
        .onTapGesture {
            selectedTab = .recipe
        }
    }
    
    var myProfile: some View {
      Text("내정보")
        .tag(Tabs.recipe)
        .tabItem(
            image: selectedTab == .myProfile ? "SelectedProfile" : "UnSelectedProfile",
            text: "내정보")
        .onTapGesture {
            selectedTab = .myProfile
        }
    }
}

fileprivate extension View {
  func tabItem(image: String, text: String) -> some View {
    self.tabItem {
      Image(image)
        .font(Font.system(size: 17, weight: .light))
      Text(text)
    }
  }
}
