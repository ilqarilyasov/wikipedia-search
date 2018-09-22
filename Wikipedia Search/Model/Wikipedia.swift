//
//  Wikipedia.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Wikipedia: Codable {
    let query: Query
    
    struct Query: Codable {
        let search: [Search]
        
        struct Search: Codable {
            let title: String
            let pageid: Int
            let snippet: String
        }
    }
}
