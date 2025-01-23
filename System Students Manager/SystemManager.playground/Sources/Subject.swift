//
//  Subject.swift
//  
//
//  Created by Jonathan Meixueiro on 23/01/25.
//

import Foundation

public struct Subject {
    let name: String
    let teacherName: String
    let minimumGrade: Double
    
    public init(name: String, teacherName: String, minimumGrade: Double) {
        self.name = name
        self.teacherName = teacherName
        self.minimumGrade = minimumGrade
    }
    
    public func IsApproved(grade: Double) -> Bool {
        return grade >= minimumGrade
    }
    
    public func subjectDescription() -> String {
        return """
        ---------------------------------
        Subject \(name)
        Teacher: \(teacherName)
        Mininum Grade: \(minimumGrade)
        ---------------------------------
        """
    }
}
