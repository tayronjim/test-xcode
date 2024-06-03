//
//  AsyncImageGenerator.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 10/04/24.
//

import SwiftUI

struct AsyncImageGenerator: View {
    
    var appetizerImageURL:String
    let placeholderImage = UIImage(named: "fondoComida")!
    
    var body: some View {
        /*
         ////   Cargar la imagen y mostrar un progressView mientras se carga
         
        AsyncImage(url: URL(string: appetizer.imageURL)) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 90)
                .cornerRadius(8)
        } placeholder: {
            ProgressView()
        }.frame(width: 120,height: 90)
         */
        //// Mostrar la imagen y mostrar un progressView o una magen de fondo mientras se carga
        AsyncImage(url: URL(string: appetizerImageURL)) { phase in
            switch phase {
            case .empty:
                PlaceHolderView(image: placeholderImage)   ///   PlaceHolderView carga  una imagen mientras se descarga la real, en caso de que falle la carga de la imagen demo, muentra un progressView
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
            case .success(let image):
                image.resizable()
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
            case .failure:
                Image(uiImage: placeholderImage)   ////  En caso de error al cargar la imagen, se queda de fondo la imagen demo
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
            @unknown default:
                EmptyView()
            }
        }
    }
}


struct PlaceHolderView: View {
    @State var image: UIImage?
    
    var body: some View {
        if let image = image {
            Image(uiImage: image).resizable()
        } else {
            ProgressView()
        }
    }
}
