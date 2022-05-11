
import Foundation

class ValutaViewModel:ObservableObject {
    
    @Published var isloading = true
    
    @Published var listValutaApp = [ValutaCourse]()
    
    func getValutaCourse() {
        isloading = true
        AFHttp.get(url: "uz/exchange-rates/json/", params: ValutaParams.paramsEmpty(), holder: { response in
            self.isloading = false
            switch response.result {
            case .success:
                let listValuta = try! JSONDecoder().decode([ValutaCourse].self, from: response.data!)
                self.listValutaApp = listValuta
            case let .failure(error):
                print(error)
            }
        })
    }
    
}
