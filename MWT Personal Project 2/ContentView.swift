//
//  ContentView.swift
//  MWT Personal Project 2
//
//  Created by Central States SER Mac 22 on 11/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Login()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Login: View {
    
    @State var user = ""
    @State var pass = ""
    
    var body: some View {
        VStack {
            
            Image("Image")
                
                .resizable()
                .scaledToFit()
            
            
            Text("Sign In").fontWeight(.medium).font(.largeTitle).padding([.top,.bottom], 20)
    
            VStack(alignment: .leading) {
                VStack (alignment: .leading){
                    Text("Username").font(.headline).fontWeight(.light)
                HStack {
                    TextField("Enter Username", text: $user)
                        .disableAutocorrection(true)
                    
                }.padding(.bottom, 15)
               
                
                Divider()
            }
         VStack (alignment: .leading) {
            Text("Password").font(.headline).fontWeight(.light)
            
            SecureField("Enter Password", text: $pass)
                .disableAutocorrection(true)
            
            
                Divider()
    }
    HStack{
        
        Spacer()
        
        Button(action: {
            
        }) {
            Text("Forgot Password?").foregroundColor(Color.gray.opacity(0.9))
        }
    }
            
            }.padding(.horizontal, 8)
           
            bottomView()
        }.padding()
    }
        struct bottomView: View {
    
    var body: some View {
        
        NavigationLink(destination: HomeMarioView() , label: {
                Text("Sign In")
                .foregroundColor(.blue)
                .frame(width: UIScreen.main.bounds.width - 120)
            })
        Text("Dont have an account?").foregroundColor(Color.gray.opacity(0.9))
        
        }
    }
    
    }
    
}



