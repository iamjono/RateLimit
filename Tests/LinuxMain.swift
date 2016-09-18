import XCTest
import RateLimitTestSuite
var tests = [XCTestCaseEntry]()
tests += RateLimitTestSuite.allTests()
XCTMain(tests)
