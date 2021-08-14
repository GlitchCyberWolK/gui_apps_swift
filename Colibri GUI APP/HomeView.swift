//
//  HomeView.swift
//  ColibriApp
//
//  Created by Alex Ray on 05/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import SwiftUI

class FaceBookGroup {
    let CompanyName:String = "Facebook Inc."
    let ImageName:String = "facebook"
    let JobInterview:Bool = true
    let CompanyColor:String = "blue"
    let JobOffer:String = "Front-End Developper"
    let JobSalary:Int = 80700
    let JobDescription:String = "We need a professional motivated Front-End Developper for our company."
}

class ColibriStudios {
    let CompanyName:String = "Colibri Inc."
    let ImageName:String = "fire"
    let JobInterview:Bool = true
    let CompanyColor:String = "purple"
    let JobOffer:String = "Back-End Developper"
    let JobSalary:Int = 90120
    let JobDescription:String = "We need a professional motivated Back-End Developper for our company."
}
class EagleIndustries {
    let CompanyName:String = "Eagle Inc."
    let ImageName:String = "eagle"
    let JobInterview:Bool = false
    let CompanyColor:String = "red"
    let JobOffer:String = "Application Designer"
    let JobSalary:Int = 65340
    let JobDescription:String = "We need a professional motivated Application Designer for our team."
}

class AppleSublimeDesignCertificate {
    let CompanyImage:String = "apple"
    let CertificateTitle:String = "Sublime Design Certificate"
    let CompanyName:String = "Apple Inc."
    
}

class BloombergBuisnessManagement {
    let CompanyImage:String = "bloomberg"
    let CertificateTitle:String = "Buisness Managment Excellence"
    let CompanyName:String = "Bloomberg Buisness"
}

class ColibriBackEndDev {
    let CompanyImage:String = "cursorarrow.motionlines"
    let CertificateTitle:String = "Back-End Developpment Internship"
    let CompanyName:String = " Colibri Inc."
}

struct MainView:View {
    let MainUserInfo = ContentView()
    @State public var ViewUserInfo = EagleIncCompanyStatus()
    
    let BackButtonHidden:Bool = true
    var body: some View {
        VStack {
                VStack {
                    HStack {
                        Spacer()
                        Image("cursorarrow.motionlines").resizable().frame(width: 50, height: 50, alignment: .center)
                        Text("Colibri").bold().font(.largeTitle)
                        Spacer()
                    }
                    BestOffers()
            .navigationBarBackButtonHidden(self.BackButtonHidden)
            }
            }
    
    
}

    struct HomeView:View {
        var body: some View {
            VStack {
                MainView()
            }
        }
    }
        


struct BestOffers:View {
    // Main Classes Info
    
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    let AppleCerInfo = AppleSublimeDesignCertificate()
    let BloombergInfo = BloombergBuisnessManagement()
    let ColibiriCertificateInfo = ColibriBackEndDev()
    
    var body: some View {
        
        VStack {
            VStack(spacing: 10) {
        ScrollView( showsIndicators: false) {
                    VStack {
                        Spacer()
                        HStack {
                            Text("Best Offers").font(.title).fontWeight(.bold).underline().padding(.leading, 35.0)
                            Spacer()
                        }
                        HStack {
                    OffersScrollViewHStack()
                        }
                        VStack {
                        HStack {
                            Text("Your Courses").font(.title).fontWeight(.bold).underline().padding(.leading, 35.0)
                            Spacer()
                        }
                        HStack {
                    CourseScrollViewHStack()
                        }
                        }
                        Spacer()
                    }
                }
                
            }
        }
    }
}


struct FaceBookCompanyHStack:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.FaceBookInfo.CompanyName).foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            Image(self.FaceBookInfo.ImageName).resizable().frame(width: 50, height: 50, alignment: .center).clipShape(Capsule()).saturation(10).shadow(color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), radius: 10, x: 1, y: 1)
            Spacer()
        }
    }
}

struct FaceBookCompanyStatus:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Interview: ").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded)).padding()
            if self.FaceBookInfo.JobInterview {
                Image("check").resizable().frame(width: 30, height: 30, alignment: .bottom).overlay(Circle().stroke(Color.blue, lineWidth: 1.5).foregroundColor(Color.white))
            }
            Spacer()
        }
    }
}
struct FaceBookCompanyJobName:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.FaceBookInfo.JobOffer).font(.system(size: 20, weight: .bold, design: .rounded))
            Spacer()
        }
    }
}

struct FaceBookSalary:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Salary: $\(self.FaceBookInfo.JobSalary)").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            Spacer()
        }
    }
}

struct FaceBookDescription:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.FaceBookInfo.JobDescription).font(.system(size: 18, weight: .semibold, design: .rounded)).multilineTextAlignment(.center).frame(width: 230, height: 140, alignment: .center)
            Spacer()
        }
    }
}

struct FaceBookApplyButton:View {
    var body: some View {
        HStack {
            Spacer()
            Text("Apply").font(.system(size: 17, weight: .semibold, design: .rounded)).frame(width: 100, height: 50, alignment: .center).overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.blue, lineWidth: 2.5))
            Spacer()
        }
    }
}

struct ColibriStudiosJobName:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.ColbriStudiosInfo.JobOffer).font(.system(size: 20, weight: .bold, design: .rounded))
            Spacer()
        }
    }
}

struct ColibriStrudiosCompanyHStack:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.ColbriStudiosInfo.CompanyName).foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            if self.ColbriStudiosInfo.CompanyColor == "purple" {
                Image(self.ColbriStudiosInfo.ImageName).resizable().frame(width: 50, height: 50, alignment: .center).clipShape(Capsule()).saturation(10).shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), radius: 10, x: 1, y: 1)
            }
            Spacer()
        }
    }
}

struct ColibriStudiosCompanyStatus:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Interview: ").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded)).padding()
            if self.ColbriStudiosInfo.JobInterview {
                Image("check").resizable().frame(width: 30, height: 30, alignment: .bottom).overlay(Circle().stroke(Color.blue, lineWidth: 1.5).foregroundColor(Color.white))
            }
            Spacer()
        }
    }
}

struct ColibriStudiosSalary:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Salary: $\(self.ColbriStudiosInfo.JobSalary)").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            Spacer()
        }
    }
}

struct ColibriStudiosDescription:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.ColbriStudiosInfo.JobDescription).font(.system(size: 18, weight: .semibold, design: .rounded)).multilineTextAlignment(.center).frame(width: 230, height: 140, alignment: .center)
            Spacer()
        }
    }
}

struct ColibriStudiosApplyButton:View {
    // Class Info
    let ColibriStudiosInfo = ColibriStudios()
    var body: some View {
        HStack {
            Spacer()
            if self.ColibriStudiosInfo.CompanyColor == "purple" {
                Text("Apply").font(.system(size: 17, weight: .semibold, design: .rounded)).foregroundColor(Color.purple).frame(width: 100, height: 50, alignment: .center).overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.purple, lineWidth: 2.5))
            }
            Spacer()
        }
    }
}

struct EagleIncJobName:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.EagleIncInfo.JobOffer).font(.system(size: 20, weight: .bold, design: .rounded))
            Spacer()
        }
    }
}

struct EagleIncCompanyHStack:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.EagleIncInfo.CompanyName).foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            if self.EagleIncInfo.CompanyColor == "red" {
                Image(self.EagleIncInfo.ImageName).resizable().frame(width: 50, height: 50, alignment: .center).clipShape(Capsule()).saturation(10).shadow(color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), radius: 10, x: 1, y: 1)
            }
            Spacer()
        }
    }
}

struct EagleIncSalary:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Salary: $\(self.EagleIncInfo.JobSalary)").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded))
            Spacer()
        }
    }
}

struct EagleIncCompanyStatus:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Interview: ").foregroundColor(Color.black).font(.system(size: 18, weight: .semibold, design: .rounded)).padding()
            if self.EagleIncInfo.JobInterview {
                Image("checkmark").resizable().frame(width: 30, height: 30, alignment: .bottom).overlay(Circle().stroke(Color.red, lineWidth: 1.5).foregroundColor(Color.white))
            }
            Spacer()
        }
    }
}

struct EagleIncCompanyDescription:View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        HStack {
            Spacer()
            Text(self.EagleIncInfo.JobDescription).font(.system(size: 18, weight: .semibold, design: .rounded)).multilineTextAlignment(.center).frame(width: 230, height: 140, alignment: .center)
            Spacer()
        }
    }
}

struct EagleIncApplyButton:View {
    // Class Info
    let EagleIncInfo = EagleIndustries()
    var body: some View {
        HStack {
            Spacer()
            if self.EagleIncInfo.CompanyColor == "red" {
                Text("Apply").font(.system(size: 17, weight: .semibold, design: .rounded)).foregroundColor(Color.red).frame(width: 100, height: 50, alignment: .center).overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.red, lineWidth: 2.5))
            }
            Spacer()
        }
    }
}

struct EagleIncOffer: View {
    var body: some View {
        VStack {
            EagleIncJobName()
            EagleIncCompanyHStack()
            EagleIncSalary()
            NavigationLink(destination: MoreInfoEagleInc()) {
                EagleIncApplyButton()
            }.padding()
        }.frame(width: 250, height: 250, alignment: .center).background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.red, lineWidth: 5)).padding().animation(.interactiveSpring())
    }
}

struct OffersScrollViewHStack: View {
    // Main Classes Info
    let FaceBookInfo = FaceBookGroup()
    let ColbriStudiosInfo = ColibriStudios()
    let EagleIncInfo = EagleIndustries()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                if self.FaceBookInfo.CompanyColor == "blue" {
                    VStack {
                        FaceBookCompanyJobName()
                        FaceBookCompanyHStack()
                        FaceBookSalary()
                        NavigationLink(destination: MoreInfoFB()){
                            FaceBookApplyButton()
                        }.padding()
                    }.frame(width: 250, height: 250, alignment: .center).background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.blue, lineWidth: 5)).padding().animation(.interactiveSpring())
                }
                
                if self.ColbriStudiosInfo.CompanyColor == "purple" {
                    VStack {
                        ColibriStudiosJobName()
                        ColibriStrudiosCompanyHStack()
                        ColibriStudiosSalary()
                        NavigationLink(destination: MoreColibriStudiosInfo()) {
                            ColibriStudiosApplyButton()
                        }.padding()
                    }.frame(width: 250, height: 250, alignment: .center).background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.purple, lineWidth: 5)).padding().animation(.interactiveSpring())
                }
                
                if self.EagleIncInfo.CompanyColor == "red" {
                    EagleIncOffer()
                }
            }
        }
    }
}

struct CourseScrollViewHStack:View {
    // Main Classes Info
    let moreCourseInfo = FlutterCourse()
    let AppleCerInfo = AppleSublimeDesignCertificate()
    
    var body: some View {
ScrollView(.horizontal, showsIndicators: false) {
    VStack {
        HStack {
                    
                FirstCourseView()
                SecondCourseView()
                ThirdCourseView()
        }
    }
}.padding(.bottom, 150)
    
}

struct FirstCourseView: View {
    let moreCourseInfo = SwiftUICourse()
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))).frame(width: 250, height: 150, alignment: .center)
                .cornerRadius(25).saturation(1.3)
            VStack {
                HStack {
                    Spacer()
                    Image(self.moreCourseInfo.courseImage).resizable().frame(width: 30, height: 30, alignment: .center).clipShape(Circle()).colorMultiply(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))).saturation(2)
                    Text(self.moreCourseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Progress: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseStatusImage).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Creator: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Text(self.moreCourseInfo.courseCompanyName).font(.system(size: 15, weight: .medium, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseCompanyImage).resizable().frame(width: 40, height: 30, alignment: .center)
                    Spacer()
                }
                HStack {
                    Spacer()
                    NavigationLink(destination: MoreCourseInfo()) {
                        Text("Start").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white).background(ZStack {
                            Rectangle().fill(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))).frame(width: 50, height: 20, alignment: .center).cornerRadius(20)
                        })
                    }
                    
                    
                    Spacer()
                }
            }
        }
    }
}
    
    
struct ThirdCourseView: View {
    let moreCourseInfo = HTMLCourse()
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))).frame(width: 250, height: 150, alignment: .center)
                .cornerRadius(25).saturation(1.3)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(self.moreCourseInfo.courseImage).resizable().frame(width: 30, height: 30, alignment: .center).clipShape(Circle()).colorMultiply(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).saturation(2)
                    Text(self.moreCourseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Progress: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseStatusImage).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Creator: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Text(self.moreCourseInfo.courseCompanyName).font(.system(size: 15, weight: .medium, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseCompanyImage).resizable().frame(width: 30, height: 30, alignment: .center)
                    Spacer()
                }
                HStack {
                    Spacer()
                    NavigationLink(destination:HTMLCourseInfo()) {
                        Text("Start").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white).background(ZStack {
                            Rectangle().fill(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))).frame(width: 50, height: 20, alignment: .center).cornerRadius(20)
                        })
                    }
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}



struct SecondCourseView: View {
    let moreCourseInfo = FlutterCourse()
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.237095058, green: 0.5910376906, blue: 0.9630301595, alpha: 1))).frame(width: 250, height: 150, alignment: .center)
                .cornerRadius(25).saturation(1.3)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(self.moreCourseInfo.courseImage).resizable().frame(width: 30, height: 30, alignment: .center).clipShape(Circle()).colorMultiply(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).saturation(2)
                    Text(self.moreCourseInfo.courseName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Progress: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseStatusImage).foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Creator: ").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white)
                    Text(self.moreCourseInfo.courseCompanyName).font(.system(size: 15, weight: .medium, design: .rounded)).foregroundColor(Color.white)
                    Image(self.moreCourseInfo.courseCompanyImage).resizable().frame(width: 25, height: 30, alignment: .center).clipShape(Circle()).colorMultiply(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    Spacer()
                }
                HStack {
                    Spacer()
                    NavigationLink(destination: FlutterCourseInfo()) {
                        Text("Start").font(.system(size: 15, weight: .semibold, design: .rounded)).foregroundColor(Color.white).background(ZStack {
                            Rectangle().fill(Color(#colorLiteral(red: 0.06802839786, green: 0.1594880521, blue: 1, alpha: 1))).frame(width: 50, height: 20, alignment: .center).cornerRadius(20)
                        })
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

}
