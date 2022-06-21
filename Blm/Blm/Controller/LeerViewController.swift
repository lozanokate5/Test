//
//  LeerViewController.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import UIKit
import AVFoundation

class LeerViewController: UIViewController {

    @IBOutlet weak var squareImageView: UIImageView!
 
    let captureSession = AVCaptureSession()
    var previewLayer = AVCaptureVideoPreviewLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      /*  DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else {
                print("Your device is not aplicable")
                return
            }
            let videoInput: AVCaptureDeviceInput
            do{
                videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
            }catch{
                print("your device cant give video")
                return
            }
            let metadataOutput = AVCaptureMetadataOutput()
            
            if (self.captureSession.canAddOutput(metadataOutput)){
               self.captureSession.addOutput(metadataOutput)
                metadataOutput.metadataObjectTypes = [.ean8, .ean13, .pdf417]
            }else{
                return
            }
            self.previewLayer = AVCaptureVideoPreviewLayer(session: self.captureSession)
            self.previewLayer.frame = self.view.layer.bounds
            self.previewLayer.videoGravity = .resizeAspectFill
            self.view.layer.addSublayer(self.previewLayer)
            print("Running")
            self.captureSession.startRunning()
        })*/
    }
    
}
/*extension LeerViewController: AVCaptureMetadataOutputObjectsDelegate {
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if let first = metadataObjects.first{
            guard let readableObject  = first as? AVMetadataMachineReadableCodeObject else {
                return
            }
            guard let stringValue = readableObject.stringValue else {
                return
            }
            found(code: stringValue)
        }else{
            print("not able to read the code")
        }
    }
    func found(code : String){
        print(code)
    }
}*/


















