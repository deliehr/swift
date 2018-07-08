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
    func substring(from: Int, to: Int, usingLengthGuard isLengthGuardActive: Bool = true) -> String? {
        return self.substring(from: from, inclusiveTo: to - 1, usingLengthGuard: isLengthGuardActive)
    }
    
    
    /// Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - to: the inclusive end index
    /// - Returns: a Substring as a String
    func substring(from: Int, inclusiveTo to: Int, usingLengthGuard isLengthGuardActive: Bool = true) -> String? {
        guard from >= 0 else { return nil }
        
        var countTo = to
        
        if isLengthGuardActive {
            if to > self.count - 1 {
                countTo = self.count - 1
            }
        } else {
            guard to <= self.count - 1 else { return nil }
        }
        
        let start = self.startIndex
        
        let begin = self.index(start, offsetBy: from)
        let end = self.index(start, offsetBy: (countTo + 1))
        
        return String(self[begin..<end])
    }
    
    
    /// Returns a part of a string, also known as substring
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    ///   - count: the amount of next elements
    /// - Returns: a Substring as a String
    func substring(from: Int, count: Int, usingLengthGuard isLengthGuardActive: Bool = true) -> String? {
        return substring(from: from, inclusiveTo: from + count, usingLengthGuard: isLengthGuardActive)
    }
    
    /// Returns the rest of a string, beginning at index from
    ///
    /// - Parameters:
    ///   - from: the inclusive start index
    /// - Returns: a Substring as a String
    func substring(from: Int) -> String? {
        return substring(from: from, inclusiveTo: self.count - 1, usingLengthGuard: true)
    }
    
}
