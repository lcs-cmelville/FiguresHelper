//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Claire Melville on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading) {
            
            Text("Circle")
                .bold()
                .font(.title)
                .padding()
            
            Text("Radius:")
                .font(.title2)
                .padding(.leading)
            
            HStack{
                
                Spacer()
                
                Text("25.0")
                
                Spacer()
                
            }
            
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            
            Text("Area:")
                .bold()
                .font(.title2)
                .padding()
               
            
            Text("Pi x R^2")
                .font(.body)
                .padding(.leading)
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
