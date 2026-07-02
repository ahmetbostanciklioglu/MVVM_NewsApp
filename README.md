<div align="center">

# 📰 News-MVVM

**A clean, protocol-oriented iOS news reader built with UIKit and the MVVM architecture.**

![Platform](https://img.shields.io/badge/Platform-iOS-000000?style=flat-square&logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)
![UIKit](https://img.shields.io/badge/UIKit-2396F3?style=flat-square&logo=apple&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-13+-1575F9?style=flat-square&logo=xcode&logoColor=white)
![CocoaPods](https://img.shields.io/badge/CocoaPods-EE3322?style=flat-square&logo=cocoapods&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/MVVM_NewsApp?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/MVVM_NewsApp?style=flat-square&color=4776E6)

</div>

## 📖 Overview

News-MVVM is an iOS application that fetches and displays news articles from the [NewsAPI.org](https://newsapi.org) service. It is written entirely in code (no Storyboards for the main flow) using UIKit and follows the MVVM pattern with a lightweight custom `Bindable` type for one-way data binding between the view model and the view. Dependencies are wired together through an `Assembly` object, keeping the network layer, view model, and view controllers loosely coupled behind protocols.

The app lets you browse top headlines by country, filter by topic/category, and search articles full-text, all backed by an asynchronous networking layer built on Alamofire.

## ✨ Features

- **Top headlines by country** — switch the news feed to a different country from a dedicated country picker screen.
- **Topic filtering** — narrow headlines down to a category (topic) for the selected country.
- **Full-text search** — search across all articles through the navigation bar search controller.
- **Infinite scrolling / pagination** — additional pages load automatically as you reach the end of the list, respecting the API's total-results count.
- **Skeleton loading placeholders** — animated shimmer cells are shown while content is being fetched.
- **Pull-to-refresh** — reload the current feed with a standard `UIRefreshControl`, plus per-article detail view for reading the selected story.

## 🏗️ Architecture

- **MVVM** with protocol-driven `View`, `ViewModel`, and networking layers.
- **Custom `Bindable<T>`** wrapper for observable, one-way binding from the view model to the UI.
- **Dependency injection** via an `Assembly` factory that constructs and connects the module's components.
- **Networking** with Alamofire, image loading with Kingfisher, and Auto Layout with SnapKit.

## 🚀 Getting Started

```bash
# Clone the repository
git clone https://github.com/ahmetbostanciklioglu/MVVM_NewsApp.git
cd MVVM_NewsApp

# Install CocoaPods dependencies (Alamofire, Kingfisher, SnapKit)
pod install

# Open the workspace and run
open News-MMVM.xcworkspace
```

Then select a simulator or device in Xcode and press **⌘R** to build and run.

> **Note:** The app uses a NewsAPI.org key defined in `News-MMVM/Utility/Constants.swift`. Replace the `apiKey` value with your own free key from [newsapi.org](https://newsapi.org) if the bundled key hits its rate limit.

## 📋 Requirements

- iOS 15.5+
- Xcode 13 or later
- Swift 5.0
- CocoaPods (for dependency management)

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

---

> ⭐ If this helped you, consider giving the repo a star!
