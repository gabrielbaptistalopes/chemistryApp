//
//  SedimentationViewModel.swift
//  chemistryApp
//
//  Created by Gabriel Lopes on 08/09/22.
//

import Foundation

class SedimentationViewModel {
    
  var particleValues: particleInitialValues
    
    init() {
        self.particleValues = particleInitialValues()
    }
    
   func determineFreeFallCoeficient() -> Double {
            
        let freeFallCoeficient = (sedimentationModel.solidDiameter)*pow(9.81*sedimentationModel.fluidDensity*(sedimentationModel.solidDensity-sedimentationModel.fluidDensity)/pow(sedimentationModel.dynamicViscosity, 2.0), 0.33333333)
      
        return freeFallCoeficient
    }
    
}
