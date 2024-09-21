# Dynamic Routing Example

This repository demonstrates how to implement **dynamic routing** in a Flutter app using the `dynamic_routing` package. It showcases how to define custom workflows where users navigate through different screen sequences based on their choices.

## Features

- Define multiple workflows with varying navigation paths.
- Control navigation dynamically based on user input.
- Integration with `GetX` for seamless screen transitions.

## Getting Started

To get started with the example, follow these steps:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/YoussifFathi/dynamic_routing_example.git
   cd dynamic_routing_example
   flutter pub get
   flutter run
   ```

## Example 

This example project sets up a series of routes and workflows for navigating through multiple screens based on user input. Here's a quick overview of how the dynamic routing is handled:



 ```dart
    DynamicRouting.setRoutes(
  {
    0: Routes.home,
    1: Routes.screenOne,
    2: Routes.screenTwo,
    3: Routes.screenThree,
    4: Routes.screenFour,
    5: Routes.screenFive,
  },
  [
    WorkFlowModel(id: 1, screenSequence: [1, 2, 3]),
    WorkFlowModel(id: 2, screenSequence: [2, 4]),
    WorkFlowModel(id: 3, screenSequence: [3, 4, 5]),
  ],
  (routeName) {
    Get.toNamed(routeName);
  },
);
   ```
### In this example:

routesMap: Defines all available routes in the app.

workFlows: Specifies different screen sequences for various workflows.

Callback: The function to handle navigation to the appropriate screen.

### Workflow Examples
Product Type 1: Navigates through screens 1, 2, and 3.

Product Type 2: Navigates through screens 2 and 4.

Product Type 3: Navigates through screens 3, 4, and 5.

