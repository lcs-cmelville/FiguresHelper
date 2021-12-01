//
//  ContentViewCircle.swift
//  FiguresHelper
//
//  Created by Claire Melville on 2021-12-01.
//

import SwiftUI
struct ContentViewCircle: View {
    
    //MARK: Stored Properties
    //"radius is the name
    //"double" is the data type
    //By adding = 15.0  we are just provifing a default value
    var radius: Double = 45.00
    
    //MARK: Computed Properties
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var body: some View {
        
            // User interface
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Input
                    Text("Radius:")
                        .bold()
                    
                    Group {
                        
                        // Show the selected radius value
                        HStack {
                            Spacer()
                            Text("\(radius)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
                        Slider(value: .constant(15.0),
                               in: 0.0...100.0,
                               label: {
                            Text("Radius")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })

                    }
                    
                                
                    // Output
                    Text("Area:")
                        .bold()
                    
                    Text("\(area) square units")
                        .font(.title2)
                    
                    
                    Spacer()
                    
                }
                .padding()
                .navigationTitle("Circle")
        
    }
}

struct ContentViewCircle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentViewCircle()
        }
    }
}
