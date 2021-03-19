//
//  Logger.swift
//  LibIrmakFile
//
//  Created by Irmak Ozonay on 18.03.2021.
//

import Foundation
import QuickLook
import ARKit

public class Logger : NSObject, QLPreviewControllerDataSource {
    
    var modelURL: URL?
    
    public static let shared = Logger()
    
    public func printLog() {
        print("printLog")
    }
    
    public func downloadUSDZFile(finished: @escaping () -> Void) {
        print("start download")
        let downloadTask = URLSession.shared.downloadTask(with: URL(string: "https://developer.apple.com/augmented-reality/quick-look/models/plantpot/pot_plant.usdz")!) { [self] urlOrNil, responseOrNil, errorOrNil in
            guard let fileURL = urlOrNil else { return }
            do {
                let documentsURL = try
                    FileManager.default.url(for: .documentDirectory,
                                            in: .userDomainMask,
                                            appropriateFor: nil,
                                            create: false)
                print("fileURL: \(fileURL)")
                let savedURL = documentsURL.appendingPathComponent("test_3dmodel.usdz")
                removeFile(fileUrl: savedURL)
                try FileManager.default.moveItem(at: fileURL, to: savedURL)
                self.modelURL = savedURL
                print("savedURL: \(savedURL)")
                DispatchQueue.main.async {
                    self.presentAR()
                }
            } catch {
                print ("file error: \(error)")
            }
        }
        downloadTask.resume()
    }
    
    func removeFile(fileUrl: URL){
        if FileManager.default.fileExists(atPath: fileUrl.path) {
            do{
                try FileManager.default.removeItem(atPath: fileUrl.path)
            } catch{
                print("file manager cant removeitem")
            }
        }
    }
    
    func presentAR(){
        guard modelURL != nil else { return }
        let previewController = QLPreviewController()
        previewController.dataSource = self
        UIApplication.shared.keyWindow?.rootViewController?.present(previewController, animated: true, completion: nil)
    }
    
    public func numberOfPreviewItems(in controller: QLPreviewController) -> Int { return 1 }
    
    public func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        let url = self.modelURL!
        return url as QLPreviewItem
    }

}
