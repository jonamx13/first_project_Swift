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
    
    
    // is approved only if the student has approved 60% of their subjects
    public func isApproved() -> Bool {
        var approvedSubjectsCount: Int = 0
        for i in 0..<subjects.count {
            let subject = subjects[i]
            let grade = grades[i]
            
            if subject.IsApproved(grade: grade) {
                approvedSubjectsCount += 1
            }
        }
        
        let percentage = (Double(approvedSubjectsCount) / Double(subjects.count)) * 100
        return percentage >= 60
    }
    
    public func getAverageGrade() -> Double {
        var sum: Double = 0
        for grade in grades {
            sum += grade
        }
        return sum / Double(grades.count)
    }
}
