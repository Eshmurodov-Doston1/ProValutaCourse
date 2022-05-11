//
//  MainScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView{
            Text("Main")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationBarTitle("Main")
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
