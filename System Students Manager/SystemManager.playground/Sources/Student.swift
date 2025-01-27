//
//  Student.swift
//  
//
//  Created by Jonathan Meixueiro on 27/01/25.
//

import Foundation

public class Student {
    let name: String
    let age: Int
    let email: String
    let subjects: [Subject]
    let grades: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], grades: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.grades = grades
    }
    
    public func studentDescription() -> String {
        let subjectDescriptions: String = subjects.map { subject in
            """
            # \(subject.subjectDescription())
            +++++++++++++++++++++++++++++++++
            """
        }.joined(separator: "\n")
        
        return """
        *******************
        Student description
        *******************
        
        # Name: \(name)
        # Age: \(age)
        # E-mail: \(email)
        # Subjects:
        \(subjectDescriptions)
        #Grades: \(grades)
        \n
        """
    }
}
