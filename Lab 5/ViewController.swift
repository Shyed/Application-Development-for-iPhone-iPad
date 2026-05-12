/*
=====================================================
 PROGRAM: ViewController.swift
 PROJECT: Lab 5

 DESCRIPTION:
 This ViewController manages camera functionality
 within the iOS application.

 FEATURES:
 - Opens device camera
 - Captures photos using UIImagePickerController
 - Displays selected image in UIImageView
 - Handles image picker cancellation

 FRAMEWORKS:
 - UIKit

 NOTES:
 - Requires camera permissions in Info.plist
 - Uses UIImagePickerControllerDelegate
 - Designed for beginner iOS development practice

Author: Sheila Demonteverde | 12/8/2020
Updated Dev Notes: 05/12/2026 - SD
=====================================================
*/

import UIKit

class ViewController: UIViewController 
{
    /*-- UI COMPONENTS --*/
    @IBOutlet var imageView: UIImageView! // Image view for displaying captured image

    @IBOutlet var button: UIButton! // Button used to launch camera

    /*-- VIEW DID LOAD --*/
    override func viewDidLoad() 
    {
        super.viewDidLoad()

        // Set image view background color
        imageView.backgroundColor = .secondarySystemBackground

        // Customize button appearance
        button.backgroundColor = .systemBlue
        button.setTitle("Take Picture", for: .normal)
        button.setTitleColor(.white, for: .normal)
    }

    /*-- CAMERA BUTTON ACTION --*/
    @IBAction func didTapButton ()
    {
        let picker = UIImagePickerController() // Create image picker controller
        picker.sourceType = .camera // Set source to device camera
        picker.delegate = self // Assign delegate
        present(picker, animated: true) // Present camera interface
    }
}

/*-- IMAGE PICKER EXTENSION --*/
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate 
{
     /*-- CANCEL IMAGE PICKER --*/
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) 
    {
        picker.dismiss(animated: true, completion: nil) // Close camera interface
    }

    /*-- HANDLE CAPTURED IMAGE --*/
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) 
    {
        // Close image picker after selection
        picker.dismiss(animated: true, completion: nil)

        // Retrieve selected image safely
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage else{
                return
        }

        // Display image in image view
        imageView.image = image
    }
}

