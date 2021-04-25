//
//  ViewController.swift
//  Timer
//
//  Created by Ali Köse on 20.03.2021.
//

import UIKit
import AVFoundation // izin kotnrol kütüphnaesi
var timer : Timer?
let timee = 2.5

class ViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //timer = Timer.scheduledTimer(withTimeInterval: timee, repeats: true, block: timerTrick)
        timer = Timer.scheduledTimer(timeInterval: timee, target: self, selector: #selector(timerTrick), userInfo: nil, repeats: true)
        print("Calissana oglumm")
    
    }
    
    
    var counter = 0
   @objc func  timerTrick()  {
        print("Selamlar")
        counter += 1
        if counter == 3 {
            timer?.invalidate()
            print("NE bakirsen oglim vakit doldi ha")
        }
    }
    
    
    @IBAction func btnOpenCam(_ sender: Any) { openCamera() }
    
    // Resmi Yakalamak için
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Image i tutmuş oldun.
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imgView.image = image
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func CameraCheck(){
        let state = AVCaptureDevice.authorizationStatus(for: .video)
        switch state {
        case .notDetermined: // hiç istek yoksa önce kamera açma işlemi ypapmaliyiz
            openCamera()
        case .restricted:
            showAlert()
        case .denied:
            showAlert()
        case .authorized:
            openCamera()
            
        default:
            showAlert()
        }
    }
    
    
    
    func  showAlert() {
        let alert = UIAlertController(title: "Kamera erisim yok", message: "Ayarlardan erisim acmalsiniz", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Ayarlar", style: .default, handler: AyarlarAc ))

        present(alert, animated: true, completion: nil)
    }
    
    
    
    func AyarlarAc(alert : UIAlertAction) {
        guard let ayarlar = URL(string: UIApplication.openSettingsURLString) else {return}
        if UIApplication.shared.canOpenURL(ayarlar){
            // Versiyon kontrolü
            if #available(iOS 10.0, *){
                UIApplication.shared.open(ayarlar, completionHandler: nil)
            }
            else{
                UIApplication.shared.canOpenURL(ayarlar)
            }
            
        }
    }
    
    
    
    func openCamera(){
        if UIImagePickerController.isSourceTypeAvailable(.camera){ // KAmera Var mı kontorlü
            // KAmera açmak
             let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
            // Bu noktadan sonra çekilen foto
            imagePicker.delegate = self
            // UI NAvigation controller delegate de ihtiya çduyuyor.
        }
    }
    
    
}

