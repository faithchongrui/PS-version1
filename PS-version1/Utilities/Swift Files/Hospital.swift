//
//  Hospital.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import Foundation

// hospital data
struct Hospital: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var hospitals = [
    Hospital(name: "Tan Tock Seng Hospital", image: "PS-hospitalA"),
    Hospital(name: "Hospital B", image: "PS-hospitalB"),
]
