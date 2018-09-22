//
//  WikiTableViewCell.swift
//  Wikipedia Search
//
//  Created by Ilgar Ilyasov on 9/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class WikiTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    var wiki: Wiki?
    
    // MARK: - Outlets
    
    @IBOutlet weak var wikiTitleLabel: UILabel!
    @IBOutlet weak var wikiDateLabel: UILabel!
    @IBOutlet weak var wikiSpinnetLabel: UILabel!
    
    private func updateViews() {
        
//        if let wiki = wiki {
//            wikiTitleLabel.text =
//            wikiDateLabel.text =
//            wikiSpinnetLabel.text =
//
//        }
    }
    
}
