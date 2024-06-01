//
//  ViewController.swift
//  DemoAppF
//
//  Created by Apple on 01/06/24.
//

import UIKit
import DemoFramework

class ViewController: UIViewController, passDataFromFramework {
    func getResultData(email: String) {
        self.resultLbl.text = email
    }
    

    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapVisit(_ sender: UIButton) {
        
        let vc = ListViewController(nibName: "ListViewController", bundle: Bundle(for: ListViewController.self))
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

}

