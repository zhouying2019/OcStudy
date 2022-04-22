//
//  FTTradeCardCell.swift
//  FTTradeSwiftDemo6
//
//  Created by admin on 2022/4/20.
//

import Foundation
import UIKit

class FTTradeCardCell : UITableViewCell {
    
    var cardView : FTTradeCardView

    typealias cellBlock = () -> Void
    var cardCellCallBackBlock : cellBlock?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        cardView = FTTradeCardView(frame: CGRect(x: 0, y: 0, width: 200, height: 180))
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cardView.cardViewCallBackBlock = { [weak self] in
            if let block = self?.cardCellCallBackBlock {
                block()
            }
        }
        self.contentView.addSubview(cardView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    
}
