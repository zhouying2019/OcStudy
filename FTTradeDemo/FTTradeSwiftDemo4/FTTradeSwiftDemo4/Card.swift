//
//  Card.swift
//  FTTradeSwiftDemo4
//
//  Created by admin on 2022/4/18.
//

import Foundation

class Card {
    
    var cardTitle : String
    var cardContentUrl : String
    var cardTurnOffContentUrl : String
    var isSelected : Bool
    
    init(cardTurnOffContentUrl: String, cardTitle: String ) {
        self.cardTurnOffContentUrl = cardTurnOffContentUrl
        self.cardTitle = cardTitle
        self.cardContentUrl = "card_before.png"
        self.isSelected = false
    }
    
    func turnOffCard() {
        if(self.isSelected) {
            self.isSelected = !self.isSelected
            self.cardContentUrl = "card_before.png"
        } else {
            self.isSelected = !self.isSelected
            self.cardContentUrl = self.cardTurnOffContentUrl
        }
    }
}
