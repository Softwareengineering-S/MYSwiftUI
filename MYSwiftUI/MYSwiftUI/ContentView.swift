//
//  ContentView.swift
//  MYSwiftUI
//
//  Created by Monique Shaqiri on 14.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI
struct Data: Identifiable{
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
    
}
struct ContentView: View {
    var items = [Data]()
    var body: some View {
        NavigationView{
            List(items){data in
                NavigationLink(destination: DataView(data: data)) {
            HStack{
                Image(data.imageName)
                .resizable().frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(10)
                Text(data.title)
                .foregroundColor(.primary)
                .fontWeight(.bold)
                    }
                }
            }
        .navigationBarTitle("Apple Home KIT")
        }
        
    }
}
struct DataView: View {
    var data : Data
    var body: some View{
        VStack {
            Image(data.imageName)
                .resizable().frame(width: 300,
                                   height: 300,
                                   alignment: .center)
            .aspectRatio(contentMode: .fit)
            Text(data.imageDescription)
            font(.largeTitle)
                .padding()
            Spacer()
            Text(data.imageTakenDate)
            font(.footnote)
            .padding(5)
        }
        .navigationBarTitle(data.title)
    }
        }
        
    






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ContentView(items: [
            Data(title: "apple1", imageName: "apple1", imageDescription: "This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            
            Data(title: "apple2", imageName: "apple2", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            
            Data(title: "apple3", imageName: "apple3", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            Data(title: "apple4", imageName: "apple4", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            Data(title: "apple5", imageName: "apple5", imageDescription: "This is a Homekit AssesoiresvvThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            Data(title: "apple6", imageName: "apple6", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vvThis is a Homekit Assesoires.vvThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
            Data(title: "apple7", imageName: "apple7", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020")
        ])
            .environment(\.colorScheme, .dark)
        .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max "))
           ContentView(items: [
                     Data(title: "apple1", imageName: "apple1", imageDescription: "This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     
                     Data(title: "apple2", imageName: "apple2", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     
                     Data(title: "apple3", imageName: "apple3", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     Data(title: "apple4", imageName: "apple4", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     Data(title: "apple5", imageName: "apple5", imageDescription: "This is a Homekit AssesoiresvvThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     Data(title: "apple6", imageName: "apple6", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vvThis is a Homekit Assesoires.vvThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                     Data(title: "apple7", imageName: "apple7", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020")
                 ])
                     .environment(\.colorScheme, .light)
                 .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max "))
                    ContentView(items: [
                              Data(title: "apple1", imageName: "apple1", imageDescription: "This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              
                              Data(title: "apple2", imageName: "apple2", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              
                              Data(title: "apple3", imageName: "apple3", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              Data(title: "apple4", imageName: "apple4", imageDescription: "This is a Homekit AssesoiresThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.vThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              Data(title: "apple5", imageName: "apple5", imageDescription: "This is a Homekit AssesoiresvvThis is a Homekit Assesoires.vvvThis is a Homekit Assesoires.This is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              Data(title: "apple6", imageName: "apple6", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vvThis is a Homekit Assesoires.vvThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020"),
                              Data(title: "apple7", imageName: "apple7", imageDescription: "This is a Homekit AssesoiresvThis is a Homekit Assesoires.This is a Homekit Assesoires.vThis is a Homekit Assesoires.vThis is a Homekit Assesoires.", imageTakenDate: "1/1/2020")
                          ])
                              .environment(\.colorScheme, .dark)
                          .previewDevice(PreviewDevice(rawValue: "iPad Air 2"))
                             
    }
}
}
