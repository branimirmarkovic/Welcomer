# Welcomer


## Introduction

Welcomer is framwerk providing basic UI Controllers for Log in and Sign In pages.
Framework is currently in development. Feel free to contribute.

## Setup

Import framework in project.

In Your View Controller instantiate Welcomer controller
and set up manager.
```
class ViewController: UIViewController {

    let logInVC = LogInContainerVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInVC.setManager(self)
    }
}
```

Conform to LogInContainerViewDelegate. Use provided methods to react to controller events.

```
extension ViewController: LogInContainerViewDelegate {
    func questionButtonTapped() {

    }

    func logInTapped(password: String?, email: String?, validCredentials: Bool) {

    }
}
```

Conform to LogInContainerViewThemeSource. Use provided methods to customize theme for view elements.

```
extension ViewController: LogInContainerViewThemeSource {

    func themeForBackgroundView() -> BackgroundThemeConfiguration {
        BackgroundThemeConfiguration()
    }

    func themeForLogInLabel() -> LabelThemeConfiguration {
        LabelThemeConfiguration()
    }

    func themeForTextFields() -> TextFieldThemeConfiguration {
        TextFieldThemeConfiguration()
    }

    func themeForQuestionLabel() -> QuestionLabelThemeConfiguration {
        QuestionLabelThemeConfiguration()
    }

    func themeForButton() -> ButtonThemeConfiguration {
        ButtonThemeConfiguration()
    }
}
```

## Features

Framework is build with customizable validator that is validatin input in text fields.


## Example 

<img width="437" alt="Screenshot 2021-10-30 at 19 07 49" src="https://user-images.githubusercontent.com/86830475/139542557-6e49ae05-09c0-431f-b700-bda1ba04b5ad.png"><img width="434" alt="Screenshot 2021-10-30 at 19 07 55" src="https://user-images.githubusercontent.com/86830475/139542567-e6a81983-d8bb-4850-bc3c-7ff76c5922d3.png">

