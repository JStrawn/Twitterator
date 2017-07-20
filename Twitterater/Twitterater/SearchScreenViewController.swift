//
//  SearchScreenViewController.swift
//  
//
//  Created by Louis Harris on 7/20/17.
//
//

import UIKit
import TwitterKit

class SearchScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var trendingTableView: UITableView!
    
    var trendingHashtags = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingTableView.delegate = self
        trendingTableView.dataSource = self
        trendingTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        trendingHashtags = ["#Secret", "#Hashtag"]
        
        //searchTwitterForSentiment(searchTerm: "pepsi")
    }
    
    @IBAction func searchButton(_ sender: Any) {
        
    }
    
    //func searchTwitterForSentiment(searchTerm: String) {
        //let client = TWTRAPIClient()
        //let statusesShowEndpoint = "https://api.twitter.com/1.1/search/tweets.json?q=\(searchTerm)"
        //var clientError : NSError?
        
        //let request = client.urlRequest(withMethod: "GET", url: statusesShowEndpoint, parameters: nil, error: &clientError)
        
        //client.sendTwitterRequest(request) { (response, data, connectionError) -> Void in
            //if connectionError != nil {
                //print("Error: \(connectionError ?? "IUNNO" as! Error)")
            //}
            
            //do {
                //let json = try JSONSerialization.jsonObject(with: data!, options: [])
                //print("json: \(json)")
            //} catch let jsonError as NSError {
                //print("json error: \(jsonError.localizedDescription)")
            //}

    //}
    //}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trendingHashtags.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trendingTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let myItem = trendingHashtags[indexPath.row]
        
        cell.textLabel?.text = myItem
        
        return cell
    }
    
    
}
