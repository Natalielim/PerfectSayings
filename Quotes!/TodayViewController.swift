//
//  TodayViewController.swift
//  Quotes!
//
//  Created by Natalie Lim on 7/8/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import UIKit
import NotificationCenter
import GameKit

class TodayViewController: UIViewController, NCWidgetProviding {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = quotesModel.getRandomQuote()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        
        completionHandler(NCUpdateResult.NewData)
    }
    
    let quotesModel = QuotesModel()
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteButton: UIButton!
    
    func widgetMarginInsetsForProposedMarginInsets
        (defaultMarginInsets: UIEdgeInsets) -> (UIEdgeInsets) {
        return UIEdgeInsetsZero
    }
    
    @IBAction func showQuotes(sender: UIButton) {
        quoteLabel.text = quotesModel.getRandomQuote()
    }
}
