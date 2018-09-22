//
//  WikiController.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class WikiController {
    
    // MARK: - Properties
    
    var wikis: [Wiki] = [] // Property for our models data
    let baseURL = URL(string: "https://en.wikipedia.org/w/api.php?")! // Endpoint
    
    // MARK: - REST fetch function
    
    func performSearch(searchTerm: String, completion: @escaping (Wiki?, Error?) -> Void) {
        
        // Create a URL component to construct the URL
        var component = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        
        // Create a single name value pair
        let query1 = URLQueryItem(name: "action", value: "query")
        let query2 = URLQueryItem(name: "list", value: "search")
        let query3 = URLQueryItem(name: "srsearch", value: searchTerm)
        let query4 = URLQueryItem(name: "utf8", value: "")
        let query5 = URLQueryItem(name: "format", value: "json")
        
        // Set the query items of the URL
        component.queryItems = [query1, query2, query3, query4, query5]
        
        // Make sure url is valid
        guard let request = component.url else {
            NSLog("URL is not valid")
            completion(nil, NSError())
            return
        }
        
        // Create the URL for getting data
        var requestURL = URLRequest(url: request)
        requestURL.httpMethod = "GET"
        
        // Create a data task and retrieve data from the URL
        URLSession.shared.dataTask(with: requestURL) { (data, _, error) in
            
            // Check if there is an error
            if let error = error {
                NSLog("Error getting data: \(error)")
                completion(nil, error)
                return
            }
            
            // Check if there is a data
            guard let data = data else {
                NSLog("No data returned")
                completion(nil, error)
                return
            }
            
            // Create a JSON decoder
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase // Convert file keys to camelCase
            
            // Decode the data to Wiki
            do {
                let wiki = try decoder.decode(Wiki.self, from: data)
                completion(wiki, error)
            } catch {
                NSLog("Error decoding data; \(error)")
                completion(nil, error)
                return
            }
            
        }.resume()
        
    }
    
    // MARK: - CRUD functions
    
    func createWiki() {
        
    }
    
    func updateWiki() {
        
    }
    
    func deleteWiki() {
        
    }
}
