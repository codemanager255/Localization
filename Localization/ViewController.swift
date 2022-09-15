//
//  ViewController.swift
//  Localization
//
//  Created by MAC on 14/09/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        let name = "Adam"
        performSegue(withIdentifier: "Login", sender: name)
    }


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        segue.destination as? LoginViewController
        
       let name =  sender as? String
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    
}
