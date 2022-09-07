import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnknownPage extends StatelessWidget {
  final String? unknownRouteName;

  const UnknownPage({required this.unknownRouteName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '${AppLocalizations.of(context)!.unknown_page}:$unknownRouteName',
        ),
      ),
    );
  }
}
