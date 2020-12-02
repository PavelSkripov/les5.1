//
//  ViewController.swift
//  les5.1
//
//  Created by Павел on 01.12.2020.
//

import UIKit

class FirstViewController: UIViewController{
    let idCell = "mainCell"
    var fruits: [String] = []

    @IBOutlet weak var titleTable: UINavigationItem!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fruits = ["Apple", "Pineapple", "Orange"]
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MTableViewCell", bundle: nil), forCellReuseIdentifier: idCell)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
        
    }

    
    
}



extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath) as! MTableViewCell
        //let cell = Bundle.main.loadNibNamed("MTableViewCell", owner: self, options: nil)?.first as! MTableViewCell
        cell.delegate = self
        //вот это место не работает
        cell.titleLebel.text = fruits[indexPath.row]
        

        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleTable.title = "\(fruits[indexPath.row])"
        print(indexPath.row)
        
       
                
    }
}

extension FirstViewController: MTableViewCellDelegate {
    func didButtonPressed(){
        //let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //let vc = storyBoard.instantiateViewController(withIdentifier: "ID3")
        //self.present(vc, animated: true, completion: nil)
        self.performSegue(withIdentifier: "show", sender: nil)
        
    }
}
