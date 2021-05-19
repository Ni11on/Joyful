//
//  StatusView.swift
//  Joyful
//
//  Created by Ni11on on 14/02/21.
//

import SwiftUI

struct StatusView: View {
    @Binding var face : String
    @Binding var name : String
    
    var body: some View {
        if (face == "Sad"){
            Image("sad_image").font(.system(size: 28)).padding()
        }else{
            Image("happy_image").font(.system(size: 28)).padding()
        }
        
        Text(name).font(.largeTitle).bold()
        Text("are you \(face)").font(.title)
        Spacer()
    }
}

//struct StatusView_Previews: PreviewProvider {
//    static var previews: some View {
//        StatusView()
//    }
//}
