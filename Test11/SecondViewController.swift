//
//  secondViewController.swift
//  Test11
//
//  Created by Max.Tang on 2018/12/17.
//  Copyright © 2018年 yehuan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var no = ""
    var name = ""
    var delegate: StudentProtocol?
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.text = name
        tfNo.text = no
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
            no = tfNo.text!
            name = tfName.text!
      delegate?.change(name: name, no: no)
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
