//
//  AddItemViewController.swift
//  VD-BDM
//
//  Created by Victor Daumas on 31/03/2021.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController {
	var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	func createAnime(titre:String, date: Date, note: Int, status: String)
	{
		let newAnime = Anime(context: context)
		newAnime.titre = titre
		newAnime.vuLe = date
		newAnime.note = Int16(note)
		newAnime.status = status
		
		do {
			try context.save()
		}catch {
			
		}
	}
    
	@IBAction func addAnimeButton(_ sender: Any) {
		
		print(titreTextField.text!)
		print(noteTextField.text!)
		print(datePicker.date)
		self.createAnime(titre: titreTextField.text!, date: datePicker.date, note: Int(noteTextField.text!) ?? 5, status: "Terminé")
		navigationController?.popViewController(animated: true)
	}
	
	
	@IBOutlet weak var statusPickerView: UIPickerView!
	
	@IBOutlet weak var titreTextField: UITextField!
	
	@IBOutlet weak var noteTextField: UITextField!
	
	@IBOutlet weak var datePicker: UIDatePicker!
	

}
