//
//  FrameworkGridNavStack.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 30/03/24.
//

import SwiftUI

struct FrameworkGridNavStack: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks){framework in
                        NavigationLink(value: framework){
                            FrameworkTitle(framework: framework)
                        }
                        
                            
                    }
                })
            }
            
            .navigationTitle("App Frameworks")
            .navigationDestination(for: Framework.self){framework in
                FrameworkDetailView2(framework: framework)
            }
            
              
        }
    }
}

#Preview {
    FrameworkGridNavStack()
}
