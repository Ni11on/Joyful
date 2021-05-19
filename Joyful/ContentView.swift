//
//  ContentView.swift
//  Joyful
//
//  Created by Ni11on on 14/02/21.
//

import SwiftUI

struct ContentView: View {
    @State var index : Int?
    @State var happy = ""
    @Binding var name : String
    
    func happys() {
        index = 1
        happy = "Happy"
    }
    
    func sad() {
        index = 2
        happy = "Sad"
    }
    
    var body: some View {
        
        VStack{
                
            Text(Date(), style: .date)
                .font(.title3)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Text("How Are You \(name)?").font(.largeTitle).bold()
            
            Spacer()
            HStack(spacing: 50){
                VStack{
                    Button(action: {happys()}, label: {
                        Image(systemName: "face.smiling.fill").resizable()
                            .frame(width: 80, height: 80, alignment: .center).foregroundColor(self.index == 1 ? .green: .gray)
                    })
                    Text("Happy")
                }
                VStack{
                    Button(action: {sad()}, label: {
                        Image(systemName: "face.smiling.fill").resizable()
                            .frame(width: 80, height: 80, alignment: .center).foregroundColor(self.index == 2 ? .red: .gray)
                    })
                    Text("Sad")
                }
            }
            Spacer()
            HStack{
                Text("Select your Status").foregroundColor(.gray)
                
            }
            Spacer()
                NavigationLink(destination: StatusView(face: $happy, name: $name)) {
                    Text("Tap Me").font(.system(size: 28, weight: .semibold))
            }
            
        }
    }
    //}
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
