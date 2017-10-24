//
//  ViewController.swift
//  TestPhotoView
//
//  Created by DerekYang on 2017/10/16.
//  Copyright © 2017年 LBD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mediaArray = [Media]()
  
    var browser: MediaBrowser!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mediaArray = self.webPhotos()
        
    }
    @IBAction func phoneAlbumClick(_ sender: UIButton) {
        self.showImgPickVC(delegae: self)
    }
    @IBAction func webAlbumClick(_ sender: UIButton)
    {
        browser = MediaBrowser(delegate: self)
        browser.displayActionButton = true
        browser.displayMediaNavigationArrows = true
        browser.displaySelectionButtons = true
        browser.alwaysShowControls = true
        browser.zoomPhotosToFill = true
        browser.enableGrid = true
        browser.startOnGrid = true
        browser.enableSwipeToDismiss = true
        browser.autoPlayOnAppear = true
        browser.cachingImageCount = 2
        browser.setCurrentIndex(at: 2)
        
        
        if (0 == 0) {
            self.navigationController?.pushViewController(browser, animated: true)
        } else {
            let nc = UINavigationController(rootViewController: browser)
            nc.modalTransitionStyle = .crossDissolve
            self.present(nc, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webMediaPhoto(url: String, caption: String?) -> Media {
        guard let validUrl = URL(string: url) else {
            fatalError("Image is nil")
        }
        
        var photo = Media()
        if let _caption = caption {
            photo = Media(url: validUrl, caption: _caption)
        } else {
            photo = Media(url: validUrl)
        }
        return photo
    }
    
    
    func webPhotos() -> [Media] {
        var photos = [Media]()
        
        var photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/03/11/22/laptop-2575689_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/05/22/43/sticky-2586309_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/07/26/11/18/coffee-2541286_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/01/01/16/computer-2562560_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/01/00/00/peopl-2562135_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/06/10/19/people-2590997_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/02/09/18/40/robbe-2053165_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/03/27/21/31/money-2180330_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/01/20/15/12/orange-1995079_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/03/07/13/02/thought-2123970_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2014/02/23/09/17/thinking-272677_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/05/15/17/43/cup-2315563_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/08/02/14/26/winter-landscape-2571788_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/01/05/11/16/icicle-1954827_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2014/12/13/15/42/alaska-566722_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2013/02/13/12/06/greenland-81241_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/01/08/13/51/greenland-1963003_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2016/07/30/16/17/skull-1557446_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/03/15/21/16/checkmated-2147538_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/03/04/14/19/helicopter-2116170_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/02/11/10/33/spaceship-2057420_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/03/13/21/09/ring-of-fire-2141192_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2012/04/13/20/40/ring-33573_1280.png", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/02/02/22/08/tunnel-2033983_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2017/02/04/12/51/labyrinth-2037286_1280.jpg", caption: nil)
        photos.append(photo)
        
        photo = webMediaPhoto(url: "https://cdn.pixabay.com/photo/2016/12/20/22/47/harley-1921700_1280.jpg", caption: nil)
        photos.append(photo)
        
        return photos
    }
    
    func localMediaPhoto(imageName: String, caption: String) -> Media {
        guard let image = UIImage(named: imageName) else {
            fatalError("Image is nil")
        }
        
        let photo = Media(image: image, caption: caption)
        return photo
    }
}

extension ViewController: MediaBrowserDelegate {
    func thumbnail(for mediaBrowser: MediaBrowser, at index: Int) -> Media {
        if index < self.mediaArray.count {
            return self.mediaArray[index]
        }
        return self.localMediaPhoto(imageName: "MotionBookIcon", caption: "ThumbPhoto at index is wrong")
    }
    
    func media(for mediaBrowser: MediaBrowser, at index: Int) -> Media {
        if index < mediaArray.count {
            return mediaArray[index]
        }
        return self.localMediaPhoto(imageName: "MotionBookIcon", caption: "Photo at index is Wrong")
    }
    
    func numberOfMedia(in mediaBrowser: MediaBrowser) -> Int {
        return self.mediaArray.count
    }
    
    func isMediaSelected(at index: Int, in mediaBrowser: MediaBrowser) -> Bool {
        return self.mediaArray[index].isSelected
        
    }
    
    func didDisplayMedia(at index: Int, in mediaBrowser: MediaBrowser) {
        print("Did start viewing photo at index \(index)")
        
    }
    
    func mediaDid(selected: Bool, at index: Int, in mediaBrowser: MediaBrowser) {
        self.mediaArray[index].isSelected = selected
    }
    
    func actionButtonPressed(at photoIndex: Int, in mediaBrowser: MediaBrowser, sender: Any?)
    {
        let counts = self.mediaArray.count
        if(mediaBrowser.gridVisible) {
            for i in 0 ..< counts {
                //由後往前刪
                let targetIndex = counts - (i + 1)
                let media = self.mediaArray[targetIndex]
                if(media.isSelected) {
                    print("remove \(targetIndex)")
                    self.mediaArray.remove(at: targetIndex)
                }
            }
        } else {
            print("remove \(photoIndex)")
            self.mediaArray.remove(at: photoIndex)
        }
        
        if(self.mediaArray.count != counts) {
            DispatchQueue.main.async {
                self.browser.reloadData()
            }
        }
    }
    
  
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        picker.alert(title: "是否上傳", msg: "", img: image,
                     act1: "上傳", cancel: "取消",
                     handleAct1: { _ in
                        //UploadImage(img: image)
                        print("upload")
        })
        
        
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}


