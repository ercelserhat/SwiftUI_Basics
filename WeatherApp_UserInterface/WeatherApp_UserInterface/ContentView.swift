//
//  ContentView.swift
//  WeatherApp_UserInterface
//
//  Created by Serhat on 3.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Ankara, TR")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 35)
                
                HStack(spacing: 25){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 33)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 44)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 50)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 66)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 77)
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .foregroundStyle(.blue)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .clipShape(.rect(cornerRadius: 10))
                        .shadow(radius: 10)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .gray : .lightblue, isNight ? .black : .blue], startPoint: .bottomLeading, endPoint: .topTrailing)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .shadow(radius: 10)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .shadow(radius: 10)
            Text("\(temperature)°")
                .font(.system(size: 70))
                .fontWeight(.medium)
                .foregroundStyle(.white)
                .shadow(radius: 3)
        }
        .padding(.bottom, 16)
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.title3)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .shadow(radius: 3)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .shadow(radius: 10)
            Text("\(temperature)°")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .shadow(radius: 3)
            
        }
    }
}
