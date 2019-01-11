//
//  DetailVC.swift
//  jsonParsing
//
//  Created by Harshil sureshbhai dobariya on 08/01/19.
//  Copyright © 2019 Harshil sureshbhai dobariya. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var capitalLBL: UILabel!
    @IBOutlet weak var regionLBL: UILabel!
    @IBOutlet weak var subregionLBL: UILabel!
    @IBOutlet weak var alpha3Code: UILabel!
    @IBOutlet weak var alpha2CodeLBL: UILabel!
    
    var stralpha3Code = ""
    var strregion = ""
    var strcapital = ""
    var strsubregion = ""
    var stralpha2Code = ""
    
    
    override func viewDidLoad() {
        
        capitalLBL.text = strcapital
        regionLBL.text = strregion
        subregionLBL.text = strsubregion
        alpha2CodeLBL.text = stralpha2Code
        alpha3Code.text = stralpha3Code
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
