# Welcomer


## Introduction

Welcomer is framwork that is providing basic UI Controllers for Log in and Sign In pages.
Currently it is in development. Feel free to contribute.

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

<img width="250" alt="Screenshot 2021-10-30 at 19 07 49" src="https://user-images.githubusercontent.com/86830475/139553676-ef973505-7e6b-48f6-9dac-2ab259b39417.png"> &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;  <img width="250" alt="Screenshot 2021-10-30 at 19 07 55" src="https://user-images.githubusercontent.com/86830475/139553673-4790923c-5d5a-4922-9c6c-401215e4d5f1.png">


