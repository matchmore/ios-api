//
// UsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersAPI: APIBase {
    /**
     Create a user
     
     - parameter name: (form) The name of the user to be created 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUser(name: String, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        createUserWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a user
     - POST /users
     - API Key:
       - type: apiKey api-key 
       - name: api-key
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "userId" : "aeiou"
}}]
     
     - parameter name: (form) The name of the user to be created 

     - returns: RequestBuilder<User> 
     */
    open class func createUserWithRequestBuilder(name: String) -> RequestBuilder<User> {
        let path = "/users"
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "name": name
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List all users
     
     - parameter limit: (query) How many items to return at one time (1-100, default 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsers(limit: Int32? = nil, completion: @escaping ((_ data: Users?,_ error: Error?) -> Void)) {
        getUsersWithRequestBuilder(limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List all users
     - GET /users
     - API Key:
       - type: apiKey api-key 
       - name: api-key
     - examples: [{contentType=application/json, example=""}]
     
     - parameter limit: (query) How many items to return at one time (1-100, default 100) (optional)

     - returns: RequestBuilder<Users> 
     */
    open class func getUsersWithRequestBuilder(limit: Int32? = nil) -> RequestBuilder<Users> {
        let path = "/users"
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "limit": limit?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Users>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
