# What does Brastlewark do?

Brastlewark is an iOS App that lists the population of Brastlewark, a city full hard working gnomes!
These gnomes may have several and traits that describes them. The list is designed to be able to look at them individually
and filter them by name.

The data obtained from a public json file:
https://raw.githubusercontent.com/rrafols/mobile_test/master/data.json


# Instructions to run the project & requirements

- To install from terminal, open terminal and run `https://github.com/ChristianSko/Brastlewark.git` and wait until repository is downloaded. Unzip the project you downloaded and run the project by double clicking on the file with the `xcodeproj` extension. 

- To install by downloding from Github simply press on the green button `Code` and the option `Download ZIP`. Unzip the project you downloaded and run the project by double clicking on the file with the `xcodeproj` extension. 

- There is not pod installation required

- Minimal required iOS version is 15.5 . This means run the project on Xcode 13.4.1 or above


# What you will see as a user

- Splash screen: Simply a funny welcome splash image

- Home screen: Shows a tableview listing all gnomes in alphabetical order. At first glance you should be able to read their name, picture and amount of jobs they have. You can also filter them by name.

- Detail Screen: Shows all the details separated by sections


# Arquitecture

- For this exercise in particular I followed MVVM Architeture while abstracting the service layer.
 

# Frameworks & technologies used

- I used for SwiftUI for this exercise because of it is. While it does give me less control then UIKIT, it does provide me with a lot of speed in the experimentation with the UI, making it possible to go through several iterations on the design to make sure it feels right to the user

- I applied concurrency through async await to further improve my grasp on it and simply because it reduces the code amount and the readibility which from point of view is a great gain!

- I made small use of SFSymbols. I think its a hugely underrated native tool that gives developers and designers a lot of power for free due to it being a system image treated as actual text. It makes it scaling great, making it a great accesibility feature. We want everything we create to be for everyone!
