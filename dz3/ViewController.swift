//
//  ViewController.swift
//  dz3
//
//  Created by Apple iMac 27 on 26.11.2020.
//

import UIKit

@IBDesignable class PrimaryButton: UIButton{
    @IBAction func butt(_ sender: Any) {
    }
    @IBInspectable var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }

    
    
    
}

class ViewController: UIViewController {

    @IBOutlet weak var rectView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  

    

    @IBOutlet weak var rectTop: NSLayoutConstraint!
    

    
    
    
    var isActive: Bool = true
    var isDown: Bool = true
    
    @IBAction func changeColor(_ sender: Any) {
        isActive = !isActive
        if isActive{
            rectView.backgroundColor = .yellow
        }
        else{
            rectView.backgroundColor = .blue
        }
    }
    
    @IBAction func changeHeight(_ sender: Any) {
        isDown = !isDown
        if isDown
        {
            rectTop.constant = 400
            UIView.animate(withDuration: 3){
                self.view.layoutIfNeeded()
            }
        }
        else{
            rectTop.constant = 150
            UIView.animate(withDuration: 3){
                self.view.layoutIfNeeded()
            }
        }
       
        
        
        
    }
    
    
    
}

