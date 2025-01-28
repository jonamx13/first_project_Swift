//
//  Student.swift
//  
//
//  Created by Jonathan Meixueiro on 27/01/25.
//

import Foundation

public class Student: Describable {
    let name: String
    let age: Int
    let email: String
    var subjects: [Subject]
    var grades: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], grades: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.grades = grades
    }
    
    public func describe() -> String {
        let subjectDescriptions: String = subjects.map { subject in
            """
            # \(subject.describe())
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
    
    public func assignSubject(subject: Subject, grade: Double) {
        self.subjects.append(subject)
        self.grades.append(grade)
    }
}
