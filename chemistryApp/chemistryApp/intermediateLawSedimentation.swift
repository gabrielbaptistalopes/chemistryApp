//
//  intermediateLawSedimentation.swift
//  chemistryApp
//
//  Created by Gabriel Lopes on 08/09/22.
//

import Foundation

class intermediateLaw {
    
    private var particleModel: particleInitialValues?
    private var equationsLaw: SedimentationViewModel?
    
   private func stokesTerminalVelocity() -> Double {
        
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity,
           let solidDensity = particleModel?.solidDensity {
        
        let stokesVelocity = 9.81*(solidDensity-fluidDensity)*pow(solidDiameter, 2.0)/(18.0*dynamicViscosity)
        return stokesVelocity
    }
        return 0.0
}
    
    private  func getReynolds() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
        
        let reynolds = (fluidDensity*stokesTerminalVelocity()*solidDiameter)/dynamicViscosity
        
        return reynolds
    }
        
        return 0.0
    }
  
    private  func getArrastCoeficient() -> Double {
        let arrastCoeficient = (24.0/getReynolds()) + (3.0/pow(getReynolds(), 0.5)) + 0.34
        
        return arrastCoeficient
    }
    
    private  func getTerminalVelocityIntermediateLaw() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
            
        let intermediateVelocity = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient()), 0.5)
        
        return intermediateVelocity
    }
        return 0.0
    }
    
    private func getReynolds2() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
       
           let reynolds2 = (fluidDensity*getTerminalVelocityIntermediateLaw()*solidDiameter)/dynamicViscosity
        
        return reynolds2
        }
        return 0.0
    }
    
    private  func getArrastCoeficient2() -> Double {
        let arrastCoeficient2 = (24.0/getReynolds2()) + (3.0/pow(getReynolds2(), 0.5)) + 0.34
        
        return arrastCoeficient2
    }
    
    private func getTerminalVelocityIntermediateLaw2() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
            
        let intermediateVelocity2 = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient2()), 0.5)
        
        return intermediateVelocity2
    }
        return 0.0
    }
    
    private func getReynolds3() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
        
        let reynolds3 = (fluidDensity*getTerminalVelocityIntermediateLaw2()*solidDiameter)/dynamicViscosity
        
        return reynolds3
        }
        return 0.0
    }
    
    private  func getArrastCoeficient3() -> Double {
        let arrastCoeficient3 = (24.0/getReynolds3()) + (3.0/pow(getReynolds3(), 0.5)) + 0.34
        
        return arrastCoeficient3
    }
    
    private func getTerminalVelocityIntermediateLaw3() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
            
        let intermediateVelocity3 = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient3()), 0.5)
        
        return intermediateVelocity3
    }
        return 0.0
    }
    
    private  func getReynolds4() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
        
        let reynolds4 = (fluidDensity*getTerminalVelocityIntermediateLaw3()*solidDiameter)/dynamicViscosity
        
        return reynolds4
        }
        return 0.0
    }
    
    private  func getArrastCoeficient4() -> Double {
        let arrastCoeficient4 = (24.0/getReynolds4()) + (3.0/pow(getReynolds4(), 0.5)) + 0.34
        
        return arrastCoeficient4
    }
    
    private  func getTerminalVelocityIntermediateLaw4() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
        let intermediateVelocity4 = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient4()), 0.5)
        
        return intermediateVelocity4
        }
        return 0.0
    }
    
    private func getReynolds5() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
            
        let reynolds5 = (fluidDensity*getTerminalVelocityIntermediateLaw4()*solidDiameter)/dynamicViscosity
        
        return reynolds5
        }
        return 0.0
    }
    
    private func getArrastCoeficient5() -> Double {
        let arrastCoeficient5 = (24.0/getReynolds5()) + (3.0/pow(getReynolds5(), 0.5)) + 0.34
        
        return arrastCoeficient5
    }
    
    private func getTerminalVelocityIntermediateLaw5() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
            
           let intermediateVelocity5 = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient5()), 0.5)
        
        return intermediateVelocity5
    }
        return 0.0
    }
   
    private func getReynolds6() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let dynamicViscosity = particleModel?.dynamicViscosity {
            
           let reynolds6 = (fluidDensity*getTerminalVelocityIntermediateLaw5()*solidDiameter)/dynamicViscosity
        
           return reynolds6
        }
        return 0.0
    }
    
    private func getArrastCoeficient6() -> Double {
        let arrastCoeficient6 = (24.0/getReynolds6()) + (3.0/pow(getReynolds6(), 0.5)) + 0.34
        
        return arrastCoeficient6
    }
    
    func getTerminalVelocityIntermediateLaw6() -> Double {
        if let solidDiameter = particleModel?.solidDiameter,
           let fluidDensity = particleModel?.fluidDensity,
           let solidDensity = particleModel?.solidDensity {
        let intermediateVelocity6 = pow((4.0*9.81*(solidDensity-fluidDensity)*solidDiameter)/(3.0*fluidDensity*getArrastCoeficient6()), 0.5)
        
        return intermediateVelocity6
    }
        return 0.0
}
}
