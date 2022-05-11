//
//  ContainerScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct ContainerScreen: View {
    @Binding var selectedTab:String
    var body: some View {
        TabView(selection: $selectedTab, content: {
            MainPageScreen()
                .tag("main_text".localized())
            
            SoundScren()
                .tag("sound_text".localized())
            
            UpdatingScreen()
                .tag("update_text".localized())
            
            LanguageScreen()
                .tag("language_text".localized())
            
            InfoScreen()
                .tag("info_text".localized())
        })
    }
}

struct ContainerScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
