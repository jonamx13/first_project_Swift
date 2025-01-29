//
//  ErrorManager.swift
//  
//
//  Created by Jonathan Meixueiro on 29/01/25.
//

import Foundation

public enum ErrorManager: Error, LocalizedError {
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentsReachedError(max: Int)
    
    public var errorDescription: String? {
        switch self {
        case .studentNotAddedError:
            return "Student couldn't be added"
        case .subjectNotAssignedError:
            return "Subject couldn't be assigned"
        case .reportNotFoundError:
            return "Report not found, students list is empty"
        case .maxStudentsReachedError(let max):
            return "Max quantity of students reached: (\(max)) students already reached"
        }
    }
}
