//
//  WikiDetailViewController.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class WikiDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var wikiController: WikiController?
    var wiki: Wiki?
    
    // MARK: - Outlets
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var spinnetTextView: UITextView!
    
    // MARK: - App lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func saveBarButtonTapped(_ sender: Any) {
    }
    
}
