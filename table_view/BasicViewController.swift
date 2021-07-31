//
//  BasicViewController.swift
//  table_view
//
//  Created by 임태훈 on 2021/07/31.
//

import UIKit

class BasicViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var restaurantNames = [
        "Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster",
        "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
        "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif",
        "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore",
        "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"
    ]
    
    var restaurantLocations = [
        "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong",
        "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York",
        "New York", "New York", "New York", "New York", "London", "London", "London",
        "London"
    ]
    
    var restaurantImages = [
        "cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster",
        "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate",
        "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf",
        "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak",
        "caskpubkitchen"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self;
        tableView.delegate = self;
    }
}

extension BasicViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let basicCell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        basicCell.textLabel?.text = restaurantNames[indexPath.row]
        
        basicCell.detailTextLabel?.text = restaurantLocations[indexPath.row]
                
        //UIImage: string type을 image형식으로 변환
        basicCell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        
        return basicCell
    }
}
