import UIKit

extension UIColor {
    
    static var random: UIColor {
        let red = CGFloat(Double(arc4random_uniform(255) + 1) / 255)
        let green = CGFloat(Double(arc4random_uniform(255) + 1) / 255)
        let blue = CGFloat(Double(arc4random_uniform(255) + 1) / 255)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
