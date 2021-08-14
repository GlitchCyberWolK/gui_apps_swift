//
//  MoreCourseInfo.swift
//  ColibriApp
//
//  Created by Alex Ray on 07/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import SwiftUI

class ShapeFormat {
    let shapeWidth:CGFloat = 200
    let shapeHeight:CGFloat = 200
}

class SwiftUICourse {
    let courseName:String = "SwiftUI Master Course"
    let courseStatusImage:String = "flame"
    let courseCompanyName:String = "Apple Inc."
    let courseCompanyImage:String = "apple"
    let coursePrice:String = "free"
    let courseImage:String = "swiftui"
    let courseDescription:String = "This SwiftUI course will help you master your User Interface Building skills and become a full-time Apple Developper."
}

struct MoreCourseInfo: View {
    @State private var percentage:CGFloat = 70
    @State private var pushedSwiftUICourseButton:Bool = false
    
    var body: some View {
        VStack {
            TextCourseInfo().padding(45)
            ZStack {
                Pulsation()
                Track()
                VStack {
                    Label(percentage: percentage)
                }.padding()
                Outline(percentage: percentage).padding()
                
            }.padding()
            SwiftUIContinueButton().padding()
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color(
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
    }
}

struct Label: View {
    var percentage: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.0f", percentage)).font(.system(size: 45, weight: .heavy)).colorInvert()
        }
    }
}

struct Outline:View {
    var colors: [Color] = [Color(#colorLiteral(red: 0.08057606965, green: 0, blue: 0.7063343525, alpha: 1))]
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

struct Track:View {
    var colors: [Color] = [Color(#colorLiteral(red: 0.5170689225, green: 0.4727271795, blue: 0.9608380198, alpha: 1))]
    let shapeRestrictions = ShapeFormat()
    
    var body: some View {
        ZStack {
            Circle().fill(Color(#colorLiteral(red: 0.6309325099, green: 0.5620384216, blue: 0.909285605, alpha: 1))).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
            Circle().stroke(style: StrokeStyle(lineWidth: 20)).fill(AngularGradient(gradient: .init(colors: colors), center: .center)).frame(width: shapeRestrictions.shapeWidth, height: shapeRestrictions.shapeHeight, alignment: .center)
        }
    }
}

struct Pulsation:View {
    @State private var pulsate = false
    var colors: [Color] = [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))).frame(width: 245, height: 245, alignment: .center).scaleEffect(pulsate ? 1.2 : 0.9).animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true)).onAppear() {
                    self.pulsate.toggle()
            }
        }
    }
}

struct TextCourseInfo:View {
    let courseInfo = SwiftUICourse()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    SwiftUICourseName()
                        .padding(.leading)
                    Spacer()
                }
                HStack {
                    Spacer()
                    SwiftUICourseRating()
                    Spacer()
                }
                HStack {
                    Spacer()
                    SwiftUIInfoPrice()
                    Spacer()
                }
                HStack {
                    Spacer()
                    SwiftUICourseDescription().padding(.leading, 50.0).padding()
                    Spacer()
                }
                HStack {
                    Spacer()
                SwiftUICompanyInfo()
                    Spacer()
                }
            }.frame(width: 350, height: 350, alignment: .center).background(RoundedRectangle(cornerRadius: 120).stroke(style: StrokeStyle(lineWidth: 10)).fill(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))))
        }
    }
    
}

struct SwiftUICourseName:View {
    let courseInfo = SwiftUICourse()
    
    var body: some View {
        HStack {
            Spacer()
            Image(courseInfo.courseImage).resizable().frame(width: 40, height: 40, alignment: .center).clipShape(Circle())
            Text(courseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).underline()
            Spacer()
        }
    }
}

struct SwiftUICompanyInfo:View {
    let courseInfo = SwiftUICourse()
    
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

struct SwiftUIInfoPrice:View {
    let couseInfo = SwiftUICourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Price: \(self.couseInfo.coursePrice)").font(.system(size: 15, weight: .bold, design: .rounded)).padding(.trailing, 100.0)
            Spacer()
        }
    }
}

struct SwiftUICourseRating:View {
    let courseInfo = SwiftUICourse()
    
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

struct SwiftUICourseDescription:View {
    let courseInfo = SwiftUICourse()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.courseInfo.courseDescription).font(.system(size: 15, weight: .bold, design: .rounded)).multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct SwiftUIContinueButton:View {
    let courseInfo = SwiftUICourse()
    
    var body: some View {
        HStack {
            Text("Continue").font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color.white).frame(width: 200, height: 50, alignment: .center).background(RoundedRectangle(cornerRadius: 25).fill(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))).shadow(color: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), radius: 8, x: 1, y: 1).saturation(1.6).padding()
        }
    }
}

struct MoreCourseInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoreCourseInfo()
    }
}
