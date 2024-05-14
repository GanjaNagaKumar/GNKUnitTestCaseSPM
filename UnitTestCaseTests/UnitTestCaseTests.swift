//
//  UnitTestCaseTests.swift
//  UnitTestCaseTests
//
//  Created by NagaKumar Ganja on 16/07/23.
//

import XCTest
@testable import UnitTestCase

final class UnitTestCaseTests: XCTestCase {
    let calculation = Calculation()
    func testSuccessfulTipCalculation() {
        
        // Given
        let enteredAmount = 100.00
        let tipSlider = 25.0
        
        // When
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        //Then
        XCTAssertEqual(tip, 25)
        
        
    }
    
    func testNagativeEnteredAmountTipCalculation()  {
        // Given
        let enteredAmount = -100.00
        let tipSlider = 25.0
        
        // When
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        //Then
        XCTAssertNil(tip)
        
    }
  
}
