# ecommerce-app-flutter

## Description
A Flutter-based e-commerce application that allows users to browse, search, and purchase products.

## Features
- Infinite scrolling for product listing
- Product detail view
- User authentication
- Cart functionality
- Search, sort, and filter products

## Getting Started

### Prerequisites
- Flutter SDK
- Dart

### Installation
1. Clone the repository:
   ```bash
   git clone <repository-url>
2. Navigate to the project directory:
cd ecommerce_app
3. Install dependencies:
flutter pub get

## Project structure
ecommerce_app/
├── android/
├── ios/
├── lib/
│   ├── models/
│   │   ├── product.dart
│   │   ├── user.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── product_detail_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── login_screen.dart
│   │   ├── search_screen.dart
│   ├── widgets/
│   │   ├── product_card.dart
│   │   ├── search_bar.dart
│   │   ├── cart_item.dart
│   ├── providers/
│   │   ├── product_provider.dart
│   │   ├── auth_provider.dart
│   │   ├── cart_provider.dart
│   ├── services/
│   │   ├── api_service.dart
│   ├── main.dart
├── pubspec.yaml
├── README.md
