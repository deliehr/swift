//
//  String+substring.swift
//  
//
//  Created by Dominik Liehr on 08.07.18.
//

import Foundation

extension String {
    // Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - to: the inclusive end index
    /// - Returns: a Substring as a String
    func substring(from: Int, inclusiveTo to: Int) -> String? {
        guard to <= self.count - 1 else { return nil }
        
        let start = self.startIndex
        
        let begin = self.index(start, offsetBy: from)
        let end = self.index(start, offsetBy: (to + 1))
        
        return String(self[begin..<end])
    }
    
    func substring(from: Int, count: Int) -> String {
        let start = self.startIndex
        
        let maxCount: Int = count + from
        
        var endIndex: String.Index = start
        for i in 0..<maxCount {
            endIndex = str.index(after: endIndex)
        }
        
        var substring = String(str[start..<endIndex])
        substring = String(substring.suffix(from+1))
        
        return substring
    }
}
