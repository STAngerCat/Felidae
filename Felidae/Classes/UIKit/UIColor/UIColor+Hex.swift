//
//  UIColor+Hex.swift
//  Felidae
//
//  Created by Maple Yin on 2019/1/10.
//

import UIKit

public extension UIColor {
    
    public convenience init?(stf_hex: String) {
        self.init(stf_hex: stf_hex, alpha: 0)
    }
    
    public convenience init?(stf_hex: String, alpha: CGFloat) {
        let hexString = stf_hex as NSString
        let matchRange = hexString.range(of: "^[0-9a-fA-F]{6}", options: .regularExpression)
        if matchRange.location == NSNotFound {
            return nil
        }
        
        var red: Int = 0
        var green: Int = 0
        var blue: Int = 0
        
        Scanner(string: hexString.substring(with: NSRange(location: 0, length: 2))).scanInt(&red)
        Scanner(string: hexString.substring(with: NSRange(location: 2, length: 2))).scanInt(&green)
        Scanner(string: hexString.substring(with: NSRange(location: 4, length: 2))).scanInt(&blue)
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
}

public func STFHexColor(_ hexString: String) -> UIColor? {
    return UIColor(stf_hex: hexString)
}

public func STFHexAlphaColor(_ hexString: String, alpha: CGFloat) -> UIColor? {
    return UIColor(stf_hex: hexString, alpha: alpha)
}
