# Flutter View Controller Snippets

Está é uma extensão que incorpora snippets para a criação de Views e Controllers utilizando a lib flutter_view_controller.

# Snippets

## Para criar um controller
### fcont

```dart
import 'package:flutter_view_controller/flutter_view_controller.dart';

class MyController extends Controller {
  @override
  onInit() {}

  @override
  onClose() {}
}
```

## Para criar uma view
### fview

```dart
import 'package:flutter/material.dart';
import 'package:flutter_view_controller/flutter_view_controller.dart';
import 'controller.dart';

class MyView extends View<MyController> {
  MyView({required MyController controller}) : super(controller: controller);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```



## Para criar uma página
### fpage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_view_controller/flutter_view_controller.dart';
import 'controller.dart';

class MyView extends View<MyController> {
  MyView() : super(controller: MyController());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
