# 💳 Assignment Two - Flutter UI Fintech App

A beautiful and modern fintech mobile application built with Flutter, showcasing a complete dashboard with home, reports, cards, and profile sections. This project follows Material Design 3 principles and features a clean, intuitive user interface.

**Developer**: Ibrahim Hasan | **Student ID**: 2110316 | **Institution**: IUB

---

## 🎯 Features

- **Dashboard Home** - Quick overview of balance, savings, and recent transactions
- **Monthly Reports** - Detailed spending analytics with category breakdowns
- **Cards Management** - Credit card display and linked accounts
- **User Profile** - Personalized profile with bio and account information
- **Bottom Navigation** - Seamless navigation between 4 main sections
- **Material Design 3** - Modern UI with purple-indigo primary color theme
- **Google Fonts Integration** - Using Inter font family for a premium look
- **Bangladeshi Currency** - All amounts displayed in ৳ (Taka)

---

## 📱 Demo

### Video Preview
[![Watch Demo](demo/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-04-03%20at%2001.42.51.png)](demo/Simulator%20Screen%20Recording%20-%20iPhone%2017%20-%202026-04-03%20at%2001.42.13.mov)

*Click on the screenshot above to watch the demo video*

### Screenshots

| Home Dashboard | Monthly Reports | Credit Cards | User Profile |
|---|---|---|---|
| ![Home](demo/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-04-03%20at%2001.42.51.png) | ![Reports](demo/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-04-03%20at%2001.42.55.png) | ![Cards](demo/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-04-03%20at%2001.42.57.png) | ![Profile](demo/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-04-03%20at%2001.43.00.png) |
| View account balance, savings, and recent transaction history | Analyze monthly spending patterns with visual breakdowns | Manage credit cards and linked accounts | Access profile info and account settings |

---

## 🛠️ Tech Stack

- **Framework**: Flutter 3.41.2 (Stable Channel)
- **Language**: Dart (Null Safe)
- **Design**: Material Design 3
- **State Management**: StatefulWidget with PageController
- **Typography**: Google Fonts (Inter)
- **Navigation**: BottomNavigationBar with PageView

---

## 📦 Project Structure

```
lib/
├── main.dart                 # App entry point & theme configuration
├── main_screen.dart          # Navigation shell with PageController
├── pages/
│   ├── home_page.dart        # Dashboard with balance & transactions
│   ├── reports_page.dart     # Spending analytics & breakdowns
│   ├── cards_page.dart       # Card management interface
│   └── profile_page.dart     # User profile & settings
└── utils/
    └── app_colors.dart       # Centralized color constants
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter 3.41.2 or higher
- Dart SDK
- iOS Simulator or Android Emulator (or physical device)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/iriyasat/assignment-two-flutter_UI-Ibrahm-Hasan-2110316.git
   cd assignment_two_flutter_ui
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## 🎨 Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Primary | `#5B4FCF` | Main theme color (purple-indigo) |
| Income | `#43A047` | Positive transactions (green) |
| Expense | `#E53935` | Negative transactions (red) |
| Card Dark | `#1A1A2E` | Credit card background |

---

## 📋 Requirements Met

✅ Four functional pages with bottom navigation  
✅ Personal information integration (Ibrahim Hasan, 2110316)  
✅ Bangladeshi currency (৳) display  
✅ Profile photo integrated across all tabs  
✅ Material Design 3 compliance  
✅ Google Fonts (Inter) typography  
✅ Clean, maintainable code structure  
✅ Zero analyzer warnings  
✅ Responsive UI design  

---

## 📚 Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Material Design 3](https://m3.material.io/)
- [Google Fonts Package](https://pub.dev/packages/google_fonts)
- [Flutter Counter App](https://docs.flutter.dev/get-started/codelab)

---

## 📄 License

This project is open source and available for educational purposes.

---

**Made with ❤️ by Ibrahim Hasan**
