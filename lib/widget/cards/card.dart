import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'custom_cards.dart';
import 'column_card.dart';

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
      WidgetbookComponent(
        name: 'Culmun Card',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => ColumnCard(
              title: 'Example',
              hourlyRate: 400,
              currentHours: 10,
              targetRate: 600,
              targetHours: 5.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ],
  );
}
