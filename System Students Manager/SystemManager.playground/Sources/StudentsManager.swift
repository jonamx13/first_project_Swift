//
//  StudentsManager.swift
//  
//
//  Created by Jonathan Meixueiro on 28/01/25.
//

import Foundation

public protocol Manageable {
    func insertStudent(_ student: Student?) throws
    func assignSubjectToStudent(subject: Subject?, grade: Double, student: Student?) throws
    func generateStudentsReport() throws
    func getApprovedStudents() -> [Student]
    func getStudentsWithFailures() -> [Student]
    func getAverages() -> [Double]
    func getTotalAverages() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Manageable {
    var students: [Student]
    let maxStudents: Int
    
    public init(students: [Student], maxStudents: Int) {
        self.students = students
        self.maxStudents = maxStudents
    }
    
    public func insertStudent(_ student: Student?) throws {
        // guarding if the student is not nil
        guard let student else {
            throw ErrorManager.studentNotAddedError
        }
        if students.count < maxStudents {
            students.append(student)
        } else {
            throw ErrorManager.maxStudentsReachedError(max: maxStudents)
        }
    }
    
    public func assignSubjectToStudent(subject: Subject?, grade: Double, student: Student?) throws {
        guard let subject else {
            throw ErrorManager.subjectNotAssignedError
        }
        // guarding if the variable student is not nil
        if let student {
            for s in students where s.email.elementsEqual(student.email) {
                s.assignSubject(subject: subject, grade: grade)
            }
        } else { // if it is nil, throw an error
            throw ErrorManager.subjectNotAssignedError
        }
        
    }
    
    public func generateStudentsReport() throws {
        if students.isEmpty {
            throw ErrorManager.reportNotFoundError
        } else {
            for student in students {
                print(student.describe())
            }
        }
    }
    
    // filter
    public func getApprovedStudents() -> [Student] {
        return students.filter { student in
            return student.isApproved()
        }
    }
    
    // filter
    public func getStudentsWithFailures() -> [Student] {
        return students.filter { student in
            return !student.isApproved()
        }
    }
    
    // map
    public func getAverages() -> [Double] {
        return students.map { student in
            return student.getAverageGrade()
        }
    }
    
    public func getTotalAverages() -> Double {
        let average = getAverages()
        let sum = average.reduce(0.0, +)
        return sum / Double(average.count)
    }
    
    // reduce
    public func getCoursedSubjects() -> Set<Subject> {
        return students.reduce(into: Set<Subject>()) { result, student in
            for subject in student.subjects {
                result.insert(subject)
            }
        }
    }
    
}
