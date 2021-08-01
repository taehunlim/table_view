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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return restaurantNames.count
        } else {
            return restaurantNames.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let customCell = customTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
            
            customCell.nameLabel.text = restaurantNames[indexPath.row]
            customCell.typeLabel.text = restaurantTypes[indexPath.row]
            customCell.locationLabel.text = restaurantLocations[indexPath.row]
            
            customCell.cellImg.image = UIImage(named: restaurantImages[indexPath.row])
            
            return customCell
        } else {
            let rightCell = customTableView.dequeueReusableCell(withIdentifier: "rightCell", for: indexPath)
            
            rightCell.textLabel!.text = restaurantNames[indexPath.row]
            rightCell.detailTextLabel!.text = restaurantLocations[indexPath.row]
            
            return rightCell
            
        }
    
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 30
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "custom section"
        } else {
            return "basic section"
        }
    }
    
    
    // storyboard에서도 설정이 가능하며, 둘다 작성시 코드가 우선순위
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 150
        } else {
            return 50
        }
    }
}
