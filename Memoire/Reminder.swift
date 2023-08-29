//
//  Reminder.swift
//  Memoir
//
//  Created by Robert Leonard Bradl on 29.08.23.
//

import SwiftUI

struct Reminder {
    let id = UUID()
    let title: String
    let dueDate: String
    var _description: String?
    var description: String? {
        get {
            if let description = _description {
                return description
            } else {
                return ""
            }
        }
    }
}
