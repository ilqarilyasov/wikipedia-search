//
//  Wikipedia.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Wiki: Codable, Equatable {
    
    // MARK: - Model as JSON format
    
    let query: Query
    
    struct Query: Codable, Equatable {
        let search: [Search]
        
        struct Search: Codable, Equatable {
            let title: String
            let snippet: String
            let pageid: Int
        }
    }
    
    // MARK: - Get needed properties from JSON format
    
    var title: String {
        let titles = query.search.map { $0.title }
        return titles.joined(separator: ", ")
    }
    
    var snippet: String {
        let snippets = query.search.map { $0.snippet }
        return snippets.joined(separator: ", ")
    }
    
    var pageid: Int {
        let pageidStrings = query.search.map { String($0.pageid) }
        let pageid = pageidStrings.joined(separator: ", ")
        return Int(pageid)!
    }
    
    // MARK: - Equtable protocol stubs
    
    static func == (lhs: Wiki, rhs: Wiki) -> Bool {
        return lhs.query.search.map {$0.pageid} == rhs.query.search.map {$0.pageid}
    }
}
