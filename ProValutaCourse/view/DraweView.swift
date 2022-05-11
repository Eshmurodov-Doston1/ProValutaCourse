import SwiftUI

struct DraweView: View {
    @State var selectedTab = "main_text".localized()
    
    @State var showMenu = false
    
    @State var languageLive = Bundle.getLanguage()
   
    var body: some View {
        ZStack {
            
            Color("blue")
                .ignoresSafeArea()
            ScrollView(getRect().height < 750 ? .vertical : .init(),showsIndicators:false){
                SlideMenu(seletedTab: self.$selectedTab)
            }
            
            ZStack {
                
                Color.white.opacity(0.6)
                    .cornerRadius(showMenu ? 20 : 0)
                    .shadow(color: .black.opacity(0.07), radius: 2, x: -2, y: 0)
                    .offset(x: -25)
                    .padding(.vertical,30)
                
                Color.white.opacity(0.3)
                    .cornerRadius(showMenu ? 20 : 0)
                    .shadow(color: .black.opacity(0.07), radius: 2, x: -2, y: 0)
                    .offset(x: -50)
                    .padding(.vertical,60)
                
                
                ContainerScreen(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 20 : 0)
                
                
            }
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 130 : 0)
            .ignoresSafeArea()
            .overlay(
                // Menu button
                Button(action: {
                    withAnimation(.spring()){
                        showMenu.toggle()
                        
                    }
                }, label: {
                    // Animatet Drawer button
                    VStack(spacing:5){
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 25, height: 2)
                        // Rotating...
                            .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                            .offset(x:showMenu ? 2 : 0,y:showMenu ? 6 : 0)
                        VStack(spacing:5){
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 25, height: 2)

                            // Moving Up when clicked...
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 25, height: 2)
                                .offset(y: showMenu ? -8 : 0 )
                        }
                        .rotationEffect(.init(degrees: showMenu ? 50 : 0))

                    }
                })
                .padding()
                ,alignment: .topLeading)
           
        }
    }
    
   
    
}

struct DraweView_Previews: PreviewProvider {
    static var previews: some View {
        DraweView()
    }
}


extension View {
    func getRect()->CGRect {
        return UIScreen.main.bounds
    }
}
