//
//  TriangleView.swift
//  FiguresHelper
//
//  Created by Claire Melville on 2021-12-01.
//

import SwiftUI

struct TriangleView: View {
    
    //MARK: Stored properties
    @State var heightInCentimeters: Double = 15.00
    @State var sideAInCentimeters: Double = 25.00
    @State var sideBInCentimeters: Double = 25.00
    @State var sideCInCentimeters: Double = 35.00
    
    //MARK: Computed properties
    var area:  Double {
        sideCInCentimeters * heightInCentimeters / 2
    }
    
        var body: some View {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Input
                    Text("Height (cm):")
                        .bold()
                        .padding(.top)
                    
                    Group {
                        
                        // Show the selected radius value
                        HStack {
                            Spacer()
                            Text("\(heightInCentimeters)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
                        // The syntax of $ says to use this property (radius) and BIND IT to the control
                        // to "bind" means that when the control changes, the property's value changes
                        Slider(value: $heightInCentimeters,
                               in: 0.0...100.0,
                               step: 0.5,
                               label: {
                            Text("Radius")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })

                        HStack {
                            Spacer()
                            Text("\(sideAInCentimeters)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
                        // The syntax of $ says to use this property (radius) and BIND IT to the control
                        // to "bind" means that when the control changes, the property's value changes
                        Slider(value: $sideAInCentimeters,
                               in: 0.0...100.0,
                               step: 0.5,
                               label: {
                            Text("Radius")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })
                        
                        HStack {
                            Spacer()
                            Text("\(sideBInCentimeters)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
                        // The syntax of $ says to use this property (radius) and BIND IT to the control
                        // to "bind" means that when the control changes, the property's value changes
                        Slider(value: $sideBInCentimeters,
                               in: 0.0...100.0,
                               step: 0.5,
                               label: {
                            Text("Radius")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })
                        
                        HStack {
                            Spacer()
                            Text("\(sideCInCentimeters)")
                                .font(.title2)
                                .bold()
                            Spacer()
                        }
                        
                        // The syntax of $ says to use this property (radius) and BIND IT to the control
                        // to "bind" means that when the control changes, the property's value changes
                        Slider(value: $sideCInCentimeters,
                               in: 0.0...100.0,
                               step: 0.5,
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
                    
                    Text("\(area) units")
                        .font(.title2)
                    
                }
                .padding()
                .navigationTitle("Triangle")
            }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        TriangleView()
        }
    }
}
