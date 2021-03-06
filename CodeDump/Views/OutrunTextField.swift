//
//  OutrunTextField.swift
//  CodeDump
//
//  Created by Luke Solomon on 5/25/20.
//  Copyright © 2020 Observatory. All rights reserved.
//

import UIKit

class OutrunTextField:UITextField {
  
  convenience init(placeholder: String) {
    self.init(placeholder: placeholder, font:.Pixel, size: 30, textColor: .OutrunPaleYellow, backgroundColor: .OutrunDarkerBlue)
  }
  
  convenience init(placeholder: String, font:OutrunFonts, size: CGFloat, textColor: UIColor, backgroundColor:UIColor) {
    self.init()
    
    self.translatesAutoresizingMaskIntoConstraints = false
    self.backgroundColor = backgroundColor
    
    self.attributedPlaceholder = NSAttributedString(
      string: placeholder,
      attributes: [
        NSAttributedString.Key.foregroundColor: textColor,
        NSAttributedString.Key.font: UIFont(name: font.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
      ]
    )
    
    self.font = UIFont(name: font.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    self.textColor = textColor
    
    let spacerView = UIView(frame:CGRect(x:0, y:0, width:8, height:self.frame.height))
    self.leftViewMode = UITextField.ViewMode.always
    self.leftView = spacerView
    self.tintColor = UIColor.OutrunPaleYellow
    
    self.keyboardAppearance = .dark
  }
  
  func customize(placeholder: String, font:OutrunFonts, size: CGFloat, textColor: UIColor, backgroundColor:UIColor) {
    self.backgroundColor = backgroundColor
    
    self.attributedPlaceholder = NSAttributedString(
      string: placeholder,
      attributes: [
        NSAttributedString.Key.foregroundColor: textColor,
        NSAttributedString.Key.font: UIFont(name: font.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
      ]
    )
    
    self.font = UIFont(name: font.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    self.textColor = textColor
    
    let leftSpacerView = UIView(frame:CGRect(x:0, y:0, width:8, height:self.frame.height))
    let rightSpacerView = UIView(frame:CGRect(x:0, y:0, width:8, height:self.frame.height))

    self.leftViewMode = UITextField.ViewMode.always
    self.leftView = leftSpacerView
    
    self.rightViewMode = UITextField.ViewMode.always
    self.rightView = rightSpacerView

    self.tintColor = UIColor.OutrunPaleYellow
    self.keyboardAppearance = .dark
    
  }
  
  func customizeWithStandardValues(placeholder:String) {
    customize(placeholder: placeholder, font: .Pixel, size: 30, textColor: .OutrunPaleYellow, backgroundColor: .OutrunDarkerBlue)
  }
  
}
