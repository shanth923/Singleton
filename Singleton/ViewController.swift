//
//  ViewController.swift
//  Singleton
//
//  Created by R Shantha Kumar on 11/20/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    
    
    var msg:String?
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
            
            if(textField == firstName){
                
                return true
            }
            
            if (textField == secondName) {
                
                if(firstName.text!.count > 1){
                    
                    return true
                    
                }else
                {
                    
                    
                    msg = "fill  in the above blanks"
                    toast()
                    return false
                    
                }
                
                
            }
                if (textField == age) {
                    
                    if(firstName.text!.count > 1 && secondName.text!.count > 1){
                        
                        return true
                        
                    }else
                        
                    {
                        
                        
                        msg = "fill  in the above blanks"
                        toast()
                        return false
                        
                    }
            }
                    if (textField == country) {
                        
                        if(firstName.text!.count > 1 && secondName.text!.count > 1 && Int(age.text!)! < 120){
                            
                            return true
                            
                        }else
                        {
                            
                            
                            msg = "give proper age"
                            toast()
                            return false
                            
                        }
                
                
            }
    
            
            return true
    }
    
            
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        
        if(textField == firstName || textField == secondName  || textField == country )
        {
            let allowCharacters = CharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ")
            
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
            
            if(textField == age  )
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
    
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        
            
            if(firstName.text!.count > 1 && secondName.text!.count > 1 && country.text!.count > 0 && country.text!.count > 1){
                
        
        
        
        
        
        let target = storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        
                FormData.shared.firstYrResult?.append(firstName.text!)
                 FormData.shared.firstYrResult?.append(secondName.text!)
                 FormData.shared.firstYrResult?.append(age.text!)
                 FormData.shared.firstYrResult?.append(country.text!)
                
                
//        FormData.shared.firstName = firstName.text
//        FormData.shared.secondName = secondName.text
//        FormData.shared.age = age.text
//        FormData.shared.country = country.text
        
        
        
        present(target, animated: true) {
            
        }
        
        
        
            }else{
                msg = "please fill the blanks"
                toast()

                
        }
    
        
                }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstName.delegate = self
        secondName.delegate = self
        age.delegate = self
        country.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

