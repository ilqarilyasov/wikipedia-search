//
//  SearchViewController.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    // MARK: - Properties
    
    var wikiController: WikiController?
    
    // MARK: - Outlets
    
    @IBOutlet weak var searchTableView: UITableView!

    // MARK: - Application lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Search Bar Delegate
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

    }
    
}
