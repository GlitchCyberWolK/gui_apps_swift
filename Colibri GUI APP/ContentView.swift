//
//  ContentView.swift
//  ColibriApp
//
//  Created by Alex Ray on 04/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.

// In Progress ->
//ZStack {
//singUp(index: self.$index).zIndex(Double(self.index))
//Login(index: self.$index).zIndex(Double(self.index))
//}.padding()

import SwiftUI

class UserInfo {
    // User Information
    @State public var UserInfo:String = ""
    @State public var UserPass:String = ""
}


struct ContentView: View {
    let MainInfo = UserInfo()
    // User Interface
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                WelcomeMessage().padding(.top, 280)
                CursorLogoImage().padding()
                MainLoginFields().padding()
                // Sign in Button
                NavigationLink(destination: SecondView()) {
                    SignInButton()
                }.padding()
                LoginTextFields().padding(.bottom, 200)
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
        }
            }
        }
    


struct CursorLogoImage:View {
    var body:some View {
        HStack {
            Spacer()
            Image("cursorarrow.motionlines").resizable().frame(width: 120, height: 120, alignment: .center).colorMultiply(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            Spacer()
        }
    }
}
struct WelcomeMessage:View {
    var body: some View {
        HStack {
            Spacer()
            Text("Welcome").foregroundColor(Color.black).font(.largeTitle).fontWeight(.heavy)
            Spacer()
        }
    }
}

struct LoginTextFields:View {
    @State var index:Int = 0
//Sign in Info
    let Info = UserInfo()
    
    
    var body: some View {
        VStack {
        HStack(spacing: 15) {
            Rectangle().fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).frame(height: 1)
            Text("OR").bold().foregroundColor(Color.black)
            Rectangle().fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).frame(height: 1)
        }.padding(.horizontal, 30).padding(.top, 50)
            
            VStack(spacing: 0.01) {
                NavigationLink(destination: SecondView()) {
                    Image("apple").resizable().renderingMode(.original).clipShape(Circle()).frame(width: 65, height: 50, alignment: .center).saturation(2).accentColor(Color.black).shadow(color: Color.gray, radius: 10, x: 1, y: 1)
                }.padding(.top, 30)
                HStack(spacing: 25) {
                Spacer()

                NavigationLink(destination: SecondView()) {
                    Image("facebook").resizable().renderingMode(.original).frame(width: 50, height: 50, alignment: .center).clipShape(Circle()).saturation(2).shadow(color: Color.blue, radius: 8, x: 1, y: 1)
                }
                NavigationLink(destination: SecondView()) {
                    Image("google").resizable().renderingMode(.original).frame(width: 50, height: 50, alignment: .center).clipShape(Circle()).saturation(2).shadow(color: Color.yellow, radius: 5, x: 1, y: 1)
                }
                Spacer()
                }.padding(.top, 30)
            }.frame(width: 400, height: 105, alignment: .center)
            
        }.padding(.vertical).padding(.top, 40)
        
        
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all).preferredColorScheme(.light).frame(width: 380, height: 300, alignment: .center)
    }
}


struct SignInButton:View {
    var body: some View {
        VStack {
            Text("Sign in").foregroundColor(Color.black).font(.system(size: 20, weight: .semibold, design: .rounded)).frame(width: 160, height: 60, alignment: .center).background(ZStack{
                Color(#colorLiteral (red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                RoundedRectangle(cornerRadius: 16, style: .continuous).foregroundColor(.white).blur(radius: 4)
                .offset(x: -8, y: -8)
                RoundedRectangle(cornerRadius: 16, style: .continuous).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(2).blur(radius: 2)
            }).clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous)).shadow(color: Color(#colorLiteral (red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 20, x: -20, y: -20)
        }
    }
}

struct MainLoginFields:View {
    @State private var mainUsername:String = ""
    @State private var mainPassword:String = ""
    
    var body: some View {
        VStack(spacing: 60) {
            VStack {
                HStack() {
                    Spacer(minLength: 35)
                    Image(systemName: "envelope.fill")
                    TextField("Username", text: $mainUsername)
                }.background(ZStack {
                    RoundedRectangle(cornerRadius: 10).foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))).frame(width: 400, height: 50, alignment: .center)
                    }).padding()
                Divider().background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                HStack(alignment: .center) {
                    Spacer(minLength: 35)
                    Image(systemName: "lock")
                    SecureField("Password", text: $mainPassword)
                    }.background(ZStack {
                        RoundedRectangle(cornerRadius: 10).foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))).frame(width: 400, height: 50, alignment: .center)
                    }).padding()
            }
        }
    }
}

// CS Shape || Crash!
struct CShape:Shape {
    func path(in rect: CGRect) -> Path {
        return Path {
            path in path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}

struct CShape1:Shape {
    func path(in rect: CGRect) -> Path {
        return Path {
            path in path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}

struct Login:View {
    @State private var username:String = ""
    @State private var password:String = ""
    @Binding var index:Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login").foregroundColor(self.index == 0 ? .black : .gray).font(.title).fontWeight(.bold)
                        Capsule().fill(self.index == 0 ? Color.black : Color.clear).frame(width: 100, height: 5, alignment: .center)
                    }
                    Spacer()
                }.padding(.top, 30)
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelopp.fill").resizable().frame(width: 35, height: 35, alignment: .center).foregroundColor(Color.black).saturation(1.5)
                    TextField("Username", text: self.$username)
                }
                Divider()
                    .background(Color.black.opacity(0.5))
                
            }.padding(.horizontal).padding(.top, 40)
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "eye.slash.fill").resizable().frame(width: 35, height: 35, alignment: .center).foregroundColor(Color.black).saturation(1.5)
                    SecureField("Password", text: self.$password)
                }
                Divider()
                    .background(Color.black.opacity(0.5))
                
            }.padding(.horizontal).padding(.top, 30)
            
            HStack {
                Spacer(minLength: 0)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Forgot my password").foregroundColor(Color.black.opacity(0.6)).font(.caption).fontWeight(.light)
                }.padding(.horizontal).padding(.top, 30)
                }
            }.padding().padding(.bottom, 65 ).background(Color.white).clipShape(CShape()).contentShape(CShape()).shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5).onTapGesture {
                self.index = 0
            }.cornerRadius(35).padding(.horizontal)
        }
        
    }
}

struct singUp:View {
    @State private var username:String = ""
    @State private var password:String = ""
    @State private var rePass:String = ""
    @Binding var index:Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    VStack(spacing: 10) {
                        Text("Sign Up").foregroundColor(self.index == 0 ? Color.black : .gray).font(.title).fontWeight(.bold)
                        Capsule().fill(self.index == 0 ? Color.black : Color.clear).frame(width: 100, height: 5, alignment: .center)
                    }
                }.padding(.top, 30)
                VStack {
                    VStack {
                        HStack(spacing: 15) {
                            Image(systemName: "envelop.fill").resizable().frame(width: 35, height: 35, alignment: .center).foregroundColor(Color.black).saturation(1.5)
                            TextField("Username", text: self.$username)
                        }
                        Divider()
                            .background(Color.black.opacity(0.5))
                        
                    }.padding(.horizontal).padding(.top, 40)
                    VStack {
                        HStack(spacing: 15) {
                            Image(systemName: "eye.slash.fill").resizable().frame(width: 35, height: 35, alignment: .center).foregroundColor(Color.black).saturation(1.5)
                            SecureField("Password", text: $password)
                        }
                    Divider().background(Color.black.opacity(0.5))
                }.padding(.horizontal).padding(.top, 30)
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill").resizable().frame(width: 35, height: 35, alignment: .center).foregroundColor(Color.black).saturation(1.5)
                        SecureField("Password", text: $rePass)
                    }
                    Divider().background(Color.black.opacity(0.5))
                }.padding(.horizontal).padding(.top, 30)
            }.padding().padding(.bottom, 65 ).background(Color.white).clipShape(CShape1()).contentShape(CShape1()).shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5).onTapGesture {
                self.index = 1
            }.cornerRadius(35).padding(.horizontal)
        }
    }
 
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
