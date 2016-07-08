//
//  TipsModel.swift
//  Quotes
//
//  Created by Natalie Lim on 7/6/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import GameKit

struct QuotesModel {
    let quotes = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
    ]
    
    func getRandomQuote() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(quotes.count)
        
        return quotes[randomNumber]
        
    }
}

