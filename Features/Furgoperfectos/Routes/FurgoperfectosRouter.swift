//
//  FurgoperfectosRouter.swift
//  Application
//
//  Created by Josep Escobar on 07/06/2019.
//

import LoggerAPI
import Health
import KituraContracts


func initializeFurgoperfectosRoutes(app: App) {
    
    /// Returns all Furgoperfectos data
    app.router.get("/furgoperfectos") { (respondWith: (Status?, RequestError?) -> Void) -> Void in
        if health.status.state == .UP {
            // Recover Furgoperfectos from database
            // Only for testing - FurgoperfectosApi.fetchData()
            respondWith(health.status, nil)
        } else {
            respondWith(nil, RequestError(.serviceUnavailable, body: health.status))
        }
    }
    
}
