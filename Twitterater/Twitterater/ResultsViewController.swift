//
//  ResultsViewController.swift
//  
//
//  Created by Louis Harris on 7/20/17.
//
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var searchTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
//       let back = UIBarButtonItem.
//        navigationBar.item
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
