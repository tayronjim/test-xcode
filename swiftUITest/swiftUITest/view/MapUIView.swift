//
//  MapUIView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 14/03/24.
//

import SwiftUI
import MapKit

struct MapUIView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2DMake(40, -3)
        let span = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapUIView()
}
