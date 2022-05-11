//
//  SoundScren.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct SoundScren: View {
    var body: some View {
        NavigationView {
            Text("Sound Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationBarTitle("Sound Screen")
        }
    }
}

struct SoundScren_Previews: PreviewProvider {
    static var previews: some View {
        SoundScren()
    }
}
