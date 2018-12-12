
import XCTest
@testable import EPCalendar

class EPCalendarTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
            }
    
    override func tearDown() {
                super.tearDown()
    }
    
    func test1 () {
        
        let calendarPicker = EPCalendarPicker(startYear: 2000, endYear: 2001, multiSelection: true)
        let navigationController = UINavigationController(rootViewController: calendarPicker)
        UIViewController().present(navigationController, animated: true, completion: nil)
        
        let numOfSections = calendarPicker.collectionView?.numberOfSections
        
        XCTAssertEqual(numOfSections, 24)
        
        
    }
    
}
