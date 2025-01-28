//
//  StudentsManager.swift
//  
//
//  Created by Jonathan Meixueiro on 28/01/25.
//

import Foundation

public protocol Manageable {
    func insertStudent(_ student: Student)
    func assignSubjectToStudent(subject: Subject, grade: Double, student: Student)
    func generateStudentsReport()
    func getApprovedStudents() -> [Student]
    func getStudentsWithFailures() -> [Student]
    func getAverages() -> [Double]
    func getTotalAverages() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Manageable {
    
    var students: [Student]
    
    public init(students: [Student]) {
        self.students = students
    }
    
    public func insertStudent(_ student: Student) {
        students.append(student)
    }
    
    public func assignSubjectToStudent(subject: Subject, grade: Double, student: Student) {
        for s in students where s.email.elementsEqual(student.email) {
            s.assignSubject(subject: subject, grade: grade)
        }
    }
    
    public func generateStudentsReport() {
        for student in students {
            print(student.describe())
        }
    }
    
    public func getApprovedStudents() -> [Student] {
        return []
    }
    
    public func getStudentsWithFailures() -> [Student] {
        return []
    }
    
    public func getAverages() -> [Double] {
        return []
    }
    
    public func getTotalAverages() -> Double {
        return 0
    }
    
    public func getCoursedSubjects() -> Set<Subject> {
        return Set<Subject>()
    }
    
}
