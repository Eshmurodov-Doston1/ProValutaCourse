
import SwiftUI

struct ItemValuta: View {
    
    
    var valutaCourse:ValutaCourse
    
    var image:String = "usd"
    
    var getValutaText = "getValutaText".localized()
    var saleValutaText = "saleValutaText".localized()
    
    
    var summText = "UZS"
    
    var body: some View {
     
            
            VStack(alignment:.leading) {
                HStack(spacing:8) {
                    AsyncImage(url:  URL(string: "https://nbu.uz/local/templates/nbu/images/flags/\(valutaCourse.code!).png"), content: { image in
                        
                        image
                        
                            .padding(.bottom,10)
                        
                    }, placeholder: {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .blue.opacity(0.5)))
                    })
                    
                    Text(self.valutaCourse.code!)
                        .fontWeight(.semibold)
                }
                Spacer()
                HStack {
                    VStack(alignment:.leading,spacing: 5) {
                        Text(self.getValutaText)
                            .foregroundColor(.gray)
                        HStack {
                            Text(self.valutaCourse.nbu_cell_price! == "" ? "noData".localized() :
                                    self.valutaCourse.nbu_cell_price!)
                                .fontWeight(.semibold)
                            Text(self.valutaCourse.nbu_cell_price! == "" ? "" : self.summText)
                                .fontWeight(.semibold)
                        }
                       
                    }
                    Spacer()
                    VStack(alignment:.leading,spacing: 5) {
                        Text(self.saleValutaText)
                            .foregroundColor(.gray)
                        HStack {
                            Text(self.valutaCourse.nbu_buy_price! == "" ? "noData".localized() : self.valutaCourse.nbu_buy_price!)
                                .fontWeight(.semibold)
                            Text(self.valutaCourse.nbu_buy_price! == "" ? "" : self.summText)
                                .fontWeight(.semibold)
                        }
                       
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity,alignment: .topLeading)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.1), radius: 8, x: 5, y:8)
           
        
        
    
    }
}

struct ItemValuta_Previews: PreviewProvider {
    static var previews: some View {
        ItemValuta(valutaCourse: ValutaCourse())
    }
}
