# CustomAlertController

Subclass of UIAlertController

## Development Environmental
+ Xcode 9.1
+ Swift 4

## System Requirements
+ iOS 10, 11

## ActionSheet

![actionsheet](https://user-images.githubusercontent.com/30063975/37509256-f96753f4-2939-11e8-818b-10e71dcfe680.jpg)

    @IBAction func actionSheetButtonTouched(_ sender: UIBarButtonItem) {
        let alert = CustomAlertController(title: "Very cute", message: "Animal, Pet, Cat", preferredStyle: .actionSheet)
        
        let storyboard = UIStoryboard(name: String(describing: CustomAlertSubtitleViewController.self), bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! CustomAlertSubtitleViewController
        vc.image = UIImage(named: "Cat")
        vc.text = alert.title
        vc.detailText = alert.message
        
        alert.contentViewController = vc
        alert.checkedIndex = 1
        
        alert.popoverPresentationController?.barButtonItem = sender
        
        alert.addAction(UIAlertAction(title: "SNS", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Mail", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Download", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { action in
        })
        present(alert, animated: true)
    }

## Alert

![alert](https://user-images.githubusercontent.com/30063975/37509257-f997f130-2939-11e8-839e-6cd88f8afb2a.jpg)

    @IBAction func alertButtonTouched(_ sender: UIBarButtonItem) {
        let alert = CustomAlertController(title: "Very cute", message: "Animal, Pet, Cat", preferredStyle: .alert)
        
        let storyboard = UIStoryboard(name: String(describing: CustomAlertSubtitleViewController.self), bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! CustomAlertSubtitleViewController
        vc.image = UIImage(named: "Cat")
        vc.text = alert.title
        vc.detailText = alert.message
        
        alert.contentViewController = vc
        alert.checkedIndex = 1
        
        alert.addTextField { textField in
        }
        alert.addAction(UIAlertAction(title: "SNS", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Mail", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Download", style: .default) { action in
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { action in
        })
        present(alert, animated: true)
    }
