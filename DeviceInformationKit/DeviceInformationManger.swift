//
//  DeviceInformationManger.swift
//  DeviceInformationKit
// 
//  Created by Krishna Yadav on 19/03/24.
//  Email: krishdv11@gmail.com
//  Contact No: +91-8959827972
//

import Foundation


public class DeviceInformationManger {
    
    /// Shared singleton instance.
    public static let shared = DeviceInformationManger()

    // Prevent  developers from creating their own instances by making the initializer `private`.
    private init() {}

}

public extension DeviceInformationManger {
    func getCurrentAppVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            print("Version Name: \(version)")
            return version
        } else {
            print("Failed to retrieve version name.")
            return "Failed to retrieve version name."
        }
    }
}
