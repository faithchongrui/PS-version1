//
//  LineConnection.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 6/9/22.
//

// line connection between landmarks
// https://stackoverflow.com/questions/65748079/draw-line-between-2-cgpoint-without-using-to-many-addline

import Foundation
import SwiftUI

struct Line: Shape {
    @StateObject var screenpositions = Positioning()
    @StateObject var step = StepsModel()
    // line should be connecting my location and next landmark, depending on which step the thing is on the addLine one should be that location
    // maybe a new var and it is set to like newVar == 2 {
    //                                          anotherVar (this one for storing the location) = CGFloat(screenpositions.escalator.0)/10)+350
    // and so on for the others
    // might want to store these in step manager
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: CGFloat(screenpositions.myLocation.0)/12, y: CGFloat(screenpositions.myLocation.1)*13000))
        path.addLine(to: CGPoint(x: (CGFloat(screenpositions.escalator.0)/12)+301, y: CGFloat(screenpositions.escalator.1)*12800))
        return path
    }
}
