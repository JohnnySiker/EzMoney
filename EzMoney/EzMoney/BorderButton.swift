//
//  BorderButton.swift
//  EzMoney
//
//  Created by Jonathan Velazquez on 13/02/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import Foundation
import UIKit
import Spring

@IBDesignable
class BorderButton: SpringButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    @IBInspectable var color: UIColor = UIColor.clearColor() {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var width: CGFloat = 1 {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var radius: CGFloat = 0 {
        didSet{
            setupView()
        }
    }
    
    func setupView(){
        
        self.layer.borderColor = color.CGColor
        self.layer.borderWidth = width
        self.layer.cornerRadius = radius
        
        
    }
    
    
}
