# 🚀 Flutter REST API Integration with GetX

A clean and efficient Flutter application demonstrating how to seamlessly consume RESTful APIs and manage reactive application state using the **GetX** ecosystem. This project serves as a robust template for building scalable mobile applications with lightweight state management.

---

## 📱 Key Features

*   **Reactive State Management:** Utilizes GetX (`GetxController`, `Obx`) for immediate UI updates without StatefulWidgets.
*   **API Integration:** Clean separation of API service calls (GET, POST, etc.) from business logic.
*   **Dependency Injection:** Smart memory management and controller lifecycle handling using `Get.put()` and `Get.lazyPut()`.
*   **Error Handling:** Robust try-catch blocks and loading states for smooth user experiences during network requests.
*   **Clean Architecture:** Modular folder structure making the codebase easy to maintain and scale.

---

## 🛠 Tech Stack

*   **Framework:** Flutter
*   **Language:** Dart
*   **State Management & Routing:** [GetX](https://pub.dev/packages/get)
*   **Network Client:** `http` / `dio` (for REST API requests)

---

## 📂 Project Structure

```text
lib/
│
├── controllers/          # GetX Controllers handling business logic and state
├── models/               # Data models and JSON serialization
├── services/             # API clients and network request handlers
├── views/                # UI screens (StatelessWidgets using Obx/GetBuilder)
├── utils/                # Constants, themes, and helper functions
└── main.dart             # Application entry point and GetMaterialApp
