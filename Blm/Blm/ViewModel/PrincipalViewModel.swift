//
//  PrincipalViewModel.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import Foundation
import Alamofire

class PrincipalViewModel {
  
    private var sourceURL1 = URL(string: "https://gorest.co.in/public/v1/users")!
    var dataModel: MetaModel?
    
    func getAllTheQuestion1(completion: @escaping()->()){
        URLSession.shared.dataTask(with: sourceURL1) { [weak self] data, response, error in
            if let data1 = data {
                let jsonDecoder = JSONDecoder()
                let finalMoo = try! jsonDecoder.decode(MetaModel.self, from: data1)
                self?.dataModel = finalMoo
                print(finalMoo)
                completion()
            }
        }.resume()
    }
}

