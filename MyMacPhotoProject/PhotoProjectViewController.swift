//
//  PhotoProjectViewController.swift
//  MyMacPhotoProject
//
//  Created by Jeff Kelley on 12/15/17.
//Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Cocoa
import PhotosUI

@available(OSXApplicationExtension 10.13, *)
class PhotoProjectViewController: NSViewController, PHProjectExtensionController {
    
    var projectExtensionContext: PHProjectExtensionContext? {
        get {
            return extensionContext as? PHProjectExtensionContext
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    // MARK: - PHProjectExtensionController
    
    var supportedProjectTypes: [PHProjectTypeDescription] {
        let projectTypes = [PHProjectTypeDescription]()
        // Fill the array with PHProjectTypeDescription instances representing you project types.
        // If you don't want to support custom project types set PHProjectExtensionDefinesProjectTypes to NO in the extension's Info.plist NSExtensionAttributes dictionary.
        return projectTypes
    }
    
    func beginProject(with extensionContext: PHProjectExtensionContext, projectInfo: PHProjectInfo, completion: @escaping (Error?) -> Void) {
        DispatchQueue.main.async {
            // do initialization here
            completion(nil)
        }
    }
    
    func resumeProject(with extensionContext: PHProjectExtensionContext, completion: @escaping (Error?) -> Void) {
        DispatchQueue.main.async {
            // do initialization here
            completion(nil)
        }
    }
    
    func finishProject(completionHandler completion: @escaping () -> Void) {
        // do any finalization here
        completion()
    }
}
