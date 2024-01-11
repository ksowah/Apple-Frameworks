//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by macbook on 04/01/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject  {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
