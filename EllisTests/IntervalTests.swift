import XCTest
import Ellis

class IntervalTests: XCTestCase
{
    func testThatItShouldRelateDistanceZeroToUnisson()
    {
        XCTAssertEqual(Interval.Unisson, Interval.createIntervalFromDistance(distance: 0), "")
    }

    func testThatItShouldRelateDistanceOneToMinorSecond()
    {
        XCTAssertEqual(Interval.MinorSecond, Interval.createIntervalFromDistance(distance: 1), "")
    }

    func testThatItShouldRelateDistanceTwoToMajorSecond()
    {
        XCTAssertEqual(Interval.MajorSecond, Interval.createIntervalFromDistance(distance: 2), "")
    }

    func testThatItShouldRelateDistanceThreeToMinorThird()
    {
        XCTAssertEqual(Interval.MinorThird, Interval.createIntervalFromDistance(distance: 3), "")
    }

    func testThatItShouldRelateDistanceFourToMajorThird()
    {
        XCTAssertEqual(Interval.MajorThird, Interval.createIntervalFromDistance(distance: 4), "")
    }

    func testThatItShouldRelateDistanceFiveToPerfectFourth()
    {
        XCTAssertEqual(Interval.PerfectForth, Interval.createIntervalFromDistance(distance: 5), "")
    }

    func testThatItShouldRelateDistanceSixToDiminishedFifth()
    {
        XCTAssertEqual(Interval.DiminishedFifth, Interval.createIntervalFromDistance(distance: 6), "")
    }

    func testThatItShouldRelateDistanceSevenToPerfectFifth()
    {
        XCTAssertEqual(Interval.PerfectFifth, Interval.createIntervalFromDistance(distance: 7), "")
    }

    func testThatItShouldRelateDistanceEigthToAugmentedFifth()
    {
        XCTAssertEqual(Interval.AugmentedFifth, Interval.createIntervalFromDistance(distance: 8), "")
    }

    func testThatItShouldRelateDistanceNineToMajorSixth()
    {
        XCTAssertEqual(Interval.MajorSixth, Interval.createIntervalFromDistance(distance: 9), "")
    }

    func testThatItShouldRelateDistanceTenToMinorSeventh()
    {
        XCTAssertEqual(Interval.MinorSeventh, Interval.createIntervalFromDistance(distance: 10), "")
    }

    func testThatItShouldRelateDistanceEleventhToMajorSeventh()
    {
        XCTAssertEqual(Interval.MajorSeventh, Interval.createIntervalFromDistance(distance: 11), "")
    }

    func testThatItShouldRelateDistanceTwelveToPerfectOctave()
    {
        XCTAssertEqual(Interval.PerfectOctave, Interval.createIntervalFromDistance(distance: 12), "")
    }
    
    func testThatItSubtractingAMinorSecondFromAnOctaveIsAMajorSeventh()
    {
        XCTAssertEqual(Interval.PerfectOctave - Interval.MinorSecond, Interval.MajorSeventh.rawValue, "")
    }
    
    func testThatOctaveIsGreaterThamMajorSeventh()
    {
        XCTAssertTrue(Interval.PerfectOctave > Interval.MajorSeventh, "")
    }
}

