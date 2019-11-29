//
//  UIImageView+AsyncLoading.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import UIKit

private var lastURLKey: Void?
private let imageCache = NSCache<NSString, UIImage>()

public extension UIImageView {
    
    private var imageURL: URL? {
        get {
            return objc_getAssociatedObject(self, &lastURLKey) as? URL
        }
        set {
            objc_setAssociatedObject(self, &lastURLKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func loadImage(url: URL?) {
        guard let url = url else { return }
        
        imageURL = url
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            guard let self = self else { return }
            
            if let cachedImage = imageCache.object(forKey: url.absoluteString as NSString) {
                guard url == self.imageURL else { return }
                DispatchQueue.main.async {
                    self.image = cachedImage
                }
                return
            }
            
            DispatchQueue.main.async {
                self.image = nil
            }
            
            guard let data = try? Data(contentsOf: url) else { return }
            
            guard let image = UIImage(data: data) else { return }
            imageCache.setObject(image, forKey: url.absoluteString as NSString)
            
            guard url == self.imageURL else { return }
            DispatchQueue.main.async {
                UIView.transition(with: self,
                                  duration: 0.3,
                                  options: .transitionCrossDissolve,
                                  animations: { self.image = image },
                                  completion: nil)
            }
        }
    }
    
}
