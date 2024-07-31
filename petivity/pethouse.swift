//
//  pethouse.swift
//  petivity
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct pethouse: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    Text("Pet House")
                    ZStack {
                        Image("houseBackground")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("cat")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    Text("name")
                    Text("happiness: ")
                    Text("fish in inventory: ")
                    
                } //end VStack
                
            } //end ZStack
        } //end navigation
    } //end body
} // end struct

#Preview {
    pethouse()
}
