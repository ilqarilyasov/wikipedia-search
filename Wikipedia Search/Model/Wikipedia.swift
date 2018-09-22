//
//  Wikipedia.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Wiki: Codable, Equatable {
    let query: Query
    
    struct Query: Codable, Equatable {
        let search: [Search]
        
        struct Search: Codable, Equatable {
            let title: String
            let snippet: String
            let pageid: Int
        }
    }
    
    static func == (lhs: Wiki, rhs: Wiki) -> Bool {
        return lhs.query.search.map {$0.pageid} == rhs.query.search.map {$0.pageid}
    }
}
