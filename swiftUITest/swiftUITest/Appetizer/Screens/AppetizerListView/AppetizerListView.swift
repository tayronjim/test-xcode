//
//  AppetizerListView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 01/04/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State var appetizerSelect:Appetizer = MockDataAppetizer.clearData
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){appetizer in
                    AppetizerListCell(appetizer:appetizer)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            appetizerSelect = appetizer
                            isShowingDetail = true
                        }
                    
                }
                .navigationTitle("List")
                .listStyle(.plain)
                .disabled(isShowingDetail)
                
            }.onAppear{
                Task {
                        await viewModel.getAppetizers()
                        //viewModel.getAppetizersX()
                    }
            }
            .blur(radius: isShowingDetail ? 5 : 0)
            if isShowingDetail {
                PopPupDetailView(isShowingDetail: $isShowingDetail, appetizer: appetizerSelect)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.tittle, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        
        
    }
    
}

#Preview {
    AppetizerListView()
}



