    //
//  CoreDataStack.swift
//  TodoApp
//
//  Created by Andrea Dancek on 2020-05-17.
//  Copyright © 2020 Melisa Garcia. All rights reserved.
//

import Foundation
import CoreData
    
    class CoreDataStack{
        var container: NSPersistentContainer{
            let container = NSPersistentContainer(name: "TodoApp")
            container.loadPersistentStores { ( description, error) in
                guard error == nil else {
                    print("Error: \(error!)")
                    return
                }
        }
            
        return container
    }
    var managedContext: NSManagedObjectContext{
        return container.viewContext
    }
}
        
    
