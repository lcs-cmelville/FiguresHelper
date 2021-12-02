//
//  ShapesListView.swift
//  FiguresHelper
//
//  Created by Claire Melville on 2021-12-01.
//

import SwiftUI

struct ShapesListView: View {
    var body: some View {
        
        VStack{
            
            Text("Shapes")
                .bold()
                .font(.title2)
            
            
        List{
            
            NavigationLink( destination:
        ContentViewCircle())
            {
                Text("Circle")
            }
            
            NavigationLink( destination:
        TriangleView())
            {
                Text("Triangle")
            }
            
            NavigationLink( destination:
        RectangleView())
            {
                Text("Rectangle")
            }
            
            }
        }
    }
}

struct ShapesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ShapesListView()
        }
    }
}
