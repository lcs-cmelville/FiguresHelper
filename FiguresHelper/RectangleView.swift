//
//  RectangleView.swift
//  FiguresHelper
//
//  Created by Claire Melville on 2021-12-01.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored Properties
    @State var lengthInCentimeters: Double = 10
    @State var widthInCentimeters: Double = 20
    
    //MARK: Computed properties
    var area: Double{
        lengthInCentimeters * widthInCentimeters
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Length (cm) :")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(lengthInCentimeters)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                // The syntax of $ says to use this property (radius) and BIND IT to the control
                // to "bind" means that when the control changes, the property's value changes
                
                Slider(value: $lengthInCentimeters,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
                    Text("Length")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
                Text("Width (cm) c:")
                    .bold()
                
                HStack {
                    Spacer()
                    Text("\(widthInCentimeters)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $widthInCentimeters,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
                    Text("Width")
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
        .navigationTitle("Rectangle")

    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        RectangleView()
        }
    }
}
