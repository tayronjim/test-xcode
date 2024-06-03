//
//  FrameworkGridView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 27/03/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        
            NavigationView(content: {
                ScrollView(content: {
                    LazyVGrid(columns: viewModel.columns, content: {
                        ForEach(MockData.frameworks, id: \.self){framework in
                            FrameworkTitle(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                        
                    })
                })
                
                .navigationTitle("App Frameworks")
                    .sheet(isPresented: $viewModel.isShowingDetailView) {
                        FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                    }
                
                /*
                 /// usar fullScreenCover para que la pantalla que carga se muetre en pantalla completa y no flotando
                 
                 .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                     FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                 }
                 
                 */
                
            })
        
        
            
        
        
        
    }
}




#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}



