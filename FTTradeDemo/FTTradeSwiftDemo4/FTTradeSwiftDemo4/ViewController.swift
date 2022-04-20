//
//  ViewController.swift
//  FTTradeSwiftDemo4
//
//  Created by admin on 2022/4/18.
//

import UIKit

class ViewController: UIViewController {
    private var contentView : ContentView?
    private var cardContentArray : [Character] = ["A", "2", "3", "4", "5"]
    lazy private var cardModelArray : [Card] = {
        var tmpArray : [Card] = []
        for index in 0..<cardContentArray.count {
            let cardtmp = Card(cardTurnOffContentUrl: "\(cardContentArray[index]).png", cardTitle: "\(cardContentArray[index])")
            tmpArray.append(cardtmp)
        }
        return tmpArray
    }()
    
    override func viewDidLoad() {
        self.contentView = ContentView(frame: UIScreen.main.bounds, cardModelArray: self.cardModelArray)
        self.contentView?.backgroundColor = UIColor.blue
        
        self.contentView?.contentViewCallBackBlock = { (cardView : CardView) in
            
            cardView.cardModel.turnOffCard()
            cardView.setCardView()
        }
        
        self.view.addSubview(self.contentView!)
        super.viewDidLoad()
    }


}

