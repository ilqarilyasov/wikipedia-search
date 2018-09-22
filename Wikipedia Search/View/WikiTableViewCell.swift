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
    
    var wiki: Wiki? {
        didSet { updateViews() }
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var wikiTitleLabel: UILabel!
    @IBOutlet weak var wikiDateLabel: UILabel!
    @IBOutlet weak var wikiSpinnetLabel: UILabel!
    
    private func updateViews() {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        
        if let wiki = wiki {
            wikiTitleLabel.text = wiki.title
            wikiDateLabel.text = formatter.string(from: wiki.timestamp)
            wikiSpinnetLabel.text = wiki.snippet

        }
    }
    
}
