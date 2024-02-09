//
//  ProfileManager.swift
//  E-Commerce
//
//  Created by Moha Maanka on 12/18/23.
//

import Foundation


enum ProfileManager : Int , CaseIterable {
    case home
    case order
    case message
    case favorite
    case history
    case request
    case contact
    case list
    case setting
    case logout
    
    var title: String {
        switch self {
        case .home : return "Home"
        case .order: return "My Order"
        case .message: return "Message"
        case .favorite : return "Favorite"
        case .history : return "Browsing History"
        case .request : return "Request for Quotation"
        case .contact : return "Contact"
        case .list : return "My List"
        case .setting : return "Setting"
        case .logout : return "Logout"
        }
    } 
    var imageName: String {
        switch self {
        case .home : return "house"
        case .order: return "square.and.pencil"
        case .message: return "message"
        case .favorite : return "heart"
        case .history : return "clock.arrow.circlepath"
        case .request : return "dot.circle.and.cursorarrow"
        case .contact : return "phone"
        case .list : return "list.clipboard.fill"
        case .setting : return "gearshape"
        case .logout : return "power"
        }
    }
    
    
    
}
