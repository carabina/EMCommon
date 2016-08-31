//
//  UIImageView.swift
//  common-extentions
//
//  Created by Martin Eberl on 02.07.16.
//  Copyright © 2016 Martin Eberl. All rights reserved.
//

import UIKit

extension UIImageView {

    func scaleTo(widthConstraint widthConstraint:CGFloat) -> Double {
        guard widthConstraint > 0 else {
            return Double.infinity
        }
        guard self.image != nil else {
            return 0
        }
        
        var scale = widthConstraint / (self.image?.size.width)!
        self.width = widthConstraint
        self.height = scale * (self.image?.size.height)!
        
        return Double(scale)
    }
    
    func scaleTo(heightConstraint heightConstraint:CGFloat) -> Double {
        guard heightConstraint > 0 else {
            return Double.infinity
        }
        guard self.image != nil else {
            return 0
        }
        
        var scale = (self.image?.size.height)! / heightConstraint
        self.height = heightConstraint
        self.width = scale * (self.image?.size.width)!
        
        return scale as! Double
    }
}