//
//  Buttons.swift
//  Memoir
//
//  Created by Robert Leonard Bradl on 29.08.23.
//

import SwiftUI

struct MainButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font((.system(size: 20, weight: .bold)))
            .cornerRadius(10)
    }
}
