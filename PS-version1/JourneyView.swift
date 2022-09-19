//
//  JourneyView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 17/8/22.
//

import SwiftUI

struct JourneyView: View {
    
    var steps: Int
    var destination: String
    var stepsCompleted = 0
    
    @State var returnTo = false
    
    var body: some View {
        NewMapView(afjwifwf: afjwifwf())
    }
}

struct JourneyView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyView(steps: 5, destination: "Room 1")
    }
}
