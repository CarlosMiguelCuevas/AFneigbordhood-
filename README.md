# 🏠 AF Neighborhood – Native SwiftUI Community Management App

![Swift Version](https://img.shields.io/badge/Swift-6-orange) _(Built with Swift 6 for modern iOS development)_  
📐 [View Figma Designs](https://www.figma.com/design/HG4mEfVTNBbnZffoB2yruO/Untitled?node-id=0-1&t=9aLpGg08R5omc5QS-1)

Welcome to **AF Neighborhood**, a comprehensive community management application built entirely with native Apple technologies. This project is designed specifically for **Kodeco** students (formerly RayWenderlich.com) to gain hands-on iOS development experience using modern Swift frameworks and industry best practices. The app provides a complete solution for neighborhood communities to manage events, communications, amenities, and marketplace activities.

> ✅ **Note:** This project is intended for **educational purposes only**. You are welcome to fork and distribute it freely for learning and experimentation. 

---

## 🧠 What You'll Learn

This project serves as a comprehensive learning platform to explore the following concepts:

1. **Native SwiftUI Development** – Building modern, declarative user interfaces with Apple's latest UI framework
2. **Data Modeling and Persistence** – Managing local data storage using SwiftData for efficient data management
3. **Cloud Synchronization** – Implementing seamless cloud syncing with CloudKit for multi-device data access
4. **MVVM Architecture** – Structuring scalable iOS applications using the Model-View-ViewModel design pattern
5. **Code Quality Standards** – Enforcing consistent code style and best practices with SwiftLint
6. **Native-First Development** – Building production-ready applications without relying on third-party dependencies  

---

## 🧰 Tech Stack

| Framework     | Purpose                                           |
|---------------|---------------------------------------------------|
| **SwiftUI**   | Declarative UI framework for building modern interfaces |
| **SwiftData** | Persistent local data storage and management      |
| **CloudKit**  | Cloud synchronization for seamless multi-device access |
| **SwiftLint** | Automated code style and quality enforcement      |
| **Native Stack** | 100% pure Swift implementation with no third-party dependencies |

---

## 🗂 App Structure

The app is organized into **four main tabs**, each providing essential community management features:

### 🛖 Dashboard Tab
- **Upcoming Events:** A horizontally scrollable list displaying featured upcoming community events
- **Important Messages:** A curated feed of priority announcements and notifications
- **Committee Members:** An interactive directory of committee members with detailed profiles accessible on tap
- **Contact Admin:** Quick-access phone number for administrative communication, automatically opens WhatsApp or phone dialer

![Dashboard Screenshot](https://github.com/user-attachments/assets/743059e7-31cd-456c-acbe-a2ef651414ef)


### 🏌️ Club House Tab
- **Facility Booking:** Interactive calendar interface for requesting and scheduling clubhouse space reservations

![Club House Screenshot](https://github.com/user-attachments/assets/21eb6925-3278-422d-adec-2d7f6bf76119)


### ❓ FAQ Tab
- **Community Q&A:** Vertically scrollable list of expandable FAQ cards with comprehensive answers to common questions

![FAQ Screenshot](https://github.com/user-attachments/assets/01f8a74b-fcdd-46a6-b347-9521ce754ad3)


### 💹 Market Tab
- **Neighborhood Marketplace:** Browse services and items offered by fellow neighbors, complete with detailed descriptions and images

![Market Screenshot](https://github.com/user-attachments/assets/27d2ff8c-5d2f-49c0-b72a-0fbd31c2c77d)

---

## 🧱 Project Architecture

This application follows industry-standard architectural patterns and organizational principles:

- **MVVM Pattern:** Clean separation of concerns using Model-View-ViewModel architecture
- **Modular Organization:** Logical file structure promoting maintainability and scalability
- **Cloud-Enabled Models:** SwiftData models with CloudKit synchronization capabilities
- **Reusable Components:** Custom view components and standardized UI styles for consistency  

---

## ✅ Requirements

Before getting started, ensure your development environment meets the following requirements:

- **Xcode:** Version 15.0 or higher
- **iOS:** Target deployment of iOS 17.0 or higher
- **Apple ID:** Required for iCloud and CloudKit testing capabilities
- **SwiftLint:** Install via Homebrew for code quality checks
  ```bash
  brew install swiftlint
  ```  

---

## 🏁 Getting Started

Follow these steps to set up and run the project on your local machine:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/CarlosMiguelCuevas/AFneigbordhood-.git
   cd AFneigbordhood-
   ```

2. **Open in Xcode**  
   Launch Xcode and open the `AFneigbordhood.xcodeproj` file

3. **Configure Apple ID**  
   Sign in with your Apple ID in Xcode's settings to enable iCloud and CloudKit capabilities

4. **Select Target Device**  
   Choose your preferred iOS simulator or connect a physical device (iOS 17+)

5. **Build and Run**  
   Press `⌘ + R` or click the Run button to build and launch the application

6. **Explore Features**  
   Navigate through the tabs to explore events, clubhouse bookings, FAQs, and the neighborhood marketplace

---

## 🧼 SwiftLint Setup

SwiftLint ensures consistent code formatting and enforces Swift style guidelines throughout the project.

### Installation

Install SwiftLint using Homebrew:

```bash
brew install swiftlint
```

### Manual Linting

Run SwiftLint manually from the project root directory:

```bash
swiftlint
```

### Automated Linting (Optional)

For automatic linting on every build, add SwiftLint as a build phase in Xcode:

1. Select your project in the Project Navigator
2. Choose your target and navigate to **Build Phases**
3. Click the `+` button and select **New Run Script Phase**
4. Add the following script:
   ```bash
   if which swiftlint >/dev/null; then
     swiftlint
   else
     echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
   fi
   ```

---

## 🎯 Learning Outcomes

By completing this project, students will gain practical experience and proficiency in:

- **Full-Featured SwiftUI Applications:** Designing and implementing complete, production-ready iOS applications with modern UI frameworks
- **Scalable Architecture:** Creating maintainable codebases using MVVM patterns and modular design principles
- **Native Data Solutions:** Implementing robust data persistence and cloud synchronization using SwiftData and CloudKit
- **Rich Media Integration:** Adding and managing multimedia content including images and audio within data models
- **Data Visualization:** Presenting complex information in user-friendly and intuitive formats
- **App Store Preparation:** Understanding the complete development lifecycle from concept to deployment without external dependencies
- **Professional Development Practices:** Applying industry-standard code quality tools and maintaining clean, consistent codebases

---

## 📄 License & Usage

This project is licensed under the **MIT License**.

**Permitted Uses:**
- ✅ Forking and modification for personal educational purposes
- ✅ Using as a learning resource and reference material
- ✅ Studying the codebase to understand iOS development patterns

**Attribution:**  
Please maintain attribution to the original project and respect the educational intent of this work.

For full license details, see the [LICENSE](LICENSE) file in the repository.
