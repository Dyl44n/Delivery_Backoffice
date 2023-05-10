import 'package:delivery_backoffice/src/core/env/ui/helpers/loader.dart';
import 'package:flutter/material.dart';

import '../../core/env/ui/Styles/colors_app.dart';
import '../../core/env/ui/Styles/text_styles.dart';
import '../../core/env/ui/helpers/messages.dart';
import '../../core/env/ui/helpers/size_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(const Duration(seconds: 2));
          hideLoader();

          showError('Erro de alguma coisa');
        },
      ),
      body: Container(
        child: Container(
          color: context.colors.primary,
          width: context.percentwidth(.5),
          height: context.percentHeigth(.90),
          child: Text(
            'Texto extra bold',
            style: context.textStyles.textExtraBold,
          ),
        ),
      ),
    );
  }
}
