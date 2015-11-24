//
//  Usuario+CoreDataProperties.swift
//  semFilaLogin2
//
//  Created by Student on 11/24/15.
//  Copyright © 2015 GENiOS. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Usuario {

    @NSManaged var nome: String?
    @NSManaged var email: String?
    @NSManaged var senha: String?

}
