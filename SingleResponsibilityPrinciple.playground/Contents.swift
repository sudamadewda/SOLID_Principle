import UIKit
import CoreGraphics

struct EmployeeModel {
    let id : Int
    let name : String
    let address : String
}

class HttpHandler {
     func callEmployeeApi() -> Data {
        return Data()
    }
}
class Parser {
     func parseApiResponse(respone: Data) ->Array<EmployeeModel>{
        return Array<EmployeeModel>()
    }
}
class DatabaseHandler {
     func saveDatatoDatabase(data: Array<EmployeeModel>){
        print("data save:- \(data)")
    }
}

class Employee {
    let _httpHandler: HttpHandler
    let _parser: Parser
    let _databaseHandler: DatabaseHandler
    
    init(httpHandler : HttpHandler, parser: Parser, databaseHandler: DatabaseHandler) {
        _httpHandler = httpHandler
        _parser = parser
        _databaseHandler = databaseHandler
    }
    
    func getEmployeeData() {
        let employeeResponse = _httpHandler.callEmployeeApi()
        let employeeDataArray = _parser.parseApiResponse(respone: employeeResponse)
        _databaseHandler.saveDatatoDatabase(data: employeeDataArray)
    }
   
    
    
}

let objEmployee = Employee(httpHandler: HttpHandler(), parser: Parser(), databaseHandler: DatabaseHandler())
objEmployee.getEmployeeData()
