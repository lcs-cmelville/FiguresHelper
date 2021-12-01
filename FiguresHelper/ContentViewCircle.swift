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
    //Inupt - we need this from the use//we want SwifUI to update the user interface based on what the user selects.
    //to do this, we use a special peice of syntax
    //called a "property wrapper"
    //
    //@State
    //
    //this marks the property as being on that SwitUI should watch for changes.
   @State var radius: Double = 15.00
    
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
                        
                        // The syntax of $says to use this property (radius) and BIND IT to the control
                        // to "bind" means that when the control changes, the property's value changes
                        Slider(value: $radius,
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
