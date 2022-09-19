//
//  FlashcardView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//
import Foundation
import SwiftUI

// direction flashcards
struct FlashcardView: View {
   
    @State var stepnumber = 0
   
//    @StateObject var oh = afjwifwf
    @ObservedObject var afjwifwf: afjwifwf
    
    @EnvironmentObject var sm: StepsModel
    
    // https://developer.apple.com/forums/thread/687900
    init(afjwifwf: afjwifwf) {
        self.afjwifwf = afjwifwf
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.cyan
     }
    
//    func dsds() {
//        if ssfsfs.steps[stepnumber].id == 1 {
//
//        }
//    }b

//    @State var arr = StepsModel().steplist
    var body: some View {
        
        TabView(selection: $stepnumber) {
            ForEach(sm.steplist) { index in
                HStack {
                    Text("\(sm.steplist[stepnumber % sm.steplist.count].id)")
                        .padding(10)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .cornerRadius(10)
                    
                    Text(sm.steplist[stepnumber % sm.steplist.count].description)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                        .minimumScaleFactor(0.02)
                        .lineLimit(nil)
                    //                          .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 10)
                }
                //                  .padding()
                .padding(.trailing, 10)
                //                  .padding(.top, 10)
                .tag(index)
                .background(Image("flashcardbg").opacity(0.1))
                .background(.white)
            }
//            ForEach(sm.steplist) { index in
////            ForEach(0..<sm.steplist.count, id: \.self) { index in
//                sm.steplist[index]

//                HStack {
//                    Text("\(sm.steplist[stepnumber % sm.steplist.count].id)")
//                        .padding(10)
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .font(.system(size: 30))
//                        .cornerRadius(10)
//
//                    Text(sm.steplist[stepnumber % sm.steplist.count].description)
//                        .foregroundColor(.black)
//                        .font(.system(size: 25))
//                        .minimumScaleFactor(0.02)
//                        .lineLimit(nil)
//        //                          .fixedSize(horizontal: false, vertical: true)
//                        .padding(.horizontal, 10)
//                }
////                  .padding()
//                  .padding(.trailing, 10)
////                  .padding(.top, 10)
//
//                  .background(Image("flashcardbg").opacity(0.1))
//                  .background(.white)
//                  .tag(index)
//            }
        }
//        .onChange(of: ssfsfs.steps[stepnumber].id) { newValue in
//            debugPrint("[a]: new value \(newValue)")
//            ddds.dsds()
//        }
        // https://stackoverflow.com/questions/67032651/how-to-detect-swiping-and-execute-an-action-upon-it-with-an-ios14-tabviews-pa
        // makes the other landmarks visible when step is changed
//        .onChange(of: stepnumber, perform: { newValue in
//            debugPrint("[a]: new value \(newValue)")
//            if newValue == 1 {
//                oh.nextMap = true
//                oh.secondopacity = 1.0
//                oh.thirdopacity = 0.5
//            } else {
//                oh.nextMap = true
//                oh.secondopacity = 1.0
//                oh.thirdopacity = 0.5
//            }
//
//            debugPrint("[a]: new value \(oh.nextMap)")
//            debugPrint("[a]: new value \(oh.secondopacity)")
//            debugPrint("[a]: new value \(oh.thirdopacity)")
//        })
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
//        .environmentObject(sm)
        .onChange(of: stepnumber, perform: { newValue in
            debugPrint("[a]: new value \(newValue)")
            sm.somenewmapthing = newValue
            if newValue == 1 {
                afjwifwf.nextMap = true
                
                afjwifwf.secondopacity = 1.0
                afjwifwf.thirdopacity = 0.5
            } else {
                afjwifwf.nextMap = true
                afjwifwf.secondopacity = 1.0
                afjwifwf.thirdopacity = 0.5
            }

            debugPrint("[a]: new value \(afjwifwf.nextMap)")
            debugPrint("[a]: new value \(afjwifwf.secondopacity)")
            debugPrint("[a]: new value \(afjwifwf.thirdopacity)")
        })
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
//        .environmentObject(sm)
    }
}
//struct FlashcardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FlashcardView()
//    }
//}
