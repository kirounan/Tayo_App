import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tayo_app/features/providers/config_provider.dart';
import 'package:tayo_app/features/register/presentations/widgets/get_selected_widget.dart';
import 'package:tayo_app/features/register/presentations/widgets/get_unselected_widget.dart';

import '../../../../core/utils/strings.dart';

class ChurchBottomSheet extends StatefulWidget {
  @override
  State<ChurchBottomSheet> createState() => _ChurchBottomSheetState();
}

class _ChurchBottomSheetState extends State<ChurchBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    return Container(
      height: 250,
      margin: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage(AppStrings.churchName);
                Navigator.pop(context);
              },
              child: getSelectedWidget(provider.newChurch)),
          const SizedBox(height: 20),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('not hello'))
        ],
      ),
    );
  }
}
