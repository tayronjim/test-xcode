//
//  CardSelectView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 21/03/24.
//

import SwiftUI

struct CardSelectView: View {
    @State private var isModalPresented = false
    //@State var currentImage: Image?
    @State var currentImage: String?
    @State private var timer: Timer?
    
    let cardsName: [String] = [
        "2C",
        "2D",
        "2P",
        "2T",
        "3C",
        "3D",
        "3P",
        "3T",
        "11C",
        "12C",
        "13C",
    ]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                
                Image(currentImage ?? "2C")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 400)
                
                MyBtn3(icon:"stop.circle", text: "Stop", color: .red).onTapGesture{
                    stopTimer()
                }
                
                MyBtn2(icon:"arrow.circlepath", text: "Restart", color: .green).onTapGesture{
                    startTimer()
                }
                
                Spacer()
                
                HStack{
                    NavigationLink(destination: RulesView()) {
                        MyBtn2(icon:"list.clipboard", text: "Rules1", color: .blue)
                    }
                    
                    MyBtn2(icon:"list.clipboard", text: "Rules2", color: .blue).onTapGesture {
                        self.isModalPresented.toggle()
                    }
                }
                
                Spacer()
                
            }
            .padding(.all, 20.0)
            .sheet(isPresented: $isModalPresented) {
                ModalRulesView(isModalPresented: self.$isModalPresented)
                    }
        }
        
    }
    
    func startTimer(){
        print("si")
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true){_ in
            currentImage = cardsName.randomElement() ?? "2C"//Image("2C")
        }
    }
    
    func stopTimer(){
        timer?.invalidate()
        timer = nil
    }
}

#Preview {
    CardSelectView()
}
