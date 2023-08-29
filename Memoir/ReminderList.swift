//
//  ContentView.swift
//  Memoir
//
//  Created by Robert Leonard Bradl on 29.08.23.
//

import SwiftUI

struct ReminderList: View {
    
    var reminders: [Reminder] = [Reminder(title: "Fix bugs", dueDate: "31.08.2023"),
                                 Reminder(title: "Go shopping", dueDate: "29.08.2023")]
    var body: some View {
        NavigationView {
            List(reminders, id: \.id) { item in
                NavigationLink(destination: ReminderDetailView(reminder: item), label: {
                    ReminderView(title: item.title, date: item.dueDate)
                })
            }
            .navigationTitle("Your reminders")
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ReminderList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro")
    }
}

struct ReminderView: View {
    var title: String
    var date: String
    
    var body: some View {
        HStack {
            Image(systemName: "exclamationmark.square")
                .resizable()
                .scaledToFit()
                .tint(.black)
                .frame(height: 40)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack (alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
