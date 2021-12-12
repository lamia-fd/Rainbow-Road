//
//  ViewController.swift
//  Rainbow Road
//
//  Created by لمياء فالح الدوسري on 08/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var color=[UIColor.red,UIColor.orange,UIColor.yellow,UIColor.green,UIColor.blue,UIColor.purple]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.rowHeight = 120 
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call = tableView.dequeueReusableCell(withIdentifier: "call", for: indexPath)
        
        call.backgroundColor = color[indexPath.row]
        
        return call
    }
    

    
}
