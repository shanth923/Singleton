//
//  secondViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var sanskrit: UITextField!
    @IBOutlet weak var english: UITextField!
    @IBOutlet weak var maths1a: UITextField!
    @IBOutlet weak var math1b: UITextField!
    @IBOutlet weak var chemestry: UITextField!
    @IBOutlet weak var physics: UITextField!
    
    
    var msg:String?
    
    
    //alerts
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == sanskrit){
            
            return true
        }
        
        if (textField == english) {
            
            if(Int(sanskrit.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == maths1a) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english.text!)! <= 100){
                
                return true
                
            }else
                
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
        if (textField == math1b) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english.text!)! <= 100 && Int(maths1a.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == chemestry) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english.text!)! <= 100 && Int(maths1a.text!)! <= 100 && Int(math1b.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        if (textField == physics) {
            
            if(Int(sanskrit.text!)! <= 100 && Int(english.text!)! <= 100 && Int(maths1a.text!)! <= 100 && Int(math1b.text!)! <= 100 && Int(chemestry.text!)! <= 100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
            
            
        }
        
        
        
        return true
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        
        if(textField == sanskrit || textField == english  || textField == maths1a || textField == math1b || textField == chemestry  || textField == physics )
        {
            let allowCharacters = CharacterSet(charactersIn:"1234567890 ")
            
            if(string.rangeOfCharacter(from: allowCharacters) != nil||string == "")
            {
                
                return true
            }
            else
            {
                msg = "invaild keywords"
                toast()
                return false
            }
        }
        
    
        return true
        
        
        
    }
    
    
    
    
    //submit action
    
    
    @IBAction func submitAction(_ sender: UIButton) {
       
        if(Int(sanskrit.text!)! > 1 && Int(english.text!)! > 1 && Int(maths1a.text!)! > 1 && Int(math1b.text!)! > 1 && Int(chemestry.text!)! > 1 && Int(physics.text!)! > 1){
            
        
        
        let target = storyboard?.instantiateViewController(withIdentifier: "third") as! ThirdViewController
        
       
         FormData.shared.sanskrit1 =  english.text
         FormData.shared.english1 =  maths1a.text
         FormData.shared.maths1a =  math1b.text
         FormData.shared.math1b =  sanskrit.text
         FormData.shared.chemestry1 =  chemestry.text
         FormData.shared.physics =  physics.text
        
        
        
        present(target, animated: true) {
            
        }
        
        
        }else{
            
            msg = "fill  all the textfields"
            toast()
            
            
        }
        
        
        
    }
    
    
    
    //delegate for variables
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          sanskrit.delegate = self
         english.delegate = self
         maths1a.delegate = self
         math1b.delegate = self
         chemestry.delegate = self
         physics.delegate = self


        // Do any additional setup after loading the view.
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
