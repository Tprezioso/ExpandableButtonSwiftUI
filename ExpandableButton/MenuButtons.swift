//
//  MenuButtons.swift
//  ExpandableButton
//
//  Created by Thomas Prezioso on 10/20/20.
//

import SwiftUI

struct MenuButtons: View {
    var buttonImage: String
    
    var body: some View {
        Button(action: {
            print("Menu Button tapped")
            
        }) {
            ZStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 50, height: 50)
                
                Image(systemName: buttonImage)
                    .imageScale(.large)
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct MenuButtons_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtons(buttonImage: "")
    }
}
