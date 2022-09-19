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
    var address: String
    var openningHours = "Full Day"
    var generalInfo: String
}

var hospitals = [
    Hospital(name: "Tan Tok Seng Hospital", image: "tanTockSengHospital", address: "11 Jln Tan Tock Seng, Singapore 308433", generalInfo: "Tan Tock Seng Hospital is a tertiary referral hospital in Singapore, located in Novena. The hospital has 45 clinical and allied health departments, 16 specialist centres and is powered by more than 8,000 healthcare staff. "),
    Hospital(name: "Hospital B", image: "PS-hospitalB", address: "42 ABC Road, Singapore", generalInfo: "XXX"),
]
