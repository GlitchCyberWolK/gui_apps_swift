//
//  HomeViewExtended.swift
//  ColibriApp
//
//  Created by Alex Ray on 10/09/2020.
//  Copyright © 2020 Alex Ray. All rights reserved.
//

import Foundation
import SwiftUI

struct ColibriCertificate:View {
    var title:String
    var image:String
    var bkColor:Color
    var CoName:String
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))).frame( height: 230, alignment: .center).cornerRadius(10).padding(16).saturation(2)
            VStack {
                Text(title).font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color.black).saturation(2)
                VStack {
                    HStack {
                        Spacer()
                        Text("Given by:").font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                        Text(CoName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                        Spacer()
                    }
                    Image(image).resizable().frame(width: 100, height: 25).colorMultiply(bkColor)
                }
            }
            
        }
    }
}


struct BloombergCertificate:View {
    var title:String
    var image:String
    var bkColor:Color
    var CoName:String
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))).frame( height: 230, alignment: .center).cornerRadius(10).padding(16).saturation(2)
            VStack {
                Text(title).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black).saturation(2)
                VStack {
                    HStack {
                        Spacer()
                        Text("Given by:").font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                        Text(CoName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                        Spacer()
                    }
                    Image(image).resizable().frame(width: 100, height: 25).colorMultiply(bkColor)
                }
            }
            
        }
    }
}




struct AppleCertificate:View {
    var title:String
    var image:String
    var bkColor:Color
    var CoName:String
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color(
                #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))).frame( height: 230, alignment: .center).cornerRadius(10).padding(16).saturation(2)
            VStack {
                Text(title).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black).saturation(2)
                HStack {
                    Spacer()
                    Text("Given by:").font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                    Text(CoName).font(.system(size: 15, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                    Image(image).resizable().frame(width: 40, height: 30).colorMultiply(bkColor).clipShape(Circle())
                    Spacer()
                }
            }
            
        }
    }
}


