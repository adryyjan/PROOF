//
//  DateExtension.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import Foundation


extension Date {
    
    private static let hourMinuteFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.timeZone = .current
        formatter.dateFormat = "HH:mm"
        return formatter
    }()


    var hmString: String {
        return Self.hourMinuteFormatter.string(from: self)
    }
    
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.timeZone = .current
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }()
    
}
