// lib/widgets/texts/texts_widgetbook.dart
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory getTextsCategory() {
  return WidgetbookCategory(
    name: 'Texts',
    children: [
      WidgetbookComponent(
        name: 'Headline1',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => const Text(
              'Headline1 Text',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Body Text',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => const Text(
              'This is body text.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    ],
  );
}
