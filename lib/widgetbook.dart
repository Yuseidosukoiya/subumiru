import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'widgets/cards/cards_widgetbook.dart';
import 'widgets/buttons/buttons_widgetbook.dart';
import 'widgets/texts/texts_widgetbook.dart';

void main() {
  runApp(
    Widgetbook(
      directories: [
        WidgetbookFolder(
          name: 'UI Components',
          children: [
            getButtonsCategory(),
            getTextsCategory(),
            getCardsCategory(),
          ],
        ),
      ],
      appBuilder: (context, child) => MaterialApp(
        home: child,
      ),
    ),
  );
}
