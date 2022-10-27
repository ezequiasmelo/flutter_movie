import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';
import 'package:eventbus/eventbus.dart';

class AuthenticatorPage extends StatelessWidget {
  const AuthenticatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            TextField(),
            TextField(),
            ElevatedButton(
              onPressed: () {
                // Broadcast.emit(BroadcastType.ATHENTICATION_SUCCESS);
                EventBus.emit('Logou');
                navigatorKey.currentState?.pushReplacementNamed('/home');
              },
              child: const Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
