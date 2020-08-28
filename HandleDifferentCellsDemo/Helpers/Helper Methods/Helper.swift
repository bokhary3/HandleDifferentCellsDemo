//
//  Helper.swift
//  HandleDifferentCellsDemo
//
//  Created by Elsayed Hussein on 8/21/20.
//  Copyright © 2020 Elsayed Hussein. All rights reserved.
//

import UIKit

struct HelperMethods {
    static func round(_ view: UIView, cornerRadius: CGFloat, borderColor: UIColor? = nil, borderWidth: CGFloat = 0) {
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = false
        view.clipsToBounds = true
        view.layer.borderColor = borderColor?.cgColor
        view.layer.borderWidth = borderWidth
    }
    static func circle(_ view: UIView) {
        round(view, cornerRadius: view.frame.width / 2)
    }
}
