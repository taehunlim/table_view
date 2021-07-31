//
//  CustomTableViewController.swift
//  table_view
//
//  Created by 임태훈 on 2021/07/31.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    @IBOutlet weak var customTableView: UITableView!
    
    var restaurantNames = [
        "Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster",
        "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
        "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif",
        "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore",
        "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"
    ]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
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

        customTableView.dataSource = self;
        customTableView.delegate = self;
    }
}

extension CustomTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    // table view, table view cell 의 row 값을 auto에서 원하는 값으지로 지정
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customCell = customTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        customCell.nameLabel.text = restaurantNames[indexPath.row]
        customCell.typeLabel.text = restaurantTypes[indexPath.row]
        customCell.locationLabel.text = restaurantLocations[indexPath.row]
        
        customCell.cellImg.image = UIImage(named: restaurantImages[indexPath.row])
        
        return customCell
    }
}
