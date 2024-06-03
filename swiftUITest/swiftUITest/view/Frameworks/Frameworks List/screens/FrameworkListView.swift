//
//  FrameworkGridView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 27/03/24.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        
            NavigationView(content: {
                
                    List{
                        ForEach(MockData.frameworks){framework in
                            NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                                FrameworkTitleHorizontal(framework: framework)
                            }
                        }
                    }
                
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
                
            }).accentColor(Color(.label))
        
        
    }
}




#Preview {
    FrameworkListView().preferredColorScheme(.dark)
}



