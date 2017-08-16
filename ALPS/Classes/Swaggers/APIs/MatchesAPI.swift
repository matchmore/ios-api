//
// MatchesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MatchesAPI: APIBase {
    /**
     Get matches for the device
     
     - parameter userId: (path) The id (UUID) of the user of the device 
     - parameter deviceId: (path) The id (UUID) of the user device 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMatches(userId: String, deviceId: String, completion: @escaping ((_ data: Matches?,_ error: Error?) -> Void)) {
        getMatchesWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get matches for the device
     - GET /users/{userId}/devices/{deviceId}/matches
     - API Key:
       - type: apiKey api-key 
       - name: api-key
     - examples: [{contentType=application/json, example=""}]
     
     - parameter userId: (path) The id (UUID) of the user of the device 
     - parameter deviceId: (path) The id (UUID) of the user device 

     - returns: RequestBuilder<Matches> 
     */
    open class func getMatchesWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Matches> {
        var path = "/users/{userId}/devices/{deviceId}/matches"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Matches>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
