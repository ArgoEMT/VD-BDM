//
//  ImageAnime+CoreDataProperties.swift
//  VD-BDM
//
//  Created by Victor Daumas on 03/03/2021.
//
//

import Foundation
import CoreData


extension ImageAnime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageAnime> {
        return NSFetchRequest<ImageAnime>(entityName: "ImageAnime")
    }

    @NSManaged public var dateCrea: Date?
    @NSManaged public var imageData: Data?
    @NSManaged public var anime: Anime?

}

extension ImageAnime : Identifiable {

}
