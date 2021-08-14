//
//  SecondView.swift
//  ColibriApp
//
//  Created by Alex Ray on 04/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    // Button Status
    @State private var ButtonStatus:Bool = false
    // Main User Interface
    var body: some View {
        VStack {
         Spacer()
        WelcomeText()
        FirstText()
        SecondText()
        ThirdText()
            Button(action: {self.ButtonStatus.toggle()}) {
                ContinueButton()
            }.sheet(isPresented: $ButtonStatus){
                HomeView()
            }
         Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(#colorLiteral(red: 0.8606521487, green: 0.9928202033, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
    }
}

struct WelcomeText:View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("Welcome to").font(.system(size: 40, weight: .bold, design: .rounded)).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                HStack {
                    Spacer()
                    Text("Colibri").font(.system(size: 35, weight: .bold, design: .monospaced)).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    Spacer()
                }
            }
            Spacer()
        }.padding()
    }
} // End of Struct

struct FirstText:View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("Unlimited Job Opportunities").font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Colibri is an app made to seek job opportunities.").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Text("The main goal is to get stable job opportunities.")
                .font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Image("mail.stack")
                    .resizable().frame(width: 60, height: 60, alignment: .center).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))).blur(radius: 0.3).shadow(color: .gray, radius: 5, x: 5, y: 5)
            }
            Spacer()
        }
    }
} // End of Struct

struct SecondText:View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Simple User Interface").font(.system(size: 20, weight: .bold, design: .rounded))
                Spacer()
            }
            HStack {
                Spacer()
                Text("Our users benefit from simple user interface.").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Spacer()
            }
            HStack {
                Spacer()
                Text("Our app is designed to get best job offers").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Spacer()
            }
            HStack {
                Spacer()
                Text("in the least time possible.").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Spacer()
            }
            Image("person.2").resizable().frame(width: 85, height: 55, alignment: .center).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))).blur(radius: 0.3).shadow(color: .gray, radius: 5, x: 5, y: 5)
            
        }.padding()
    }
} // End of Struct

struct ThirdText:View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Unique Experience").font(.system(size: 20, weight: .bold, design: .rounded))
                Spacer()
            }
            HStack {
                Spacer()
                Text("The employers registered in our app are proposing").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Spacer()
            }
            HStack {
                Spacer()
                Text("only the best deals to our users.").font(.system(size: 18, weight: .light, design: .rounded)).foregroundColor(Color.black)
                Spacer()
            }
            Image("doc.richtext").resizable().frame(width: 65, height: 80, alignment: .center).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))).blur(radius: 0.3).shadow(color: .gray, radius: 5, x: 5, y: 5)
        }
    }
} //End of Struct

struct ContinueButton:View {
    var body: some View {
        Text("Continue").font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color.white).frame(width: 250, height: 50, alignment: .center).background(RoundedRectangle(cornerRadius: 16).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))).blur(radius: 0.4)).shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), radius: 10, x: 10, y: 10).padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
