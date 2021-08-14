//
//  FlutterCourseInfo.swift
//  ColibriApp
//
//  Created by Alex Ray on 10/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import SwiftUI

class FlutterCourse {
    let courseName:String = "Flutter for Beginners"
    let courseStatusImage:String = "flame"
    let courseCompanyName:String = "Google Inc."
    let courseCompanyImage:String = "google-developers-logo"
    let coursePrice:String = "free"
    let courseImage:String = "flutter"
    let courseDescription:String = "This Google course will help you learn the Dart programming language and Flutter."
}

struct FlutterCourseInfo: View {
    @State private var percentage:CGFloat = 55
    @State private var pushedSwiftUICourseButton:Bool = false
    
    var body: some View {
        VStack {
            ThirdTextCourseInfo().padding(45)
            ZStack {
                ThirdPulsation()
                ThirdTrack()
                VStack {
                    ThirdLabel(percentage: percentage)
                }.padding()
                ThirdOutline(percentage: percentage).padding()
                
            }.padding()
            FlutterContinueButton()
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color(
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
    }
}

struct ThirdLabel: View {
    var percentage: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.0f", percentage)).font(.system(size: 45, weight: .heavy)).colorInvert()
        }
    }
}

struct ThirdOutline:View {
    var colors: [Color] = [Color(#colorLiteral(red: 0.04118876159, green: 0.2081718147, blue: 0.7124809623, alpha: 1))]
    let shapeRestrictions = ShapeFormat()
    var percentage: CGFloat = 0
    
    var body: some View {
        ZStack {
            Circle().fill(Color.clear).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center).overlay(
            Circle()
                .trim(from: 0, to: percentage * 0.01).stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round)).fill(AngularGradient(gradient: .init(colors: colors), center: .center,startAngle: .zero,endAngle: .init(degrees: 360))).animation(.spring(response: 2.0,dampingFraction: 1.0, blendDuration: 1.0))
            )
        }
    }
}

struct ThirdTrack:View {
    var colors: [Color] = [Color(#colorLiteral(red: 0.2451604307, green: 0.5715094209, blue: 0.7642328143, alpha: 1))]
    let shapeRestrictions = ShapeFormat()
    
    var body: some View {
        ZStack {
            Circle().fill(Color(#colorLiteral(red: 0.4074298739, green: 0.7707109451, blue: 0.9341631532, alpha: 1))).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
            Circle().stroke(style: StrokeStyle(lineWidth: 20)).fill(AngularGradient(gradient: .init(colors: colors), center: .center)).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
        }
    }
}

struct ThirdPulsation:View {
    @State private var pulsate = false
    var colors: [Color] = [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color(#colorLiteral(red: 0.4074298739, green: 0.7707109451, blue: 0.9341631532, alpha: 1))).frame(width: 245, height: 245, alignment: .center).scaleEffect(pulsate ? 1.2 : 0.9).animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true)).onAppear() {
                    self.pulsate.toggle()
            }
        }
    }
}

struct ThirdTextCourseInfo:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    FlutterCourseName()
                        .padding(.leading)
                    Spacer()
                }
                HStack {
                    Spacer()
                    FlutterCourseRating()
                    Spacer()
                }.padding(.trailing, 55.0)
                HStack {
                    Spacer()
                    FlutterInfoPrice()
                    Spacer()
                }.padding(.trailing, 55.0)
                    
               VStack {
                        FlutterCourseDescription().multilineTextAlignment(.trailing)
                    }.frame(width: 250, height: 100, alignment: .center)
                    
                
                HStack {
                    Spacer()
                    FlutterCompanyImage().padding(.trailing, 50.0)
                    Spacer()
                }
            }.frame(width: 350, height: 350, alignment: .center).background(RoundedRectangle(cornerRadius: 120).stroke(style: StrokeStyle(lineWidth: 10)).fill(Color(#colorLiteral(red: 0.02920145355, green: 0.06703402847, blue: 0.9148949981, alpha: 1))))
        }
    }
    
}

struct FlutterCourseName:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Image(courseInfo.courseImage).resizable().frame(width: 40, height: 40, alignment: .center).clipShape(Circle())
            Text(courseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).underline()
            Spacer()
        }
    }
}

struct FlutterCompanyImage:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Creator:").font(.system(size: 15, weight: .semibold, design: .rounded))
            Image(self.courseInfo.courseCompanyImage).resizable().frame(width: 25, height: 30, alignment: .center).clipShape(Circle()).colorMultiply(Color.white)
            Text(self.courseInfo.courseCompanyName).font(.system(size: 15, weight: .semibold, design: .rounded))
            Spacer()
        }
    }
}

struct FlutterInfoPrice:View {
    let couseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Price:  "+self.couseInfo.coursePrice).font(.system(size: 15, weight: .bold, design: .rounded)).padding(.trailing, 100.0)
            Spacer()
        }
    }
}

struct FlutterCourseRating:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Rating: ").font(.system(size: 15, weight: .bold, design: .rounded))
            Image(self.courseInfo.courseStatusImage)
            Spacer()
        }
        .padding(.trailing, 100.0)
    }
}

struct FlutterCourseDescription:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.courseInfo.courseDescription).font(.system(size: 15, weight: .bold, design: .rounded)).multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct FlutterContinueButton:View {
    let courseInfo = FlutterCourse()
    
    var body: some View {
        HStack {
            Text("Continue").font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color.white).frame(width: 200, height: 50, alignment: .center).background(RoundedRectangle(cornerRadius: 25).fill(Color(#colorLiteral(red: 0.04784750193, green: 0.1129048839, blue: 0.9053211808, alpha: 1)))).shadow(color: Color(#colorLiteral(red: 0, green: 0.1736399829, blue: 0.8882440925, alpha: 1)), radius: 8, x: 1, y: 1).saturation(1.6).padding()
        }
    }
}

struct FlutterCourseInfo_Previews: PreviewProvider {
    static var previews: some View {
        FlutterCourseInfo()
    }
}
