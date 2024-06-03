//
//  FrameworkDetailView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 27/03/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
     var framework:Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafari = false
    
    var body: some View {
        VStack{
            XClose(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
                
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafari = true
            }label: {
                AFButtons2(texto: "Ver mas aqui")
                    .sheet(isPresented: $isShowingSafari, content: {
                        SafariView(url: URL(string:framework.urlString)!)
                    })
            }
            
            Button{
                isShowingSafari = true
            }label: {
                AFButtons2(texto: "Ver mas full aqui")
                    .fullScreenCover(isPresented: $isShowingSafari, content: {
                        SafariView(url: URL(string:framework.urlString)!)
                    })
            }
            
            Button{
                
            }label: {
                AFButtons(texto: "Ver mas en navegador",urlString: framework.urlString)
            }
            
            
            
        }
    }
}

struct FrameworkDetailView2: View {
    
     var framework:Framework
    
    @State var isShowingSafari = false
    
    var body: some View {
        VStack{
           
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
                
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafari = true
            }label: {
                AFButtons2(texto: "Ver mas aqui")
                    .sheet(isPresented: $isShowingSafari, content: {
                        SafariView(url: URL(string:framework.urlString)!)
                    })
            }
            
            Button{
                isShowingSafari = true
            }label: {
                AFButtons2(texto: "Ver mas full aqui")
                    .fullScreenCover(isPresented: $isShowingSafari, content: {
                        SafariView(url: URL(string:framework.urlString)!)
                    })
            }
            
            Button{
                
            }label: {
                AFButtons(texto: "Ver mas en navegador",urlString: framework.urlString)
            }
            
            
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(true))
}
