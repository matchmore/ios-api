//
// SubscriptionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class SubscriptionAPI: APIBase {
    /**
     Create a subscription for a device for a user

     - parameter userId: (path)  The id (UUID) of the user to create a device for
     - parameter deviceId: (path)  The id (UUID) of the user device
     - parameter topic: (form)  The topic of the subscription. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter selector: (form)  This is an expression to filter the publications. For instance &#39;job&#x3D;&#39;developer&#39;&#39; will allow matching only with publications containing a &#39;job&#39; key with a value of &#39;developer&#39;
     - parameter range: (form)  The range of the subscription in meters. This is the range around the device holding the subscription in which matches with publications can be triggered
     - parameter duration: (form)  The duration of the subscription in seconds. If set to &#39;-1&#39; the subscription will live forever and if set to &#39;0&#39; it will be instant at the time of subscription.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubscription(userId: String, deviceId: String, topic: String, selector: String, range: Double, duration: Double, completion: @escaping ((_ data: Subscription?,_ error: Error?) -> Void)) {
        createSubscriptionWithRequestBuilder(userId: userId, deviceId: deviceId, topic: topic, selector: selector, range: range, duration: duration).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a subscription for a device for a user
     - POST /users/{userId}/devices/{deviceId}/subscriptions
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "duration" : 1.3579000000000001069366817318950779736042022705078125,
  "op" : "aeiou",
  "topic" : "aeiou",
  "range" : 1.3579000000000001069366817318950779736042022705078125,
  "selector" : "aeiou",
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "subscriptionId" : "aeiou",
  "deviceId" : "aeiou",
  "timestamp" : 123456789
}}]

     - parameter userId: (path)  The id (UUID) of the user to create a device for
     - parameter deviceId: (path)  The id (UUID) of the user device
     - parameter topic: (form)  The topic of the subscription. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter selector: (form)  This is an expression to filter the publications. For instance &#39;job&#x3D;&#39;developer&#39;&#39; will allow matching only with publications containing a &#39;job&#39; key with a value of &#39;developer&#39;
     - parameter range: (form)  The range of the subscription in meters. This is the range around the device holding the subscription in which matches with publications can be triggered
     - parameter duration: (form)  The duration of the subscription in seconds. If set to &#39;-1&#39; the subscription will live forever and if set to &#39;0&#39; it will be instant at the time of subscription.

     - returns: RequestBuilder<Subscription>
     */
    open class func createSubscriptionWithRequestBuilder(userId: String, deviceId: String, topic: String, selector: String, range: Double, duration: Double) -> RequestBuilder<Subscription> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "topic": topic,
            "selector": selector,
            "range": range,
            "duration": duration
        ]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Subscription>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a Subscription

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter subscriptionId: (path) The id (UUID) of the subscription
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubscription(userId: String, deviceId: String, subscriptionId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteSubscriptionWithRequestBuilder(userId: userId, deviceId: deviceId, subscriptionId: subscriptionId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a Subscription
     - DELETE /users/{userId}/devices/{deviceId}/subscriptions/{subscriptionId}
     -
     - API Key:
       - type: apiKey api-key
       - name: api-key

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter subscriptionId: (path) The id (UUID) of the subscription

     - returns: RequestBuilder<Void>
     */
    open class func deleteSubscriptionWithRequestBuilder(userId: String, deviceId: String, subscriptionId: String) -> RequestBuilder<Void> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions/{subscriptionId}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{subscriptionId}", with: "\(subscriptionId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Void>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Info about a subscription on a device of a user

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter subscriptionId: (path) The id (UUID) of the subscription
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscription(userId: String, deviceId: String, subscriptionId: String, completion: @escaping ((_ data: Subscription?,_ error: Error?) -> Void)) {
        getSubscriptionWithRequestBuilder(userId: userId, deviceId: deviceId, subscriptionId: subscriptionId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Info about a subscription on a device of a user
     - GET /users/{userId}/devices/{deviceId}/subscriptions/{subscriptionId}
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "duration" : 1.3579000000000001069366817318950779736042022705078125,
  "op" : "aeiou",
  "topic" : "aeiou",
  "range" : 1.3579000000000001069366817318950779736042022705078125,
  "selector" : "aeiou",
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "subscriptionId" : "aeiou",
  "deviceId" : "aeiou",
  "timestamp" : 123456789
}}]

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter subscriptionId: (path) The id (UUID) of the subscription

     - returns: RequestBuilder<Subscription>
     */
    open class func getSubscriptionWithRequestBuilder(userId: String, deviceId: String, subscriptionId: String) -> RequestBuilder<Subscription> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions/{subscriptionId}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{subscriptionId}", with: "\(subscriptionId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Subscription>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all subscriptions for a device

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptions(userId: String, deviceId: String, completion: @escaping ((_ data: Subscriptions?,_ error: Error?) -> Void)) {
        getSubscriptionsWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all subscriptions for a device
     - GET /users/{userId}/devices/{deviceId}/subscriptions
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example=""}]

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device

     - returns: RequestBuilder<Subscriptions>
     */
    open class func getSubscriptionsWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Subscriptions> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Subscriptions>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
