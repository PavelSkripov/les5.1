//
//  ViewController.swift
//  les5.1
//
//  Created by Павел on 01.12.2020.
//

import UIKit

class ViewController: UIViewController{
    let idCell = "mainCell"

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSaections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        }
        if(indexPath.section == 0){
        cell!.textLabel?.text = "Mail Subject"
        cell!.detailTextLabel?.text = "details"
        cell!.imageView?.image = #imageLiteral(resourceName: "1414.png")
        }else{
            cell!.textLabel?.text = "Messege"
            cell!.detailTextLabel?.text = "details"
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}
