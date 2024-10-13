import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'widget/buttons/buttons.dart';
import 'widget/cards/card.dart';
import 'widget/texts/texts.dart';


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
