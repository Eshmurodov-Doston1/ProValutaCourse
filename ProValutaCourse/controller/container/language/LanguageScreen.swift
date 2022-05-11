//
//  LanguageScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 10/05/22.
//

import SwiftUI

struct LanguageScreen: View {
    
    @State var isChecked = false
    
    @State var selected:String = Bundle.getLanguage()
   
    
   @ObservedObject var viewViewModel = ViewViewModel()

    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Button(action: {
                         withAnimation(.spring()){selected = "uz"}
                        Bundle.setLanguage(lang: selected)
                        
                        self.viewViewModel.lang = Bundle.getLanguage()
                    }, label: {
                        HStack {
                            Text("uzb_lan".localized())
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 15, height: 15)
                                    
                                if selected == "uz" {
                                    Circle()
                                        .stroke(Color.blue,lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                              
                            }
                           
                                
                        }
                        .foregroundColor(.green)
                    })
                    .padding(.top,8)
                    
                    Button(action: {
                        withAnimation(.spring()){ selected = "ru"}
                        Bundle.setLanguage(lang: selected)
                        self.viewViewModel.lang = Bundle.getLanguage()
                    }, label: {
                        HStack {
                            Text("ru_lan".localized())
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 15, height: 15)
                                    
                                if selected == "ru" {
                                    Circle()
                                        .stroke(Color.blue,lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                              
                            }
                        }
                        .foregroundColor(.green)
                    })
                    .padding(.top,8)
                    
                    
                    Button(action: {
                        withAnimation(.spring()){ selected = "en"}
                        Bundle.setLanguage(lang: selected)
                        self.viewViewModel.lang = Bundle.getLanguage()
                    }, label: {
                        HStack {
                            Text("en_lan".localized())
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 15, height: 15)
                                    
                                if selected == "en" {
                                    Circle()
                                        .stroke(Color.blue,lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                              
                            }
                           
                                
                        }
                        .foregroundColor(.green)
                    })
                    .padding(.top,8)
                
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                .navigationBarTitle("language_text".localized(),displayMode: .inline)
                .padding(.bottom,10)
                .edgesIgnoringSafeArea(.all)
                .padding(.top,10)
                
                
                
                
            }
        }
    }
}

struct LanguageScreen_Previews: PreviewProvider {
    static var previews: some View {
        LanguageScreen()
    }
}
