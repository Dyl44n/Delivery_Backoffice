import 'package:delivery_backoffice/src/core/env/ui/helpers/loader.dart';
import 'package:flutter/material.dart';

import '../../core/env/ui/helpers/messages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  decoration: InputDecoration(label: Text('Login')),
                  validator: (String) => 'Erro',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Botão'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
