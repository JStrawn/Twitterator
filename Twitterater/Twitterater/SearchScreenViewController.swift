//
//  SearchScreenViewController.swift
//  
//
//  Created by Louis Harris on 7/20/17.
//
//

import UIKit

class SearchScreenViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var trendingTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingTableView.delegate = self
        trendingTableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchButton(_ sender: Any) {
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

}
