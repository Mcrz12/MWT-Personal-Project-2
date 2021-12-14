//
//  ContentView.swift
//  Title Page
//
//  Created by Central States SER Mac 22 on 12/13/21.
//

import SwiftUI

struct HomeMarioView: View {
    let date = Date()
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.9595744014, green: 0.9538698792, blue: 0.9639592767, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HeaderTwo()
                    .padding()
                CardsTwo()
                    .padding(.top, 35)
                TaskbarTwo()
                    .offset(y: 70)
                
            }
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarioView()
    }
}
//Mark: HeaderTwo
struct HeaderTwo: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Good Morning,")
                    .font(.system(size: 19, weight: .medium, design: .serif))
                    .foregroundColor(Color(UIColor(named:"sky")!))
                Text("Mario Cruz!")
                    .font(.system (size: 25, weight: .bold, design: .serif))
                    .foregroundColor(Color(UIColor(named:"sky")!))
                    .padding(.top, 1)
                
            }
            Spacer()
            Image("profilepic")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding(.horizontal,5)
    }
}

struct CardsTwo: View {
    let date = Date()
    var body: some View {
        VStack {
            Text("My Wellness Checker")
                .font(.system (size: 30, weight: .bold, design: .serif))
                .foregroundColor(Color.black)
                .padding(.horizontal, 30)
            
            Text(date, style: .date)
            Text(date, style: .time)
            
            // January 14, 2021 10:00 AM
            
            VStack {
                Text("~Welcome~")
                    .font(.custom("Cookie-Regular", size: 50))
                    .foregroundColor(Color(UIColor(named:"sky")!))
                    .padding()
                
                HStack {
                    Group {
                        VStack(alignment: .leading) {
                            Image("woods")
                                .resizable()
                            VStack(alignment: .leading) {
                                Text("Daily Quote")
                                    .font(.system(size: 19, weight: .bold, design: .serif))
                                    .foregroundColor(Color(UIColor(named:"sky")!))
                                    .padding(.horizontal, 15)
                                Text("We don't need a list of rights and wrongs, tables of dos and dont's: we need books, time, and silence. Thou shalt not is soon forgotten, but Once upon a time lasts forever” ~Philip Pullman")
                                    .font(.system(size: 15, design: .serif))
                                    .foregroundColor(Color(UIColor(named:"sky")!))
                                    .padding(.top, 10)
                                    .padding(.leading, 15)
                                    .padding(.bottom, 20)
                            }
                        }
                    }
                    .frame(width: 280, height: 340)
                    .background(Color.white)
                    .cornerRadius(30)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            Group {
                                VStack(alignment: .leading) {
                                    Image("MintBackground")
                                        .resizable()
                                    VStack(alignment: .leading) {
                                        Text("Have A Great Day!")
                                            .font(.system(size: 19, weight: .bold, design: .serif))
                                            .foregroundColor(Color(UIColor(named:"sky")!))
                                            .padding(.horizontal, 10)
                                        Text("")
                                            .font(.system(size: 15, design: .serif))
                                            .foregroundColor(Color(UIColor(named:"sky")!))
                                            .padding(.top, 5)
                                            .padding(.leading, 10)
                                            .padding(.bottom, 15)
                                    }
                                }
                            }
                            .frame(width: 280, height: 340)
                            .background(Color.white)
                            .cornerRadius(30)
                            
                        } .padding(.leading, 20)
                    }
                }
            }
        }
    }
}

struct TaskbarTwo: View {
    var body: some View {
        HStack (spacing: 60) {
            
            VStack{
                Image(systemName: "house")
                    .font (.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 20)
            VStack{
                Image(systemName: "journal")
                    .font (.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
            VStack{
                Image(systemName: "house")
                    .font (.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
            VStack{
                Image(systemName: "info")
                    .font (.system(size: 29))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
        }
        .frame(height: 90)
        .frame(maxWidth: .infinity)
        .background(Color(UIColor(named:"sky")!))
        .cornerRadius(20)
    }
}
