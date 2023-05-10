//
//  TwoClientAppApp.swift
//  TwoClientApp
//
//  Created by Lenny Burdette on 5/9/23.
//

import SwiftUI
import Foundation
import Apollo
import Countries
import SpaceX

let countriesClient = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
let spaceXClient = ApolloClient(url: URL(string: "https://spacex-production.up.railway.app/")!)

@main
struct TwoClientAppApp: App {
    init() {
        countriesClient.fetch(query: AllCountriesQuery()) { result in
            guard let data = try? result.get().data else { return }
            print(data)
        }
        
        spaceXClient.fetch(query: DragonsQuery()) { result in
            guard let data = try? result.get().data else { return }
            print(data)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
