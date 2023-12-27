//
//  ContentView.swift
//  widgetDemo
//
//  Created by Felix Martinez Casadiego on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("streak", store: UserDefaults(suiteName: "group.com.felix.widgetDemo")) var streak = 0
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                ZStack{
                    Circle()
                        .stroke(Color.white.opacity(0.1), lineWidth: 20)
                    
                    let percentage = Double(streak)/50.0
                    
                    Circle()
                        .trim(from: 0, to: percentage)
                        .stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.degrees(-90))
                    
                    VStack {
                        Text("Streak")
                            .font(.largeTitle)
                        Text(String(streak))
                            .font(.system(size: 70))
                            .bold()
                    }
                    .foregroundStyle(.white)
                    .fontDesign(.rounded)
                    
                }
                .padding(.horizontal, 50)
                
                Spacer()
                
                VStack {
                    Button(action: {StreakCalculator.incrementStreak(streak: &streak)}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(.blue)
                                .frame(height: 50)
                            Text("+1")
                                .foregroundStyle(.white)
                        }
                    })
                    
                    Button(action: {StreakCalculator.decrementStreak(streak: &streak)}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(.blue)
                                .frame(height: 50)
                            Text("-1")
                                .foregroundStyle(.white)
                        }
                        
                    })
                    
                    Button(action: {StreakCalculator.resetStreak(streak: &streak)}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(.blue)
                                .frame(height: 50)
                            Text("Reset")
                                .foregroundStyle(.white)
                        }
                        
                    })
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
