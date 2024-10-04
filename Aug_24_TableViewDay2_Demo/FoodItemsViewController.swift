//
//  FoodItemsViewController.swift
//  Aug_24_TableViewDay2_Demo
//
//  Created by Vishal Jagtap on 04/10/24.
//

import UIKit

class FoodItemsViewController: UIViewController {
    
    @IBOutlet weak var foodItemsTableView: UITableView!
    var foodItemsName = ["VadaPav","Samosa","Dosa","Kachori","Pavbhaji"]
    var foodItemsDescription = ["Yummy","Yummy","Yummy","Yummy","Yummy"]
    var foodItemsPrice = [20.0,25.0,100.0,40.0,100.0]
    var reuseIdentifierForFoodItemTVCell = "FoodItemsTableViewCell"
    var arrayOFImages = [UIImage(named: "test_image_2"),
                         UIImage(named: "test_image_2"),
                         UIImage(named: "test_image_2"),
                         UIImage(named: "test_image_2"),
                         UIImage(named: "test_image_2")]

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        registerTableViewWithTableViewCell()
    }
    
    func initializeTableView(){
        foodItemsTableView.delegate = self
        foodItemsTableView.dataSource = self
    }
    
    //registration of TableView With Cell
    func registerTableViewWithTableViewCell(){
        let uiNib = UINib(nibName: "FoodItemsTableViewCell", bundle: nil)
        self.foodItemsTableView.register(uiNib, forCellReuseIdentifier: reuseIdentifierForFoodItemTVCell)
    }
}

extension FoodItemsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodItemsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodItemTableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierForFoodItemTVCell, for: indexPath) as! FoodItemsTableViewCell
        foodItemTableViewCell.foodItemName.text = foodItemsName[indexPath.row]
        foodItemTableViewCell.foodItemDescription.text = foodItemsDescription[indexPath.row]
        foodItemTableViewCell.foodItemPrice.text = String(foodItemsPrice[indexPath.row])
        
        foodItemTableViewCell.imageView1.image = arrayOFImages[indexPath.row]
        return foodItemTableViewCell
    }
}

extension FoodItemsViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160.0
    }
}
