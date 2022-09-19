//
//  StepManager.swift
//  testing
//
//  Created by FAITH CHONG RUI EN stu on 7/9/22.
//

import Foundation
import SwiftUI

struct Steps: Codable, Identifiable, Hashable {
    var id: Int
    var description: String
}

class StepsModel: ObservableObject {
    @EnvironmentObject var sm: StepsModel
    @Published var steplist: [Steps] = [Steps(id: 1, description: "go straight"),
                                  Steps(id: 2, description: "go up a floor"),
                                  Steps(id: 3, description: "turn left"),
                                  Steps(id: 4, description: "turn right")]
    @Published var somenewmapthing: Int = 0
}
