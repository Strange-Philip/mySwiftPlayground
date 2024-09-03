//
//  WeatherView.swift
//  TutorialPrototype
//
//  Created by Philip Abakah on 31/08/2024.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                DayForecast(day:"Mon", high: 20, low: 5, isRainy: true)
                DayForecast(day:"Tue", high: 30, low: -10, isRainy: false)
                DayForecast(day:"Wed", high: 10, low: -3, isRainy: false)
                DayForecast(day:"Thur", high: 10, low: -3, isRainy: false)
                DayForecast(day:"Fri", high: 10, low: -3, isRainy: false)
               
                
                
            }}
    }
}

#Preview {
    WeatherView()
}

struct DayForecast: View {
    
    let day : String
    let high : Int
    let low : Int
    let isRainy : Bool
     
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var textColorHigh: Color {
        if high >= 30 {
            return Color.red
        } else if  high >= 20{
            return Color.orange
        }else if  high >= 10{
            return Color.yellow
        }else if  high < 0{
            return Color.blue
        } else {
            return Color.black
        }
    }
    var textColorLow: Color {
        if low >= 30 {
            return Color.red
        } else if  low >= 20{
            return Color.orange
        }else if  low >= 10{
            return Color.yellow
        }else if  low < -5{
            return Color.blue
        }else if  low < 0{
            return Color.teal
        } else {
            return Color.black
        }
    }
    var body: some View {
        VStack {
            Text(day).font(Font.largeTitle).fontWeight(.medium)
            Image(systemName: iconName)
                .foregroundStyle(iconColor).font(.largeTitle).padding(2)
            Text("High: \(high)º").font(Font.title2).fontWeight(.medium).foregroundStyle(textColorHigh)
            Text("Low:  \(low)º").font(Font.title2).fontWeight(.medium).foregroundStyle(textColorLow)
        }
        .padding()
    }
}
