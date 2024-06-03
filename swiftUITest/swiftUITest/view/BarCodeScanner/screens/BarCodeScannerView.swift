//
//  BarCodeScannerView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 30/03/24.
//

import SwiftUI


struct BarCodeScannerView: View {
    
    @State var code:String = "No Scanned"
    @State var alertItem:AlertItem?
    
    var body: some View {
        Text("Barcode Scanner")
            .font(.largeTitle)
        
        VStack{
            ScannerView(scannedCode:$code, alertItem: $alertItem)
                .frame(maxWidth: .infinity, maxHeight: 300)
            
            Label("Scanner BarCode:", systemImage: "barcode.viewfinder")
                .font(.title)
            
            Text(code)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(Color(.green))
                .padding()
        }
        .alert(item: $alertItem){alertItem in
            Alert(title: Text(alertItem.tittle), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
        }
    }
}

struct AlertItem:Identifiable{
    let id = UUID()
    let tittle: String
    let message: String
    let dismissButton: Alert.Button
    
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(tittle: "Invalid Device Input", message: "Algo mal con la camara", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(tittle: "Invalid Scanned Type", message: "solo puede escanear enum8 y enum13", dismissButton: .default(Text("Ok")))
}

#Preview {
    BarCodeScannerView()
}
