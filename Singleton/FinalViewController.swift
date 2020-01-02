//
//  FinalViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    
    @IBOutlet weak var firtName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    
    
    @IBOutlet weak var sanskrit1: UITextField!
    @IBOutlet weak var english1: UITextField!
    @IBOutlet weak var math1a: UITextField!
    @IBOutlet weak var math1b: UITextField!
    @IBOutlet weak var physics: UITextField!
    @IBOutlet weak var chemestry: UITextField!
    
   
    
    
    @IBOutlet weak var sanskrit2: UITextField!
    @IBOutlet weak var english2: UITextField!
    @IBOutlet weak var maths2a: UITextField!
    @IBOutlet weak var maths2b: UITextField!
    @IBOutlet weak var chemetry2: UITextField!
    
    @IBOutlet weak var physics2: UITextField!
    
    
    
    var data:[String]?
    
    
    
    
    
    
    //getting data from singleton (formdata)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        firtName.text = FormData.shared.firstName
//        secondName.text = FormData.shared.secondName
//        age.text = FormData.shared.age
//        country.text = FormData.shared.country
        
        firtName.text! = FormData.shared.firstYrResult![0]
        secondName.text! = FormData.shared.firstYrResult![1]
        age.text! = FormData.shared.firstYrResult![2]
        country.text! = FormData.shared.firstYrResult![3]
        
         sanskrit1.text = FormData.shared.sanskrit1
        english1.text = FormData.shared.sanskrit1
        math1a.text = FormData.shared.sanskrit1
        math1b.text = FormData.shared.sanskrit1
        chemestry.text = FormData.shared.sanskrit1
        physics.text = FormData.shared.sanskrit1
        
        
        sanskrit2.text = FormData.shared.sanskrit2
        english2.text = FormData.shared.english2
        maths2a.text = FormData.shared.math2a
        maths2b.text = FormData.shared.maths2b
        chemetry2.text = FormData.shared.chemestry2
        physics2.text = FormData.shared.physics2
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
