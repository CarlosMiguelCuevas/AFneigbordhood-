# 🏠 AFneigbordhood- – A Native SwiftUI Learning Project

![Swift Version](https://img.shields.io/badge/Swift-6-orange)
![Designs](https://www.figma.com/design/HG4mEfVTNBbnZffoB2yruO/Untitled?node-id=0-1&t=9aLpGg08R5omc5QS-1)

Welcome to the **AF Neigborhood App**, a thoughtfully designed application built entirely with native Apple technologies. This project is crafted exclusively for students of **Kodeco** (formerly RayWenderlich.com) to gain real-world iOS development experience using modern Swift tools and best practices.

> ✅ **Note:** This project is for **educational use only**. But you can fork it and distribute it at will. 

---

## 🧠 What You'll Learn

This project is my playground to explore:

- Native SwiftUI UI development  
- Data modeling and persistence with **SwiftData**  
- Cloud syncing using **CloudKit**  
- App architecture with **MVVM**  
- Code quality enforcement using **SwiftLint**  
- How to structure a real-world Swift project without third-party libraries  

---

## 🧰 Tech Stack

| Framework     | Purpose                         |
|---------------|---------------------------------|
| **SwiftUI**   | Declarative UI building         |
| **SwiftData** | Local data persistence          |
| **CloudKit**  | Cloud syncing of journal entries|
| **SwiftLint** | Code style enforcement          |
| **No 3rd Party Libraries** | 100% native Swift stack |

---

## 🗂 App Structure

The app is divided into **Four main tabs**, each with its own screen:

### 🛖 Dashboard Tab
- upcoming events: a horizontal scrollable list, with cards of upcoming events.
- important messages: a list of ucoming events.
- cometee members: a list of comette members that when clicking on tehm we get more info about them.
- Contact Admin: the phone number to comunicate with admin, at tap it opens up whatsapp/phone dial.

![image](https://github.com/user-attachments/assets/743059e7-31cd-456c-acbe-a2ef651414ef)


### 🏌️ Club House Tab
- a calendar where you can request the space for club house usage.

![image](https://github.com/user-attachments/assets/21eb6925-3278-422d-adec-2d7f6bf76119)


### ❓ FAQ Tab
- a vertical list of exandable cards with FAQ

![image](https://github.com/user-attachments/assets/01f8a74b-fcdd-46a6-b347-9521ce754ad3)


 ### 💹 Market Tab
- a tab where you can see a list of services and items offered in the neiborhood by otehr neigthbors, it includes description and images

![image](https://github.com/user-attachments/assets/27d2ff8c-5d2f-49c0-b72a-0fbd31c2c77d)

---

## 🧱 Project Architecture

- **MVVM (Model-View-ViewModel)** pattern  
- Modular file organization for maintainability  
- SwiftData Models that sync via CloudKit  
- Custom view components and reusable UI styles  

---

## ✅ Requirements

- Xcode 15+  
- iOS 17+  
- Apple ID (for iCloud and CloudKit testing)  
- SwiftLint installed locally (`brew install swiftlint`)  

---

## 🏁 Getting Started

1. Clone this repository.
2. Open the `.xcodeproj` file in Xcode.
3. Sign in with your Apple ID (ensure iCloud capabilities are enabled).
4. Run the app on a real device or simulator.
5. Create journal entries, view stats, and explore syncing.

---

## 🧼 SwiftLint Setup

SwiftLint is used to ensure consistent Swift code formatting.

```bash
brew install swiftlint
```

To run SwiftLint manually:

```bash
swiftlint
```

Optionally, add it as a build phase in Xcode to lint on every build.

---

## 🎯 Learning Outcomes

By the end of this project, you’ll understand how to:

- Build full-featured SwiftUI apps  
- Design for scalability and code cleanliness  
- Use native persistence and sync solutions  
- Add media support (images, audio) to your data models  
- Visualize and interpret user data effectively  
- Prepare for app submission without relying on external libraries  

---

## ⚠️ License & Usage

This project is licensed under the **MIT License**.  

- ✅ Forking for personal educational use is encouraged  
