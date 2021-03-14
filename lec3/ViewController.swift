//
//  ViewController.swift
//  lec3
//
//  Created by ADMIN on 13/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MobileTF: UITextField!
    @IBOutlet weak var btn1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btn1.layer.cornerRadius = 15
        self.view.addSubview(btn1)
        
        
        let mobileV = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        mobileV.backgroundColor = UIColor.yellow
        
        let lineV = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        lineV.backgroundColor = UIColor.yellow
        
        
        
    let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        btn.setTitle("M", for: .normal)
        btn.setTitleColor(UIColor.red, for: .normal)
        
        mobileV.addSubview(btn)
        mobileV.addSubview(lineV)
        
        
        
      
        
        MobileTF.rightViewMode = .always
        MobileTF.rightView = mobileV
        
    }

}

