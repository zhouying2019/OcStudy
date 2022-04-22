//
//  ViewController.swift
//  FTTradeSwiftDemo6
//
//  Created by admin on 2022/4/20.
//

import UIKit

class FTTradeViewController: UITableViewController {
    
    
    private var cardContentArray : [Character] = ["A", "2", "3", "4", "5"]
    lazy private var cardModelArray : [FTTradeCard] = {
        var tmpArray : [FTTradeCard] = []
        for index in 0 ..< cardContentArray.count {
            let cardtmp = FTTradeCard(cardTurnOffContentUrl: "\(cardContentArray[index]).png", cardTitle: "\(cardContentArray[index])")
            tmpArray.append(cardtmp)
        }
        return tmpArray
    }()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardModelArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //as！表示向下转型
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")as! FTTradeCardCell
        
//        cell = FTTradeCardCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.cardView.setCardView(cardModel: cardModelArray[indexPath.row])
        cell.cardCellCallBackBlock = { [weak self] in
            
            self?.cardModelArray[indexPath.row].turnOffCard()
            
            if let strongSelf = self {
                cell.cardView.setCardView(cardModel: strongSelf.cardModelArray[indexPath.row])
            }
        }
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
//        self.view.addSubview(tableView)
        tableView.register(FTTradeCardCell.self, forCellReuseIdentifier: "cell")
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        cardModelArray[indexPath.row].turnOffCard()
//        tableView.reloadData()
//
//    }

}

