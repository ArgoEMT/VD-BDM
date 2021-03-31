//
//  AddItemViewController.swift
//  VD-BDM
//
//  Created by Victor Daumas on 31/03/2021.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
		self.statusPicker.delegate = self
		self.statusPicker.dataSource = self
		pickerData = ["Terminé", "En cours", "A voir", "En pause", "Abandonné"]
    }
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// Number of columns of data
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	// The number of rows of data
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return pickerData.count
	}
	var status : String = ""
	// The data to return fopr the row and component (column) that's being passed in
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		
		status = pickerData[row]
	return pickerData[row]
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
		
		if (titreTextField.text!.isEmpty || noteTextField.text!.isEmpty)
		{
			let alert = UIAlertController(title: "Certain champs sont vides", message: "Veuillez remplir tous les chmaps pour continuer", preferredStyle: .alert)
			
			alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//			alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
			
			self.present(alert, animated: true)
		}
		else
		{
			self.createAnime(titre: titreTextField.text!, date: datePicker.date, note: Int(noteTextField.text!) ?? 5, status: "Status")
			navigationController?.popViewController(animated: true)
		}
		
	}
	
	var pickerData: [String] = [String]()
	
	@IBOutlet weak var statusPicker: UIPickerView!
	
	@IBOutlet weak var titreTextField: UITextField!
	
	@IBOutlet weak var noteTextField: UITextField!
	
	@IBOutlet weak var datePicker: UIDatePicker!
	

}
