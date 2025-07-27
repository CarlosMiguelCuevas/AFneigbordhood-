//
//  HomeViewModel.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

//TODO: here I'll careate theview model, but for now I will use it to set the default value for models as extension functions

extension Events {
    static let sampleEvents = [
        Events(title: "Noche Mexicana Event", description: "Vive con nosotros esta noche mexicana, trae comida", date: "2025-09-15"),
        Events(title: "Community Meeting", description: "Discuss neighborhood issues", date: "2025-10-15"),
        Events(title: "Yard Sale", description: "Neighborhood yard sale event", date: "2025-11-05")
    ]
}

extension Message {
    static let sampleMessages = [
        Message(title: "Pool Maintenance Reminder", description: "The pool will be closed for maintenance on October 1st."),
        Message(title: "Trash pickup", description: "Remember to take out your tras can"),
        Message(title: "Reparacion de baches", description: "Ya se repararon los baches en gioconda y calle 5")
    ]
}

extension CommitteeMamber {
    static let sampleMembers = [
        CommitteeMamber(name: "Joe", role: .president),
        CommitteeMamber(name: "Lupita Verduzco", role: .secretary),
        CommitteeMamber(name: "Eduardo", role: .treasurer)
    ]
}
