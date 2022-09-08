//
//  SedimentationViewModel.swift
//  chemistryApp
//
//  Created by Gabriel Lopes on 08/09/22.
//

import Foundation

class SedimentationViewModel {
    
    var particleModel: particleInitialValues?
    
    func determineFreeFallCoeficient() -> Double {
        
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity,
           let solidDensity = particleModel?.solidDensity {
        
        let freeFallCoeficient = (solidDiameter)*pow(9.81*fluidDensity*(solidDensity-fluidDensity)/pow(dynamicViscosity, 2.0), 0.33333333)
            
        return freeFallCoeficient
    }
        return 0.0
    }
}

