//
//  HospitalView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct HospitalView: View {

    @State var hospital: Hospital
    
    var body: some View {
        
        TabView {
            // background image
            ZStack(alignment: .top) {
                
                Image("background2")
                    .scaledToFit()
                    .opacity(0.2)
                    .background(.white)
                    .ignoresSafeArea(.all)
                
                HospitalDetailView(hospital: hospital)
                    .padding(.top, 70)
            }
            .tabItem {
                Label("Hospital", systemImage: "house.fill")
            }
            
            DoctorsView(doctor: doctors[0])
                .tabItem {
                    Label("Doctors", systemImage: "person.fill")
                }
            
            // background image
            ZStack(alignment: .center) {
                Image("background2")
                    .scaledToFit()
                    .opacity(0.2)
                    .background(.white)
                    .ignoresSafeArea(.all)
                
                NavigationHomeView()
            }
            .tabItem {
                Label("Navigation", systemImage: "mappin")
            }
        }
        // changing colour of selected tab item
        .accentColor(.blue)
    }
}
