//
//  PROOFApp.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State var isUserLoggedIn: Bool = false

    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn{
                TabView {
                    Tab("Chores", systemImage: "list.bullet.rectangle"){
                        TaskView()
//                        RegisterScreenContainer()
                    }
                    
                    Tab("Feed", systemImage: "rectangle.split.2x2.fill") {
                        FeedView()
                    }
                }
                .tint(Color.dogPrimary)
            }else {
                WelcomeScreenView(isPresented: $isUserLoggedIn)
//                RegisterScreenContainer(isPresented: $isUserLoggedIn)
            }
        }
    }
}
