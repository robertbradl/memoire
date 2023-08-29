//
//  ReminderDetail.swift
//  Memoir
//
//  Created by Robert Leonard Bradl on 29.08.23.
//

import SwiftUI

struct ReminderDetailView: View {
    
    var reminder: Reminder
    
    var body: some View {
        VStack {
            Text(reminder.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack {
                Label(reminder.dueDate, systemImage: "calendar.badge.clock")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text("This is a description for this reminder.")
                .font(.body)
                .padding()
        }
    }
}

struct ReminderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderDetailView(reminder: Reminder(title: "This reminder is very very very very very very very long.", dueDate: "yesterday"))
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro")
    }
}
