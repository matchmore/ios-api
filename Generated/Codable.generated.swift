// Generated using Sourcery 0.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


class EncodableDevice: NSObject, NSCoding {
    var device: Device?
    init(device: Device?) {
        self.device = device
    }
    required init?(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as? String
        let createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        let updatedAt = decoder.decodeObject(forKey: "updatedAt") as? Int64

        guard let encodable_group = decoder.decodeObject(forKey: "group") as? [EncodableString?] else { return nil }
        let group = encodable_group.flatMap({ $0.string? })

        let name = decoder.decodeObject(forKey: "name") as? String
        let deviceType = decoder.decodeObject(forKey: "deviceType") as? DeviceType

    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(device?.id, forKey: "id")
        encoder.encode(device?.createdAt, forKey: "createdAt")
        encoder.encode(device?.updatedAt, forKey: "updatedAt")
        let encoded_group = device?.group.map({ return EncodableString?(string?: $0) })
        encoder.encode(encoded_group, forKey: "group")

        encoder.encode(device?.name, forKey: "name")
        encoder.encode(device?.deviceType, forKey: "deviceType")
    }
}

class EncodableIBeaconDevice: NSObject, NSCoding {
    var iBeaconDevice: IBeaconDevice?
    init(iBeaconDevice: IBeaconDevice?) {
        self.iBeaconDevice = iBeaconDevice
    }
    required init?(coder decoder: NSCoder) {
        let proximityUUID = decoder.decodeObject(forKey: "proximityUUID") as? String
        let major = decoder.decodeObject(forKey: "major") as? Int32
        let minor = decoder.decodeObject(forKey: "minor") as? Int32

    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(iBeaconDevice?.proximityUUID, forKey: "proximityUUID")
        encoder.encode(iBeaconDevice?.major, forKey: "major")
        encoder.encode(iBeaconDevice?.minor, forKey: "minor")
    }
}

class EncodableMatch: NSObject, NSCoding {
    var match: Match?
    init(match: Match?) {
        self.match = match
    }
    required init?(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as? String
        let createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64

        let encodable_publication = decoder.decodeObject(forKey: "publication") as? EncodablePublication
        let publication = encodable_publication?.publication


        let encodable_subscription = decoder.decodeObject(forKey: "subscription") as? EncodableSubscription
        let subscription = encodable_subscription?.subscription


    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(match?.id, forKey: "id")
        encoder.encode(match?.createdAt, forKey: "createdAt")
        encoder.encode(EncodablePublication(publication: match?.publication), forKey: "publication")
        encoder.encode(EncodableSubscription(subscription: match?.subscription), forKey: "subscription")
    }
}

class EncodableMobileDevice: NSObject, NSCoding {
    var mobileDevice: MobileDevice?
    init(mobileDevice: MobileDevice?) {
        self.mobileDevice = mobileDevice
    }
    required init?(coder decoder: NSCoder) {
        let platform = decoder.decodeObject(forKey: "platform") as? String
        let deviceToken = decoder.decodeObject(forKey: "deviceToken") as? String
        let location = decoder.decodeObject(forKey: "location") as? Location

    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(mobileDevice?.platform, forKey: "platform")
        encoder.encode(mobileDevice?.deviceToken, forKey: "deviceToken")
        encoder.encode(mobileDevice?.location, forKey: "location")
    }
}

class EncodablePinDevice: NSObject, NSCoding {
    var pinDevice: PinDevice?
    init(pinDevice: PinDevice?) {
        self.pinDevice = pinDevice
    }
    required init?(coder decoder: NSCoder) {
        let location = decoder.decodeObject(forKey: "location") as? Location

    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(pinDevice?.location, forKey: "location")
    }
}

class EncodablePublication: NSObject, NSCoding {
    var publication: Publication?
    init(publication: Publication?) {
        self.publication = publication
    }
    required init?(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as? String
        let createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        let worldId = decoder.decodeObject(forKey: "worldId") as? String
        let deviceId = decoder.decodeObject(forKey: "deviceId") as? String
        let topic = decoder.decodeObject(forKey: "topic") as? String
        let range = decoder.decodeObject(forKey: "range") as? Double
        let duration = decoder.decodeObject(forKey: "duration") as? Double

        guard let encodable_properties = decoder.decodeObject(forKey: "properties") as? [EncodableString:String?] else { return nil }
        let properties = encodable_properties.flatMap({ $0.string:String? })


    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(publication?.id, forKey: "id")
        encoder.encode(publication?.createdAt, forKey: "createdAt")
        encoder.encode(publication?.worldId, forKey: "worldId")
        encoder.encode(publication?.deviceId, forKey: "deviceId")
        encoder.encode(publication?.topic, forKey: "topic")
        encoder.encode(publication?.range, forKey: "range")
        encoder.encode(publication?.duration, forKey: "duration")
        let encoded_properties = publication?.properties.map({ return EncodableString:String?(string:String?: $0) })
        encoder.encode(encoded_properties, forKey: "properties")

    }
}

class EncodableSubscription: NSObject, NSCoding {
    var subscription: Subscription?
    init(subscription: Subscription?) {
        self.subscription = subscription
    }
    required init?(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as? String
        let createdAt = decoder.decodeObject(forKey: "createdAt") as? Int64
        let worldId = decoder.decodeObject(forKey: "worldId") as? String
        let deviceId = decoder.decodeObject(forKey: "deviceId") as? String
        let topic = decoder.decodeObject(forKey: "topic") as? String
        let selector = decoder.decodeObject(forKey: "selector") as? String
        let range = decoder.decodeObject(forKey: "range") as? Double
        let duration = decoder.decodeObject(forKey: "duration") as? Double

        guard let encodable_pushers = decoder.decodeObject(forKey: "pushers") as? [EncodableString?] else { return nil }
        let pushers = encodable_pushers.flatMap({ $0.string? })


    }      
    func encode(with encoder: NSCoder) {
        encoder.encode(subscription?.id, forKey: "id")
        encoder.encode(subscription?.createdAt, forKey: "createdAt")
        encoder.encode(subscription?.worldId, forKey: "worldId")
        encoder.encode(subscription?.deviceId, forKey: "deviceId")
        encoder.encode(subscription?.topic, forKey: "topic")
        encoder.encode(subscription?.selector, forKey: "selector")
        encoder.encode(subscription?.range, forKey: "range")
        encoder.encode(subscription?.duration, forKey: "duration")
        let encoded_pushers = subscription?.pushers.map({ return EncodableString?(string?: $0) })
        encoder.encode(encoded_pushers, forKey: "pushers")

    }
}

