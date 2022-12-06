//
//  ContentView.swift
//  MacSwiftCrasher
//
//  Created by Robert Galli on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                Text("mac-swift-crasher")
                    .foregroundColor(Color.black)
                    .font(.system(size: 28))
                Image("bug")
                    .resizable()
                    .scaledToFit()
                Button {
                    let crasher = Crasher()
                    let time = crasher.GetTime()
                    crasher.GenerateStackFramesAndCrash(time: time)
                } label: {
                    Text("Crash!")
                        .foregroundColor(Color.black)
                        .padding()
                }

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
