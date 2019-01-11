//
//  ViewController.swift
//  jsonParsing
//
//  Created by Harshil sureshbhai dobariya on 08/01/19.
//  Copyright © 2019 Harshil sureshbhai dobariya. All rights reserved.
//

import UIKit

struct jsonStruct:Decodable {
    let name:String
    let capital:String
    let region:String
    let subregion:String
    let alpha2Code:String
    let alpha3Code:String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrdata = [jsonStruct]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Countries"
        navigationController?.navigationBar.prefersLargeTitles = true
        getdata()
        
    }

    
    func getdata(){
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{if error == nil{
                self.arrdata = try JSONDecoder().decode([jsonStruct].self, from: data!)
                
                for mainarr in self.arrdata{
                    print(mainarr.name)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        }
                    }
                }
            }catch{
                print("Error in get json data")
            }
        }.resume()
    }
//    tableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.namelable.text = arrdata[indexPath.row].name
        return cell
    }
    
    //    one controler to another click on tableview cell
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailVC = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailVC
        detail.strregion = arrdata[indexPath.row].region
        detail.strcapital = arrdata[indexPath.row].capital
        detail.strsubregion = arrdata[indexPath.row].subregion
        detail.stralpha2Code = arrdata[indexPath.row].alpha2Code
        detail.stralpha3Code = arrdata[indexPath.row].alpha3Code
        self.navigationController?.pushViewController(detail, animated: true)
    }

}

