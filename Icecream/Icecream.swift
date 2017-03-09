//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor: String) -> [String] {
        var namesResult: [String] = []
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == forFlavor {
                namesResult.append(key)
            }
        }
        return namesResult
    }
    
    
    
    
    
    // 3.
    func count(forFlavor: String) -> Int {
        var namesResult: [String] = []
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == forFlavor {
                namesResult.append(key)
            }
        }
        
        return namesResult.count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        return favoriteFlavorsOfIceCream[forPerson]
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        var replaceResult: Bool = false
        for (key,value) in favoriteFlavorsOfIceCream {
            if key == person {
                if value == flavor {
                    replaceResult = false
                } else {
                    favoriteFlavorsOfIceCream[person] = flavor
                    replaceResult = true
                }
            }
        }
    return replaceResult
    }

    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        var removeResult: Bool = false
        for (key, _) in favoriteFlavorsOfIceCream {
            if key == person {
                favoriteFlavorsOfIceCream[person] = nil
                removeResult = true
            } else {
                removeResult = false
            }
        }
        return removeResult
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        var addResult: Bool = false
        if(favoriteFlavorsOfIceCream[person]) == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            addResult = true
        } else {
            addResult = false
        }
        
        return addResult
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var attendeeArray: [String] = []
        var attendeeList: String = ""
        
        for(key, value) in favoriteFlavorsOfIceCream {
            attendeeArray.append("\(key) likes \(value)")
        }
        
        let attendeeArraySorted = Array(attendeeArray).sorted()
        
        for attendees in attendeeArraySorted {
            if attendees != attendeeArraySorted.last {
                attendeeList += (attendees + "\n")
            } else {
                attendeeList += attendees
            }
        }
        
      return attendeeList
    }
    
    
    
    
    
    
    

}
