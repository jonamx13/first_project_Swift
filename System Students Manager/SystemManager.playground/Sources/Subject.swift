//
//  Subject.swift
//  
//
//  Created by Jonathan Meixueiro on 23/01/25.
//

import Foundation

public struct Subject: Describable, Hashable {
    let name: String
    let teacherName: String
    let level: SubjectLevel
    
    public init(name: String, teacherName: String, level: SubjectLevel) {
        self.name = name
        self.teacherName = teacherName
        self.level = level
    }
    
    public func IsApproved(grade: Double) -> Bool {
        return grade >= minimumGrade()
    }
    
    public func describe() -> String {
        return """
        ---------------------------------
        Subject \(name)
        Teacher: \(teacherName)
        Mininum Grade: \(minimumGrade())
        ---------------------------------
        """
    }
    
    private func minimumGrade() -> Double {
        switch level {
        case .basic:
            return 60.0
        case .intermediate:
            return 70.0
        case .advanced:
            return 80.0
        }
    }
}
