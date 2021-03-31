//
//  StreamingPlarform+CoreDataProperties.swift
//  VD-BDM
//
//  Created by Victor Daumas on 03/03/2021.
//
//

import Foundation
import CoreData


extension StreamingPlarform {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StreamingPlarform> {
        return NSFetchRequest<StreamingPlarform>(entityName: "StreamingPlarform")
    }

    @NSManaged public var nom: String?
    @NSManaged public var animes: NSSet?

}

// MARK: Generated accessors for animes
extension StreamingPlarform {

    @objc(addAnimesObject:)
    @NSManaged public func addToAnimes(_ value: Anime)

    @objc(removeAnimesObject:)
    @NSManaged public func removeFromAnimes(_ value: Anime)

    @objc(addAnimes:)
    @NSManaged public func addToAnimes(_ values: NSSet)

    @objc(removeAnimes:)
    @NSManaged public func removeFromAnimes(_ values: NSSet)

}

extension StreamingPlarform : Identifiable {

}
