//
//  Appointment.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 22/8/22.
//

// doctor data
import Foundation

enum Doctor {
    case MrDee
    case MsFaith
    case MsYoon
}

struct DoctorProfile: Codable, Identifiable, Hashable {
    
    func aboutMe() {
        print("Hello my name is \(name), and my favourite food is \(qualifications)")
    }
    
    var id = UUID()
    
    var name: String
    var qualifications: String
    var department: String
    var email: String
    var pfp: String
}

let doctors: [DoctorProfile] = [
    DoctorProfile(name: "Ms Faith", qualifications: "Cool", department: "ADMT", email: "faith@gmail.com", pfp: "test"),
    DoctorProfile(name: "Mr Dee", qualifications: "Smart", department: "ICT", email: "dy@gmail.com", pfp: "test")
]
/*
 (PHD in psychology) (Department of Patient Health & Well-being)
 (qualitycare@gmail.com)
 */

struct Appointment {
    var doctor: String
}
