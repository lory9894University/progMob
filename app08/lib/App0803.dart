// App0803.dart
import 'package:flutter/material.dart';

import 'App08Main.dart';

extension MoreMovieTitlePage on MovieTitlePageState {
  static bool _isFavorite = true; // You can change this to false.
  goToDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(),
        settings: RouteSettings(
          arguments: _isFavorite,
        ),
      ),
    );
  }

  Widget buildTitlePageCore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Being John Malkovich',
          textScaleFactor: 1.5,
        ),
        SizedBox(height: 16.0),
        ElevatedButton.icon(
          icon: Icon(Icons.arrow_forward),
          label: Text('Details'),
          onPressed: goToDetailPage,
        ),
      ],
    );
  }
}

extension MoreDetailPage on DetailPage {
  Widget buildDetailPageCore(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          overview,
        ),
        Visibility(
          visible: ModalRoute.of(context)!.settings.arguments as bool,
          child: Icon(Icons.favorite),
        ),
      ],
    );
  }
}
