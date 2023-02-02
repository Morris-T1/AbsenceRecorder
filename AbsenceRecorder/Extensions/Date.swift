//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Fenston Morris on 01/02/2023.
//

import Foundation

extension Date {
    func getSHortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    
    func previousDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func nextDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: +1, to: self) ?? Date()
    }
}
