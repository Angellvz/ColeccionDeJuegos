//
//  JuegosViewController.swift
//  VenturaColeccionDeJuegos
//
//  Created by Mac 13 on 17/05/23.
//

import UIKit

class JuegosViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    var imagePicker=UIImagePickerController()

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let imagenSeleccionada = info[.originalImage] as? UIImage
        ImageView.image = imagenSeleccionada
        imagePicker.dismiss(animated: true, completion:nil)
    }
    
    
    
    @IBAction func fotosTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker,animated:true, completion: nil)
    }
    
    
    @IBAction func camaraTapped(_ sender: Any) {
    }
    
    @IBAction func agregarTapped(_ sender: Any) {
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var tituloTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate=self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
