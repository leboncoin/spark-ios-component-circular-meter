//
//  Double+FormattedValueExtension.swift
//  SparkComponentCircularMeter
//
//  Created by robin.lemaire on 01/06/2026.
//  Copyright © 2026 Leboncoin. All rights reserved.
//

import Foundation

extension Double {

    // MARK: - Methods

    /// Converts the Double value to a percentage string.
    ///
    /// This method assumes the Double value is a decimal representation (0.0 to 1.0)
    /// and converts it to a percentage string (e.g., 0.70 becomes "70%").
    ///
    /// - Parameter maximumFractionDigits: The maximum number of decimal places to display. Defaults to 0.
    /// - Returns: A localized percentage string representation of the value.
    ///
    /// ## Example of usage
    ///
    /// ```swift
    /// let value: Double = 0.70
    /// let percentage = value.toPercentageString() // "70%"
    ///
    /// let preciseValue: Double = 0.7534
    /// let precisePercentage = preciseValue.toPercentageString(maximumFractionDigits: 1) // "75.3%"
    /// ```
    func toPercentageString(maximumFractionDigits: Int = 0) -> String {
        let formatter = NumberFormatter.shared
        return formatter.string(for: self) ?? ""
    }
}
