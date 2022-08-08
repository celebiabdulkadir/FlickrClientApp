import Foundation
struct Photo: Codable {
    let id, owner, secret, server: String?
    let farm: Int?
    let title: String?
    let ispublic, isfriend, isfamily: Int?
    let license: String?
    let welcomeDescription: Description?
    let dateupload, datetaken: String?
    let datetakengranularity: Int?
    let datetakenunknown, ownername, iconserver: String?
    let iconfarm: Int?
    let urlN: String?
    let heightN, widthN: Int?
    let urlZ: String?
    let heightZ, widthZ: Int?

    enum CodingKeys: String, CodingKey {
        case id, owner, secret, server, farm, title, ispublic, isfriend, isfamily, license
        case welcomeDescription = "description"
        case dateupload, datetaken, datetakengranularity, datetakenunknown, ownername, iconserver, iconfarm
        case urlN = "url_n"
        case heightN = "height_n"
        case widthN = "width_n"
        case urlZ = "url_z"
        case heightZ = "height_z"
        case widthZ = "width_z"
    }
}

extension Photo {
    var buddyIconUrl: String? {
    if let iconserver = iconserver,
       let iconfarm = iconfarm,
       let nsid = owner,
       NSString(string: iconserver).intValue > 0 {
           
        return "http://farm\(iconfarm).staticflickr.com/\(iconserver)/buddyicons/\(nsid).jpg"
        }else {
             return "https://www.flickr.com/images/buddyicon.gif"
            }
        }
}

// MARK: - Description
struct Description: Codable {
    let content: String

    enum CodingKeys: String, CodingKey {
        case content = "_content"
    }
}

