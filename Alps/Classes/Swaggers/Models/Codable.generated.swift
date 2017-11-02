// Generated using Sourcery 0.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


open class EncodableDevice: NSObject, NSCoding {
    public var device: Device!
    public init(device: Device?) {
        self.device = device
    }
    required public init?(coder decoder: NSCoder) {
        self.device = Device()
        self.device?.id = decoder.decodeObject(forKey: "id") as? String
        self.device?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.device?.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Int64
        self.device?.group = decoder.decodeObject(forKey: "group") as? [String]
        self.device?.name = decoder.decodeObject(forKey: "name") as? String
        self.device?.deviceType = DeviceType(rawValue: decoder.decodeObject(forKey: "deviceType") as! String)
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(device?.id, forKey: "id")
        encoder.encode(device?.createdAt, forKey: "createdAt")
        encoder.encode(device?.updatedAt, forKey: "updatedAt")
        encoder.encode(device?.group, forKey: "group")
        encoder.encode(device?.name, forKey: "name")
        encoder.encode(device?.deviceType?.rawValue, forKey: "deviceType")
    }
}

open class EncodableIBeaconDevice: NSObject, NSCoding {
    public var iBeaconDevice: IBeaconDevice!
    public init(iBeaconDevice: IBeaconDevice?) {
        self.iBeaconDevice = iBeaconDevice
    }
    required public init?(coder decoder: NSCoder) {
        self.iBeaconDevice = IBeaconDevice()
        self.iBeaconDevice?.proximityUUID = decoder.decodeObject(forKey: "proximityUUID") as? String
        self.iBeaconDevice?.major = decoder.decodeObject(forKey: "major") as? Int32
        self.iBeaconDevice?.minor = decoder.decodeObject(forKey: "minor") as? Int32
        self.iBeaconDevice?.id = decoder.decodeObject(forKey: "id") as? String
        self.iBeaconDevice?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.iBeaconDevice?.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Int64
        self.iBeaconDevice?.group = decoder.decodeObject(forKey: "group") as? [String]
        self.iBeaconDevice?.name = decoder.decodeObject(forKey: "name") as? String
        self.iBeaconDevice?.deviceType = DeviceType(rawValue: decoder.decodeObject(forKey: "deviceType") as! String)
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(iBeaconDevice?.proximityUUID, forKey: "proximityUUID")
        encoder.encode(iBeaconDevice?.major, forKey: "major")
        encoder.encode(iBeaconDevice?.minor, forKey: "minor")
        encoder.encode(iBeaconDevice?.id, forKey: "id")
        encoder.encode(iBeaconDevice?.createdAt, forKey: "createdAt")
        encoder.encode(iBeaconDevice?.updatedAt, forKey: "updatedAt")
        encoder.encode(iBeaconDevice?.group, forKey: "group")
        encoder.encode(iBeaconDevice?.name, forKey: "name")
        encoder.encode(iBeaconDevice?.deviceType?.rawValue, forKey: "deviceType")
    }
}

open class EncodableMatch: NSObject, NSCoding {
    public var match: Match!
    public init(match: Match?) {
        self.match = match
    }
    required public init?(coder decoder: NSCoder) {
        self.match = Match()
        self.match?.id = decoder.decodeObject(forKey: "id") as? String
        self.match?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        let encodable_publication = decoder.decodeObject(forKey: "publication") as? EncodablePublication
        self.match?.publication = encodable_publication?.publication
        let encodable_subscription = decoder.decodeObject(forKey: "subscription") as? EncodableSubscription
        self.match?.subscription = encodable_subscription?.subscription
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(match?.id, forKey: "id")
        encoder.encode(match?.createdAt, forKey: "createdAt")
        encoder.encode(EncodablePublication(publication: match?.publication), forKey: "publication")
        encoder.encode(EncodableSubscription(subscription: match?.subscription), forKey: "subscription")
    }
}

open class EncodableMobileDevice: NSObject, NSCoding {
    public var mobileDevice: MobileDevice!
    public init(mobileDevice: MobileDevice?) {
        self.mobileDevice = mobileDevice
    }
    required public init?(coder decoder: NSCoder) {
        self.mobileDevice = MobileDevice()
        self.mobileDevice?.platform = decoder.decodeObject(forKey: "platform") as? String
        self.mobileDevice?.deviceToken = decoder.decodeObject(forKey: "deviceToken") as? String
        self.mobileDevice?.location = decoder.decodeObject(forKey: "location") as? Location
        self.mobileDevice?.id = decoder.decodeObject(forKey: "id") as? String
        self.mobileDevice?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.mobileDevice?.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Int64
        self.mobileDevice?.group = decoder.decodeObject(forKey: "group") as? [String]
        self.mobileDevice?.name = decoder.decodeObject(forKey: "name") as? String
        self.mobileDevice?.deviceType = DeviceType(rawValue: decoder.decodeObject(forKey: "deviceType") as! String)
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(mobileDevice?.platform, forKey: "platform")
        encoder.encode(mobileDevice?.deviceToken, forKey: "deviceToken")
        encoder.encode(mobileDevice?.location, forKey: "location")
        encoder.encode(mobileDevice?.id, forKey: "id")
        encoder.encode(mobileDevice?.createdAt, forKey: "createdAt")
        encoder.encode(mobileDevice?.updatedAt, forKey: "updatedAt")
        encoder.encode(mobileDevice?.group, forKey: "group")
        encoder.encode(mobileDevice?.name, forKey: "name")
        encoder.encode(mobileDevice?.deviceType?.rawValue, forKey: "deviceType")
    }
}

open class EncodablePinDevice: NSObject, NSCoding {
    public var pinDevice: PinDevice!
    public init(pinDevice: PinDevice?) {
        self.pinDevice = pinDevice
    }
    required public init?(coder decoder: NSCoder) {
        self.pinDevice = PinDevice()
        self.pinDevice?.location = decoder.decodeObject(forKey: "location") as? Location
        self.pinDevice?.id = decoder.decodeObject(forKey: "id") as? String
        self.pinDevice?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.pinDevice?.updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Int64
        self.pinDevice?.group = decoder.decodeObject(forKey: "group") as? [String]
        self.pinDevice?.name = decoder.decodeObject(forKey: "name") as? String
        self.pinDevice?.deviceType = DeviceType(rawValue: decoder.decodeObject(forKey: "deviceType") as! String)
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(pinDevice?.location, forKey: "location")
        encoder.encode(pinDevice?.id, forKey: "id")
        encoder.encode(pinDevice?.createdAt, forKey: "createdAt")
        encoder.encode(pinDevice?.updatedAt, forKey: "updatedAt")
        encoder.encode(pinDevice?.group, forKey: "group")
        encoder.encode(pinDevice?.name, forKey: "name")
        encoder.encode(pinDevice?.deviceType?.rawValue, forKey: "deviceType")
    }
}

open class EncodablePublication: NSObject, NSCoding {
    public var publication: Publication!
    public init(publication: Publication?) {
        self.publication = publication
    }
    required public init?(coder decoder: NSCoder) {
        self.publication = Publication()
        self.publication?.id = decoder.decodeObject(forKey: "id") as? String
        self.publication?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.publication?.worldId = decoder.decodeObject(forKey: "worldId") as? String
        self.publication?.deviceId = decoder.decodeObject(forKey: "deviceId") as? String
        self.publication?.topic = decoder.decodeObject(forKey: "topic") as? String
        self.publication?.range = decoder.decodeObject(forKey: "range") as? Double
        self.publication?.duration = decoder.decodeObject(forKey: "duration") as? Double
        self.publication?.properties = decoder.decodeObject(forKey: "properties") as? [String:String]
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(publication?.id, forKey: "id")
        encoder.encode(publication?.createdAt, forKey: "createdAt")
        encoder.encode(publication?.worldId, forKey: "worldId")
        encoder.encode(publication?.deviceId, forKey: "deviceId")
        encoder.encode(publication?.topic, forKey: "topic")
        encoder.encode(publication?.range, forKey: "range")
        encoder.encode(publication?.duration, forKey: "duration")
        encoder.encode(publication?.properties, forKey: "properties")
    }
}

open class EncodableSubscription: NSObject, NSCoding {
    public var subscription: Subscription!
    public init(subscription: Subscription?) {
        self.subscription = subscription
    }
    required public init?(coder decoder: NSCoder) {
        self.subscription = Subscription()
        self.subscription?.id = decoder.decodeObject(forKey: "id") as? String
        self.subscription?.createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        self.subscription?.worldId = decoder.decodeObject(forKey: "worldId") as? String
        self.subscription?.deviceId = decoder.decodeObject(forKey: "deviceId") as? String
        self.subscription?.topic = decoder.decodeObject(forKey: "topic") as? String
        self.subscription?.selector = decoder.decodeObject(forKey: "selector") as? String
        self.subscription?.range = decoder.decodeObject(forKey: "range") as? Double
        self.subscription?.duration = decoder.decodeObject(forKey: "duration") as? Double
        self.subscription?.pushers = decoder.decodeObject(forKey: "pushers") as? [String]
    }      
    public func encode(with encoder: NSCoder) {
        encoder.encode(subscription?.id, forKey: "id")
        encoder.encode(subscription?.createdAt, forKey: "createdAt")
        encoder.encode(subscription?.worldId, forKey: "worldId")
        encoder.encode(subscription?.deviceId, forKey: "deviceId")
        encoder.encode(subscription?.topic, forKey: "topic")
        encoder.encode(subscription?.selector, forKey: "selector")
        encoder.encode(subscription?.range, forKey: "range")
        encoder.encode(subscription?.duration, forKey: "duration")
        encoder.encode(subscription?.pushers, forKey: "pushers")
    }
}

