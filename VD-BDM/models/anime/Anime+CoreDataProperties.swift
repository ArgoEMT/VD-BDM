//
//  Anime+CoreDataProperties.swift
//  VD-BDM
//
//  Created by Victor Daumas on 03/03/2021.
//
//

import Foundation
import CoreData


extension Anime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Anime> {
        return NSFetchRequest<Anime>(entityName: "Anime")
    }

    @NSManaged public var image: Data?
    @NSManaged public var note: Int16
    @NSManaged public var status: String?
    @NSManaged public var titre: String?
    @NSManaged public var vuLe: Date?
    @NSManaged public var imageAnime: ImageAnime?
    @NSManaged public var platforms: NSSet?

}

// MARK: Generated accessors for platforms
extension Anime {

    @objc(addPlatformsObject:)
    @NSManaged public func addToPlatforms(_ value: StreamingPlarform)

    @objc(removePlatformsObject:)
    @NSManaged public func removeFromPlatforms(_ value: StreamingPlarform)

    @objc(addPlatforms:)
    @NSManaged public func addToPlatforms(_ values: NSSet)

    @objc(removePlatforms:)
    @NSManaged public func removeFromPlatforms(_ values: NSSet)

}

extension Anime : Identifiable {

}
