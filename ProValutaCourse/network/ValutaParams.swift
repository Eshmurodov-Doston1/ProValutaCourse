
import Foundation
import Alamofire

class ValutaParams {
    static let GET_VALUTA_LIST = "\(Bundle.getLanguage())/exchange-rates/json/"
    
    // MAERK: - Methode parametrs
    
    class func paramsEmpty()->Parameters {
        let params:Parameters = [:]
        return params
    }
}
