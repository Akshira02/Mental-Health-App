//
//  ContentView.swift
//  Landmarks
//
//  Created by Ashwin Charles on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currency = 26
    private var name = "Ashwin"
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color(.peach), Color.white]), // Define your colors here
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack{
                VStack{
                    ZStack{
                            
                
                            
                        Text("'You don’t have to control your thoughts. You just have to stop letting them control you' — Dan Millman")
                            .frame(width: 250)
                            .font(.system(size: 20, weight: .medium))
                            .padding(.top, 20)
                            }
                    Image(.cow)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 200)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 4)) // White border
                        .shadow(radius: 10)
                        .padding(25)
                }
                Text("Welcome " + (name) + " !" )
                    .font(.system(size: 25, weight: .medium))
                progressbar(currency: $currency)
                quote()

                
                Spacer()
                HStack(spacing: 25){
                    icon(icon_pic: "house.fill", icon_name: "Home")
                    icon(icon_pic: "chart.bar", icon_name: "Statistics")
                    icon(icon_pic: "pawprint.circle.fill", icon_name: "Pet")
                    icon(icon_pic: "person.crop.circle", icon_name: "Profile")
                    
                }
                
            }
            
        
        }
            
        }
    }


#Preview {
    ContentView()
}

struct icon: View{
    var icon_pic: String
    var icon_name: String
    
    var body: some View{
        ZStack{
            VStack{
                Button(action: {
                    print("Icon button tapped!")
                }) {
                    Image(systemName: icon_pic)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                }
                Text(icon_name)
            }
        }
    }
}

struct progressbar: View {
    @Binding var currency: Int
    var body: some View {
        VStack{
            ProgressView(value: Double(currency)/Double(100))
                .frame(width: 270)
                .padding(20)
            HStack{
                Text("CURRENCY: \(currency) / 100")
                Image(systemName: "dollarsign.circle.fill")
                    .foregroundColor(Color("darkgreen"))
            }
        }
    }
}



struct quote: View {
    var body: some View {
        Button(action: {
            print("Icon button tapped!")
        }) {
            Text("New Quote")
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(Color(.blanpink))
                .cornerRadius(10)
                .padding(50)
            
        }
    }
}
