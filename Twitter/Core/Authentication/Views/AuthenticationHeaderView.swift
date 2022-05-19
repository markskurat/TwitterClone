//
//  AuthenticationHeader.swift
//  Twitter
//
//  Created by Mark Skurat on 5/16/22.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    
    let title1: String
    let title2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack { Spacer() }
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        } // header view
        .frame(height: 260)
        .padding(.leading)
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthenticationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeaderView(title1: "Hello.", title2: "Welcome Back")
    }
}
