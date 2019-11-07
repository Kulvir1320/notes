//
//  ViewController.swift
//  kulvir_764928_note
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var folders : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.rightBarButtonItem = editButtonItem
    }

    @IBAction func newFloder(_ sender: UIBarButtonItem) {
        
        let altercontroller = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let itemAction = UIAlertAction(title: "Item", style: .default, handler: nil)
       
        altercontroller.addTextField { (textField) in
            textField.text = "name"
            
        }
            
        altercontroller.addAction(cancelAction)
        altercontroller.addAction(itemAction)
        self.present(altercontroller, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

