//
//  NameView.swift
//  Joyful
//
//  Created by Ni11on on 15/02/21.
//

import SwiftUI

struct NameView: View {
    @State var name = ""
    
    var body: some View {
        NavigationView{
        VStack{
        Spacer()
            Text("Name?").font(.largeTitle).bold()
            TextField("Enter your name", text : $name).frame(width: 200, height: 50, alignment: .center).font(.title)
            Spacer()
            if !name.isEmpty{
                NavigationLink(
                                destination: ContentView(index: 0, name: $name)) {
                    Text("Continue").font(.title)
                                }
            }else{
                NavigationLink(
                                destination: ContentView(index: 0, name: $name)) {
                    Text("Continue").font(.title)
                }.disabled(true)
            }
            
        Spacer()
        }
    }
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
