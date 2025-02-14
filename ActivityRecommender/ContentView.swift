//
//  ContentView.swift
//  ActivityRecommender
//
//  Created by Timmy Jose on 15/12/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    @State private var selectedActivity = "Baseball"
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var id = 1
    
    var body: some View {
        Spacer()
        
        Text("Why not try...")
            .font(.largeTitle.bold())
        
        
        VStack {
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selectedActivity.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            
            Text("\(selectedActivity)!")
                .font(.title)
        }
        .transition(.slide)
        .id(id)
        
        Spacer()
        
        Button("Try again") {
            withAnimation(.easeInOut(duration: 1)) {
                selectedActivity = activities.randomElement() ?? "Baseball"
                id += 1
            }
        }
            .buttonStyle(.borderedProminent)
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
