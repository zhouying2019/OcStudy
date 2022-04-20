//
//  ContentView.swift
//  FTTradeSwiftDemo4
//
//  Created by admin on 2022/4/18.
//

import Foundation
import UIKit

class ContentView : UIView {

    private var cardViewArray : [CardView]
    
    typealias contentViewBlock = (_ cardView : CardView) -> Void
    var contentViewCallBackBlock : contentViewBlock?
    
    init(frame: CGRect, cardModelArray : [Card]) {
        self.cardViewArray = []
        super.init(frame: frame)
        for index in 0..<cardModelArray.count {
            
            let tmp = CardView(frame : CGRect(x: 0, y: 0, width: 0, height: 0), cardModel: cardModelArray[index])
            
            tmp.cardViewCallBack = { [weak self] in
                if let tmpBlock = self?.contentViewCallBackBlock {
                    tmpBlock(tmp)
                }
            }
            
            self.cardViewArray.append(tmp)
            self.addSubview(tmp)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let margin : CGFloat = 10.0
        let padding_top : CGFloat = 10.0
        let width : CGFloat = (self.bounds.size.width - margin * 2) / 3
        let height : CGFloat = (self.bounds.size.height - margin * 2 - padding_top) / 2
        let padding_bottom  = (self.bounds.size.width - width * 2) / 3
        

        for index in 0..<self.cardViewArray.count {
            if(index < 3) {
                self.cardViewArray[index].frame = CGRect(x: margin + CGFloat(index) * padding_top + CGFloat(index) * width, y: margin, width: width, height: height)
            } else {
                self.cardViewArray[index].frame = CGRect(x: padding_bottom + (width + padding_bottom) * CGFloat((index - 3)), y: margin + padding_top + height, width: width, height: height)
            }
        }
    }
}
