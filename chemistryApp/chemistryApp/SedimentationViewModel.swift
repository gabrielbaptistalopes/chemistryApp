//
//  SedimentationViewModel.swift
//  chemistryApp
//
//  Created by Gabriel Lopes on 08/09/22.
//

import Foundation

class SedimentationViewModel {
    
   private var particleModel: particleInitialValues?
    private var intermediateLaw: intermediateLaw?
    
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
    
    func newtonTerminalVelocity() -> Double {
        
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
        
        let newtonVelocity = 1.75*pow((9.81*(solidDensity-fluidDensity)*solidDiameter)/fluidDensity, 0.5)
        
        return newtonVelocity
    }
        return 0.0
}
    func stokesTerminalVelocity() -> Double {
        
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity,
           let solidDensity = particleModel?.solidDensity {
        
        let stokesVelocity = 9.81*(solidDensity-fluidDensity)*pow(solidDiameter, 2.0)/(18.0*dynamicViscosity)
        return stokesVelocity
    }
        return 0.0
}
    func intermediateTerminalVelocityResult() -> Double {
        if let intermediateLaw = intermediateLaw {
            return intermediateLaw.getTerminalVelocityIntermediateLaw6()
        }
        return 0.0
    }

}

