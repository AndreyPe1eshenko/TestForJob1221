//
//  TabBarItem.swift
//  Test1221
//
//  Created by Андрей Гезет on 31.01.2024.
//

import SwiftUI

struct TabBarItem: View {
    
    let title: String
    let image: String
    
    @Binding var selection: String
    
    var body: some View {
        Button {
            withAnimation {
                selection = title
            }
        } label: {
            VStack(spacing: 5) {
                Image(systemName: image)
                    .font(.system(size: 23))
                
                Text(title)
                    .font(.system(size: 13))
            }
        }
        .accentColor(selection == title ? .green : .black)
    }
}

#Preview {
    TabBarItem(title: "Title", image: "house", selection: .constant("House"))
}
