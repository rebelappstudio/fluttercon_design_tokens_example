import 'package:flutter/material.dart';

import '../gallery.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      ListItem(
        icon: const Icon(Icons.color_lens),
        title: const Text('Colors'),
        subtitle: const Text('All of the predefined colors'),
        onTap: () => Navigator.of(context).push<void>(ColorsPage.route()),
      ),
      ListItem(
        icon: const Icon(Icons.border_vertical),
        title: const Text('Spacings'),
        subtitle: const Text('All of the predefined spacings'),
        onTap: () => Navigator.of(context).push<void>(SpacingPage.route()),
      ),
      ListItem(
        icon: const Icon(Icons.text_fields),
        title: const Text('Typography'),
        subtitle: const Text('All of the predefined typography'),
        onTap: () => Navigator.of(context).push<void>(TypographyPage.route()),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontio Gallery'),
      ),
      body: ListView.separated(
        itemCount: pages.length,
        itemBuilder: (_, index) => pages[index],
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
