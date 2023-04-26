//
//  ViewController.swift
//  MyApp
//
//  Created by Mohan K on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Section: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Section.delegate = self
        Section.dataSource = self
        
       Section.rowHeight = 80
    }

}


extension ViewController : UITableViewDataSource , UITableViewDelegate {
   
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView:UITableView,numberOfRowsInSection section:Int) -> Int {
        if section == 0 {
            return 2
        }
        else if section == 1 {
            return 3
        }
        else if section == 2 {
            return 4
        }
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Section.dequeueReusableCell(withIdentifier: "RowViewCell", for: indexPath) as! RowViewCell
        
        if(indexPath.section == 0) {
            
            cell.Future?.text = "mohan "
           cell.ImagePic.image = UIImage(named: "image1")
        }
        else if(indexPath.section == 1) {

            cell.Future.text = "Row in section 2"
        }
        else if(indexPath.section == 2) {

            cell.Future?.text = "Row in section 3"
        }
        return cell
    }
    
    
    func Section(_ tableView: UITableView, titleForHeaderIn section: Int) -> String? {
        return "Section" + (section+1).description
    }
    
    
}
