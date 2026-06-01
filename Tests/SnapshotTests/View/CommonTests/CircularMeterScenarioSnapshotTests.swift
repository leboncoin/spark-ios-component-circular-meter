//
//  CircularMeterScenarioSnapshotTests.swift
//  SparkComponentCircularMeterSnapshotTests
//
//  Created by robin.lemaire on 27/05/2026.
//  Copyright © 2026 Leboncoin. All rights reserved.
//

@testable import SparkComponentCircularMeter
@_spi(SI_SPI) import SparkCommon
@_spi(SI_SPI) import SparkCommonSnapshotTesting
@_spi(SI_SPI) import SparkCommonTesting
import SparkTheme
import UIKit
import SwiftUI

enum CircularMeterScenarioSnapshotTests: String, CaseIterable {
    case test1
    // TODO: Add others
    case documentation

    // MARK: - Type Alias

    typealias Constants = ComponentSnapshotTestConstants

    // MARK: - Properties

    var isDocumentation: Bool {
        self == .documentation
    }

    // MARK: - Configurations

    func configuration() -> [CircularMeterConfigurationSnapshotTests] {
        switch self {
        case .test1:
            return self.test1()
        case .documentation:
            return self.documentation()
        }
    }

    // MARK: - Scenarios

    /// Test 1
    ///
    /// Description:
    // TODO: Add description
    ///
    /// Content:
    ///  - intents: all
    // TODO: Add content
    ///  - size: default
    ///  - content: default
    ///  - isBorder: default
    ///  - mode: all
    ///  - size: default
    private func test1() -> [CircularMeterConfigurationSnapshotTests] {
        let intents = CircularMeterIntent.allCases

        return intents.map { intent in
                .init(
                    scenario: self,
                    intent: intent,
                    modes: Constants.Modes.all
                )
        }
    }

    // MARK: - Documentation

    // Used to generate screenshot for Documentation
    private func documentation() -> [CircularMeterConfigurationSnapshotTests] {
        var items: [CircularMeterConfigurationSnapshotTests] = []

        // TODO: Add

        return items
    }
}
