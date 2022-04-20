//
//  CardView.swift
//  FTTradeSwiftDemo4
//
//  Created by admin on 2022/4/18.
//

import Foundation
import UIKit

class CardView : UIView {
    var cardModel : Card
    //懒加载变量不能可选，要给个初始值
    lazy private var topTitleLabel: UILabel = {
        let tmplabel = UILabel(frame: CGRect(x: 1, y: 1, width: 15, height: 15))
        tmplabel.text = cardModel.cardTitle
        tmplabel.sizeToFit()
        return tmplabel
    }()

    lazy private var bottomTitleLabel : UILabel = {
        let tmplabel = UILabel(frame: CGRect(x: 100, y: 140, width: 15, height: 15))
        tmplabel.text = cardModel.cardTitle
        tmplabel.sizeToFit()
        return tmplabel
    }()
    
    lazy private var cardImage : UIImageView = {
        let tmpImage = UIImageView(image: UIImage(named: "card_before.png"))
        tmpImage.isUserInteractionEnabled = true
        tmpImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cardImageClickAction)))
        return tmpImage
    }()
    
    typealias cardViewBlock = () -> Void
    var cardViewCallBack : cardViewBlock?
    
    init(frame: CGRect, cardModel: Card) {
        self.cardModel = cardModel
        super.init(frame: frame)
        self.addSubview(self.cardImage)
        self.addSubview(self.topTitleLabel)
        self.addSubview(self.bottomTitleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setCardView() {
        let tmpImage = UIImage(named: self.cardModel.cardContentUrl)
        self.cardImage.image = tmpImage
        self.topTitleLabel.text = self.cardModel.cardTitle
        self.bottomTitleLabel.text = self.cardModel.cardTitle
    }
    
    @objc func cardImageClickAction() {
        if let back = cardViewCallBack {
            back()
        }
    }
}
