// lib/widgetbook.dart
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(
    Widgetbook(
      directories: [
        WidgetbookFolder(
          name: 'UI Components',
          children: [
            WidgetbookCategory(
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
            ),
            WidgetbookCategory(
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
            ),
            WidgetbookCategory(
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
            ),
          ],
        ),
      ],
      appBuilder: (context, child) => MaterialApp(
        home: child,
      ),
    ),
  );
}

// カスタムウィジェットの例
class CustomCard extends StatelessWidget {
  final String title;
  final String description;

  const CustomCard({
    super.key, // super parameter を使用
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
