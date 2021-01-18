//
//  LWButton.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//
import UIKit
import Foundation
class LWButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView?.contentMode = .scaleAspectFit
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont.systemFont(ofSize: 11)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        let imgW = contentRect.size.width
        let imgH = contentRect.size.height * 0.5
        return CGRect(x: 0, y: 0, width: imgW, height: imgH)
    }
    
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        let titleY = contentRect.size.height * 0.4
        let titleW = contentRect.size.width
        let titleH = contentRect.size.height - titleY
        return CGRect(x: 0, y: titleY, width: titleW, height: titleH)
        
    }
    
   
    
}
