//
//  MoreCourseInfo2.swift
//  ColibriApp
//
//  Created by Alex Ray on 09/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import SwiftUI

class HTMLCourse {
    let courseName:String = "HTML Basics Course"
    let courseStatusImage:String = "snow"
    let courseCompanyName:String = "Standford"
    let courseCompanyImage:String = "standford"
    let coursePrice:String = "10"
    let courseImage:String = "html"
    let courseDescription:String = "This Standford University course will help you master your HTML skills."
}

struct HTMLCourseInfo: View {
    @State private var percentage:CGFloat = 35
    @State private var pushedSwiftUICourseButton:Bool = false
    
    var body: some View {
        VStack {
            SecondTextCourseInfo().padding(45)
            ZStack {
                SecondPulsation()
                SecondTrack()
                VStack {
                    SecondLabel(percentage: percentage)
                }.padding()
                SecondOutline(percentage: percentage).padding()
                
            }.padding()
            HTMLContinueButton()
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color(
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
    }
}

struct SecondLabel: View {
    var percentage: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.0f", percentage)).font(.system(size: 45, weight: .heavy)).colorInvert()
        }
    }
}

struct SecondOutline:View {
    var colors: [Color] = [Color(#colorLiteral(red: 1, green: 0, blue: 0.03759367764, alpha: 1))]
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

struct SecondTrack:View {
    var colors: [Color] = [Color(#colorLiteral(red: 0.8547654748, green: 0.4010057449, blue: 0.5412598848, alpha: 1))]
    let shapeRestrictions = ShapeFormat()
    
    var body: some View {
        ZStack {
            Circle().fill(Color(#colorLiteral(red: 0.9744665027, green: 0.6360607147, blue: 0.7119086385, alpha: 1))).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
            Circle().stroke(style: StrokeStyle(lineWidth: 20)).fill(AngularGradient(gradient: .init(colors: colors), center: .center)).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
        }
    }
}

struct SecondPulsation:View {
    @State private var pulsate = false
    var colors: [Color] = [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color(#colorLiteral(red: 0.9986909032, green: 0.4722216129, blue: 0.38106215, alpha: 1))).frame(width: 245, height: 245, alignment: .center).scaleEffect(pulsate ? 1.2 : 0.9).animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true)).onAppear() {
                    self.pulsate.toggle()
            }
        }
    }
}

struct SecondTextCourseInfo:View {
    let courseInfo = HTMLCourse()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    HTMLCourseName()
                        .padding(.leading)
                    Spacer()
                }
                HStack {
                    Spacer()
                    HTMLCourseRating()
                    Spacer()
                }.padding(.trailing, 55.0)
                HStack {
                    Spacer()
                    HTMLInfoPrice()
                    Spacer()
                }.padding(.trailing, 55.0)
                    
               VStack {
                        HTMLCourseDescription().multilineTextAlignment(.trailing)
                    }.frame(width: 250, height: 100, alignment: .center)
                    
                
                HStack {
                    Spacer()
                    HTMLCompanyInfo().padding(.trailing, 50.0)
                    Spacer()
                }
            }.frame(width: 350, height: 350, alignment: .center).background(RoundedRectangle(cornerRadius: 120).stroke(style: StrokeStyle(lineWidth: 10)).fill(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))))
        }
    }
    
}

struct HTMLCourseName:View {
    let courseInfo = HTMLCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Image(courseInfo.courseImage).resizable().frame(width: 40, height: 40, alignment: .center).clipShape(Circle())
            Text(courseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).underline()
            Spacer()
        }
    }
}

struct HTMLCompanyInfo:View {
    let courseInfo = HTMLCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Creator:").font(.system(size: 15, weight: .semibold, design: .rounded))
            Image(self.courseInfo.courseCompanyImage).resizable().frame(width: 40, height: 30, alignment: .center).clipShape(Circle())
            Text(self.courseInfo.courseCompanyName).font(.system(size: 15, weight: .semibold, design: .rounded))
            Spacer()
        }
    }
}

struct HTMLInfoPrice:View {
    let couseInfo = HTMLCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Price: $"+self.couseInfo.coursePrice).font(.system(size: 15, weight: .bold, design: .rounded)).padding(.trailing, 100.0)
            Spacer()
        }
    }
}

struct HTMLCourseRating:View {
    let courseInfo = HTMLCourse()
    
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

struct HTMLCourseDescription:View {
    let courseInfo = HTMLCourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.courseInfo.courseDescription).font(.system(size: 15, weight: .bold, design: .rounded)).multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct HTMLContinueButton:View {
    let courseInfo = HTMLCourse()
    
    var body: some View {
        HStack {
            Text("Continue").font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color.white).frame(width: 200, height: 50, alignment: .center).background(RoundedRectangle(cornerRadius: 25).fill(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))).shadow(color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), radius: 8, x: 1, y: 1).saturation(1.6).padding()
        }
    }
}


struct MoreCourseInfo2_Previews: PreviewProvider {
    static var previews: some View {
        HTMLCourseInfo()
    }
}
