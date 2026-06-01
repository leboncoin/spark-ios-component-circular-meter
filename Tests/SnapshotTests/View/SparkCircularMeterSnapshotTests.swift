//
//  SparkCircularMeterSnapshotTests.swift
//  SparkComponentCircularMeterSnapshotTests
//
//  Created by robin.lemaire on 27/05/2026.
//  Copyright © 2026 Leboncoin. All rights reserved.
//

/*
import XCTest
import SwiftUI
import SnapshotTesting
@_spi(SI_SPI) import SparkCommon
@_spi(SI_SPI) import SparkCommonSnapshotTesting
@_spi(SI_SPI) import SparkCommonTesting
@testable import SparkComponentCircularMeter
import SparkTheming
import SparkTheme

final class SparkCircularMeterSnapshotTests: SwiftUIComponentSnapshotTestCase {

    // MARK: - Properties

    private let theme: any Theme = SparkTheme.shared

    // MARK: - Tests

    func test() {
        let scenarios = CircularMeterScenarioSnapshotTests.allCases
        self.loadScenarios(scenarios)
    }

    // MARK: - Scenarios

    private func loadScenarios(_ scenarios: [CircularMeterScenarioSnapshotTests]) {
        for scenario in scenarios {
            let configurations = scenario.configuration()

            for configuration in configurations {
                let view = SparkCircularMeter()
                    .sparkTheme(self.theme)
                    .padding(20)
                    .background(.background)
                    .fixedSize()

                self.assertSnapshot(
                    matching: view,
                    named: configuration.name,
                    modes: configuration.modes,
                    sizes: configuration.sizes,
                    testName: configuration.testName,
                    forDocumentation: scenario.isDocumentation
                )
            }
        }
    }
}
*/
