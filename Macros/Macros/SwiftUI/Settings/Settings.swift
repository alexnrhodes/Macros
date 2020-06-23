//
//  Settings.swift
//  Macros
//
//  Created by Alex Rhodes on 6/22/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var accountSettings = ["Name", "Username", "Password", "Phone Number", "Email", "Weight", "Goal","Macro Preference", "Activity Level"]
    
    var supportSettings = ["Contact Us", "FAQ", "Privacy Policy", "Terms of Service"]
    
    var feedbackSettings = ["Contact Us", "Privacy Policy", "Terms of Service"]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 0)
                        .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
                        .foregroundColor(Color.gray.opacity(0.3))
                    
                    Text("MY ACCOUNT")
                        .font(Font.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(Color.gray)
                        .padding([.top, .leading])
                }
                VStack(spacing: 0) {
                    ForEach(0..<accountSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                    }
                    
                }.padding([.leading, .trailing])
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 0)
                        .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
                        .foregroundColor(Color.gray.opacity(0.3))
                    
                    Text("SUPPORT")
                        .font(Font.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(Color.gray)
                        .padding([.top, .leading])
                }
                
                VStack(spacing: 0) {
                    ForEach(0..<supportSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                    }
                    
                }.padding([.leading, .trailing])
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 0)
                        .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
                        .foregroundColor(Color.gray.opacity(0.3))
                    
                    Text("FEEDBACK")
                        .font(Font.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(Color.gray)
                        .padding([.top, .leading])
                }
                
                VStack(spacing: 0) {
                    ForEach(0..<feedbackSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                    }
                    
                }.padding([.leading, .trailing])
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct CustomRow: View {
    var content: String
    var body: some View {
        HStack() {
            Text(content)
                .font(Font.custom("AvenirNext-Bold", size: 12))
            Spacer()
            Button(action: {}) {
                Image(systemName: "chevron.right")
                    .font(.headline)
            }
        }
        .foregroundColor(content == "Custom Rows!" ? Color.green : Color.primary)
        .font(.title)
        .padding([.top, .bottom])
    }
    
}
