//
//  UIButtonExt.swift
//  Roll The Dice
//
//  Created by Benjamin on 30/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

extension UIButton{
    
    func dim(){
        UIView.animate(withDuration: 0.85, animations:{
            self.alpha = 0.75
        }) {(finished) in
            UIView.animate(withDuration: 0.85, animations: {
                self.alpha = 1.0
            })
        }
    }
    

}

