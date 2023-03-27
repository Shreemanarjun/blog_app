import 'package:blog_app/data/service/token/token_service_pod.dart';
import 'package:blog_app/router/router.gr.dart';
import 'package:blog_app/router/router_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () async {
        await ref.read(tokenServicePod).deleteToken();
        await ref.read(autoRouterPod).replaceAll([
          const LoginRouter(),
        ]);
      },
      icon: const Icon(
        Icons.logout,
      ),
      tooltip: 'Logout',
    );
  }
}
