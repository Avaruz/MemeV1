//
//  MemeTextEditDelegate.swift
//  Meme Editor
//
//  Created by Adhemar Soria Galvarro on 17/10/15.
//  Copyright © 2015 Adhemar Soria Galvarro. All rights reserved.
//
import Foundation
import UIKit

class MemeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    /**
    * Examines the new string whenever the text changes. Finds color-words, blends them, and set the text color
    */
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        let newText = textField.text!.uppercaseString as  NSString
        
        if newText.isEqualToString("TOP")||newText.isEqualToString("BOTTOM") {
            textField.text=""
        }
        
    }
}



