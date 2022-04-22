//
//  FTTradeCardView.swift
//  FTTradeSwiftDemo6
//
//  Created by admin on 2022/4/20.
//

import Foundation
import UIKit

class FTTradeCardView : UIView {
    
    typealias cardViewBlock = () -> Void
    var cardViewCallBackBlock : cardViewBlock?
    
    lazy private var topTitleLabel: UILabel = {
        let tmplabel = UILabel(frame: CGRect(x: 1, y: 1, width: 15, height: 15))
        tmplabel.sizeToFit()
        return tmplabel
    }()
    
    lazy private var bottomTitleLabel : UILabel = {
        let tmplabel = UILabel(frame: CGRect(x: 100, y: 140, width: 15, height: 15))
        tmplabel.sizeToFit()
        return tmplabel
    }()
    lazy private var cardImage : UIImageView = {
        let tmpImage = UIImageView(image: UIImage(named: "card_before.png"))
        tmpImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cardImageClickAction)))
        tmpImage.isUserInteractionEnabled = true
        tmpImage.sizeToFit()
        return tmpImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(cardImage)
        self.addSubview(topTitleLabel)
        self.addSubview(bottomTitleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCardView(cardModel: FTTradeCard) {
        let tmpImage = UIImage(named: cardModel.cardContentUrl)
        cardImage.image = tmpImage
        
        topTitleLabel.text = cardModel.cardTitle
        bottomTitleLabel.text = cardModel.cardTitle
    }
    
    @objc func cardImageClickAction() {
        print("click")
        if let back = cardViewCallBackBlock {
            back()
        }
    }

}

