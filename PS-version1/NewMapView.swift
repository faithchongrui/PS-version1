//
//  NewMapView.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 4/9/22.
//

import SwiftUI

struct NewMapView: View {
//    @Environment(\.) private var avalue
    @StateObject var locationmanager = LocationManager()
    @StateObject var screenpositions = Positioning()

    @ObservedObject var compassHeading = CompassHeading()
    @ObservedObject var afjwifwf: afjwifwf

    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height

    @State var opacity = false
//    @State var secondopacity: Double = 0.5
//    @State var thirdopacity: Double = 1.0
//    @State var nextMap: Bool = false
//    @EnvironmentObject var oh: afjwifwf
    
    @StateObject var sm = StepsModel()
    
    @State var showNavHome = false
    
    var body: some View {
        
        VStack(alignment: .center) {
            ZStack {
                HStack {
                    // toggle map opacity switch
                    Toggle("toggle opacity", isOn: $opacity)
                        .padding(.trailing, 130)
                        .padding()
//                        .padding(.top, 50)
                        .position(x: 200)
                        .frame(width: 350, height: 50)
                        .foregroundColor(colour)
                        .tint(colour)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 50)
                .background(backgroundColour)
                .edgesIgnoringSafeArea(.all)
            }
            .edgesIgnoringSafeArea(.all)
            
            ZStack {
                ZoomableScrollView {
                    ZStack {
                        Image("map")
                            .scaledToFit()
                            .opacity(0.4)
                        // if switch is toggled, map will be replaced with a full opacity version
                        if opacity {
                            Image("map")
                                .scaledToFit()
                                .opacity(1)
                        }
                        
                        Image("map2")
                            .scaledToFit()
                            .opacity(0)
                        // if flashcard is swiped, next map is shown and first map is hidden
                        if afjwifwf.nextMap == true {
                            Image("map2")
                                .scaledToFit()
                                .opacity(1)
                            Image("map")
                                .scaledToFit()
                                .opacity(0)
                        }
                        
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(.blue)
                                .opacity(afjwifwf.thirdopacity)
                                
                            Image(systemName: "location.fill")
                                .frame(width: 10, height: 10, alignment: .center)
                        // location of arrow corresponds to phone location with minor adjustments for screen
                                .position(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*13000)
                    
                                .foregroundColor(.blue)
                        // make arrow spin according to where phone is facing
//                                .rotationEffect(Angle(degrees: self.compassHeading.degrees), anchor: .init(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*12500))

                        Escalator1()
                            .opacity(afjwifwf.thirdopacity)
                        
                        Escalator1top()
                            .opacity(afjwifwf.secondopacity) 
                        
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                            .foregroundColor(.yellow)
                            .opacity(afjwifwf.secondopacity)
                        
                       Corridor1()
                            .opacity(afjwifwf.secondopacity)
                    }
                    .rotationEffect(Angle(degrees: self.compassHeading.degrees))
                    .background(.white)
                }
                
                // shows where the phone is facing; kinda glitchy but not sure how to solve that
                CompassView()
                    .scaleEffect(0.5)
                    .background(.black)
                    .cornerRadius(40)
                    .fixedSize()
                    .position(y: -55)
                    .padding(.leading, 330)
            }
            
            // flashcards for stepped directions
            FlashcardView(afjwifwf: PS_version1.afjwifwf())
                .frame(height: 130, alignment: .top)
                .frame(maxWidth: .infinity)
                .cornerRadius(20)
                .environmentObject(sm)
//                .onChange(of: FlashcardView().stepnumber) { newValue in
//                    debugPrint("[a]: new value \(newValue)")
//                    if newValue == 1 {
//                        nextMap = true
//                        secondopacity = 1.0
//                        thirdopacity = 0.5
//                    } else {
//                        nextMap = false
//                        secondopacity = 0.5
//                        thirdopacity = 1.0
//                    }
//
//                    debugPrint("[a]: new value \(nextMap)")
//                    debugPrint("[a]: new value \(secondopacity)")
//                    debugPrint("[a]: new value \(thirdopacity)")
//                }
        }
//        .environmentObject(oh)
        .navigationBarHidden(true)
        .navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea([.top, .bottom])
        .background(.cyan)
        .navigate(to: NavigationHomeView(), when: $showNavHome)
        
    }
}

//struct NewMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewMapView()
//    }
//}

//secondopacity: 0.5, thirdopacity: 1.0, nextMap: false
