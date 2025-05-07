import Foundation
import UIKit

struct BMI {
    var value: Float?
    var advice: String?
    var color: UIColor?
    
    func toString() -> String {
        // Optional Binding (se o value existir insere dentro de safeValue e utilize dentro do {}
        // if let safeValue = value {
        //    return String(format: "%.1f", safeValue)
        //}
        
        // Force Unwrapping (Força o valor, se ele for nil vai dar error)
        // return String(format: "%.1f", value!)
        
        // Check for nil value
        // if value != nil {
        //    return String(format: "%.1f", value)
        // }
        
        // Nil Coalescing Operator (se value não existir envia o valor default)
        return String(format: "%.1f", value ?? 0.0)
    }
    
    mutating func calculate(height: Float, weight: Float) {
        value = weight / pow(height, 2)
        if value! < 18.5 {
            print("underweight")
            advice = "Eat more pies!"
            color = UIColor.blue
        } else if value! < 24.9 {
            print("normal weight")
            advice = "Fit as a fiddle!"
            color = UIColor.green
        } else {
            print("overweight")
            advice = "Eat less pies!"
            color = UIColor.red
        }
    }
}
