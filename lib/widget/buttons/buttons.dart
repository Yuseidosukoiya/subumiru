// lib/widgets/buttons/buttons_widgetbook.dart
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory getButtonsCategory() {
  return WidgetbookCategory(
    name: 'Buttons',
    children: [
      WidgetbookComponent(
        name: 'Primary Button',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => ElevatedButton(
              onPressed: () {},
              child: const Text('Primary Button'),
            ),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Outlined Button',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
          ),
        ],
      ),
    ],
  );
}
