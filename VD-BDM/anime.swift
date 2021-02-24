//
//  anime.swift
//  VD-BDM
//
//  Created by Victor Daumas on 24/02/2021.
//

import Foundation

class Anime {
	var titre : String;
	var vuLe : Date = Date();
	var status:Status;
	
	init(titre: String, vuLe: Date)
	{
		self.titre = titre;
		self.vuLe = vuLe;
		status = Status.enCours;
	}
}

enum Status {
	case enCours
	case vu
	case enPause
	case stop
	
}
