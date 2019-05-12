//
//  STFStringAttibute.swift
//  Felidae
//
//  Created by Maple Yin on 2019/1/12.
//

import Foundation

public struct STFStringAttibute {
    
    private var attributedDictionary: [NSAttributedStringKey : Any] = [:]
    
    public let paragraphStyle = NSMutableParagraphStyle()
    
    public var font: UIFont? {
        didSet {
            self.attributedDictionary[.font] = font
        }
    }
    
    public var backgroundColor: UIColor? {
        didSet {
            self.attributedDictionary[.backgroundColor] = backgroundColor
        }
    }
    
    public var foregroundColor: UIColor? {
        didSet {
            self.attributedDictionary[.foregroundColor] = foregroundColor
        }
    }
    
    
    public var strokeWidth: Float = 0 {
        didSet {
            self.attributedDictionary[.strokeWidth] = strokeWidth
        }
    }
    
    public var strokeColor: UIColor? {
        didSet {
            self.attributedDictionary[.strokeColor] = strokeColor
        }
    }
    
    public var strikethroughColor: UIColor? {
        didSet {
            self.attributedDictionary[.strikethroughColor] = strikethroughColor
        }
    }
    
    public var strikethroughStyle: NSUnderlineStyle = [] {
        didSet {
            self.attributedDictionary[.strikethroughStyle] = strikethroughStyle
        }
    }
    
    
    public var underlineColor: UIColor? {
        didSet {
            self.attributedDictionary[.underlineColor] = underlineColor
        }
    }
    
    public var underlineStyle: NSUnderlineStyle = [] {
        didSet {
            self.attributedDictionary[.underlineStyle] = underlineStyle
        }
    }
    
    
    public var ligature: Int = 0 {
        didSet {
            self.attributedDictionary[.ligature] = ligature
        }
    }
    
    public var baselineOffset: Float = 0 {
        didSet {
            self.attributedDictionary[.baselineOffset] = baselineOffset
        }
    }
    
    public var expansion: Float = 0 {
        didSet {
            self.attributedDictionary[.expansion] = expansion
        }
    }
    
    
    public var kern: Float {
        didSet {
            self.attributedDictionary[.kern] = kern
        }
    }
    
    public var verticalGlyphForm: Int {
        didSet {
            self.attributedDictionary[.verticalGlyphForm] = verticalGlyphForm
        }
    }
    
    
    public var link: URL? {
        didSet {
            self.attributedDictionary[.link] = link
        }
    }
    
    public var attachment: NSTextAttachment? {
        didSet {
            self.attributedDictionary[.attachment] = attachment
        }
    }
    
    
    public var shadow: NSShadow? {
        didSet {
            self.attributedDictionary[.shadow] = shadow
        }
    }
    
    public var textEffect: String? {
        didSet {
            self.attributedDictionary[.textEffect] = textEffect
        }
    }
    
    public var writingDirection: Array<Int>? {
        didSet {
            self.attributedDictionary[.writingDirection] = writingDirection
        }
    }
    
    init() {
    }
    
    public func create(with string: String) -> NSAttributedString {
        return NSAttributedString(string: string, attributes: self.attributedDictionary)
    }
}
