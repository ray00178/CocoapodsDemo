//
//  ExString.swift
//  CocoapodsDemo
//
//  Created by Ray on 2019/7/5.
//  Copyright © 2019 Ray. All rights reserved.
//

import Foundation

extension String {
    
    /// 檢查格式：台灣手機
    var isValidPhone: Bool {
        get {
            let pattern = "09\\d{8}$|\\+?8869\\d{8}$"
            let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            let matches = regex.matches(in: self, options: .withTransparentBounds, range: NSRange(location: 0, length: self.utf16.count))
            return matches.count > 0
        }
    }
    
    
    /// 替換文字
    ///
    /// - Parameters:
    ///   - at: 原來文字
    ///   - to: 替換文字
    /// - Returns:
    func replace(at: String, to: String) -> String {
        return self.replacingOccurrences(of: at, with: to)
    }
}
