<img src="mrklogo.jpg" alt="MRKTrace Logo">

# MRKViper

MRKViper will allow you to create an Scalable and Stable structure for your projects following the VIPER system.
With a lot of reusable contents by just using <b>4 elements</b>.

## Add the pod 'MRKViper' to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html).

  ```ruby
  pod 'MRKViper'
  ```
  
  ## Usage

# Split all your scenes in 4 elements:

The View/ViewController this element should only contain references to the UI elements in the View and no logic.

```swift
class ViewController: MRKViewControllerBase {
  //All your visual components in the view
      @IBOutlet weak var titleLbl: UILabel!
}
```

The Interactor will make sure to provide you all the data you need, databases, network requests, etc...

```swift
class Interactor: MRKInteractorBase {
    //All the functions to provide data
    func getVersionNumber() -> String {
      return "Hello there!"
    }
}
```

The Wireframe will be the node that will place your screen in the app Flow

```swift
class Wireframe: MRKWireframeBase {
    //All the functions to provide data
    func presentNextScene( _ vc:UIViewController ){
    
    }
}
```

The crown's jewel, the Presenter, this fellow will gather all the previous elements and connect them to provide instructions in the whole Scene.

```swift
class Presenter: MRKPresenterBase<ViewController,Interactor,Wireframe>  {
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = interactor.getVersionNumber()
        viewController.titleLbl.text = data
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        //We pass the NavigationController as a parameter to follow the same navigation
        wireframe.presentNextScene(viewController)
    }
}
    
```

# Fuse them all!

Finally use the function MRKBuilder to connect all the elements and receive them as a result, to use is easy as:

```swift
  //We pass the class of the Presenter as parameter, to combine all the elements
  let elements = MRKBuilder(Presenter.self)
  //Now we can access to all of its elements
  let viewController = elements.viewController 👑
  let interactor = elements.interactor
  let wireframe = elements.wireframe
  let presenter = elements.presenter 👑
  
  // Usually you will just need to modify the presenter to customize the represented data
  // Now just display the viewController with all of your configuration.
  
```

I hope this pod is useful to you, and if it saves your life you can get me a beer! 🍺
