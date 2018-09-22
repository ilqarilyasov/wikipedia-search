//
//  WikiTableViewController.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class WikiTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    let wikiController = WikiController()
    
    // MARK: - Application lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wikiController.wikis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WikiCell", for: indexPath) as? WikiTableViewCell else { return UITableViewCell() }
        let wiki = wikiController.wikis[indexPath.row]
        
        cell.wiki = wiki
        
        return cell
    }

    // MARK: - Edit cell
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let theWiki = wikiController.wikis[indexPath.row]
            wikiController.deleteWiki(wiki: theWiki)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }  
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
