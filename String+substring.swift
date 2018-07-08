//
//  String+substring.swift
//  
//
//  Created by Dominik Liehr on 08.07.18.
//

import Foundation

extension String {
    
    /// Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - to: the exclusive end index
    /// - Returns: a Substring as a String
    func substring(from: Int, to: Int) -> String? {
        return self.substring(from: from, inclusiveTo: to - 1)
    }
    
    /// Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - to: the inclusive end index
    /// - Returns: a Substring as a String
    func substring(from: Int, inclusiveTo to: Int) -> String? {
        guard from >= 0,
            to <= self.count - 1
        else {
            return nil
        }
        
        let start = self.startIndex
        
        let begin = self.index(start, offsetBy: from)
        let end = self.index(start, offsetBy: (to + 1))
        
        return String(self[begin..<end])
    }
    
    /// Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - count: the amount of next elements
    /// - Returns: a Substring as a String
    func substring(from: Int, count: Int) -> String? {
        return substring(from: from, inclusiveTo: from + count)
    }
}
