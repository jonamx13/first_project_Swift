//
//  AdvancedStudent.swift
//  
//
//  Created by Jonathan Meixueiro on 27/01/25.
//

import Foundation

public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject], grades: [Double], extraPoints: Double){
        self.extraPoints = extraPoints
        super.init(name: name, age: age, email: email, subjects: subjects, grades: grades)
    }
    
    public override func studentDescription() -> String {
        let subjectDescriptions: String = subjects.map { subject in
            """
            # \(subject.subjectDescription())
            +++++++++++++++++++++++++++++++++
            """
        }.joined(separator: "\n")
        
        return """
        *******************
        Advanced Student description
        *******************
        
        # Name: \(name)
        # Age: \(age)
        # E-mail: \(email)
        # Extra points: \(extraPoints)
        # Subjects:
        \(subjectDescriptions)
        #Grades: \(grades)
        \n
        """
    }
}
