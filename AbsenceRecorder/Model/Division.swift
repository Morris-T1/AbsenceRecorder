//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Fenston Morris on 31/01/2023.
//

import Foundation


class Division {
    
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            var student = Student(forename: "Forename\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        
        
        }
    
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-1", of: 12),
                           Division.createDivision(code: "vE5-1", of: 10),
                           Division.createDivision(code: "vD1-1", of: 14)]
    #endif
    
}
