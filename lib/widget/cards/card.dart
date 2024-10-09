// lib/widgets/cards/cards_widgetbook.dart
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'custom_card.dart'; // カスタムカードをインポート

WidgetbookCategory getCardsCategory() {
  return WidgetbookCategory(
    name: 'Cards',
    children: [
      WidgetbookComponent(
        name: 'Custom Card',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => const CustomCard(
              title: 'Card Title',
              description: 'This is a description of the custom card.',
            ),
          ),
        ],
      ),
    ],
  );
}
