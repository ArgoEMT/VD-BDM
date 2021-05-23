//
//  ViewController.swift
//  VD-BDM
//
//  Created by Victor Daumas on 24/02/2021.
//

import UIKit
import CoreData

class ViewController: UIViewController {
	var animes:[NSManagedObject] = []
	
	let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "AnimesList"
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated) 
		getAllitems()
		tableView.reloadData()
	}
	
	func getAllitems() {
		do {
		animes = try context.fetch(Anime.fetchRequest())
		}catch {}
	}
	
	
	func deleteAnime(item: Anime){
		context.delete(item)
		do {
			try context.save()
		}catch {
			
		}
	}

	func updateAnime(item : Anime, newTitre: String, newNote: Int, newVuLe: Date, newStatus: String)
	{
		item.titre = newTitre
		item.vuLe = newVuLe
		item.note = Int16(newNote)
		item.status = newStatus
		do {
			try context.save()
			
		}catch {
			
		}
	}
	
	@IBAction func addAnime(_ sender: Any) {
		
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "addAnime"{
			let VCDestination = segue.destination as! AddItemViewController
		}
	}
	
	@IBOutlet weak var tableView: UITableView!
	
}

extension ViewController : UITableViewDataSource {
	func tableView(_ tableVIew: UITableView, numberOfRowsInSection section: Int) -> Int{
		return animes.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let anime = animes[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		cell.textLabel?.text = anime.value(forKey: "titre") as? String
		return cell
	}
}




