//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by macbook on 04/01/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isPresentWebView = false
    
    var body: some View {
        VStack {
            
            
            Spacer()
            FrameworkTitleView(framework: framework )
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isPresentWebView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isPresentWebView){
                SafariWebView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                .ignoresSafeArea()
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
