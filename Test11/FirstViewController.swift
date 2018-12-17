//
//  ViewController.swift
//  Test11
//
//  Created by Max.Tang on 2018/12/17.
//  Copyright © 2018年 yehuan. All rights reserved.
//

import UIKit

protocol StudentProtocol {
    func change(name:String,no:String)
}
class FirstViewController: UIViewController,StudentProtocol {
    func change(name: String, no: String) {
        self.no = no
        self.name = name	
    }
    
    var no = ""
    var name = ""
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        tfName.text = name
        tfNo.text = no
    }
    @IBAction func showSecondVC(_ sender: Any) {
        no = tfNo.text!
        name = tfName.text!
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")as!SecondViewController
        secVC.no = no
        secVC.name = name
        secVC.delegate = self self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thiVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        self.navigationController?.pushViewController(thiVC, animated: true)
    }
    
}

