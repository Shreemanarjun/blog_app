import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class TopIndicator extends ConsumerWidget {
  const TopIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(blogListPod).isRefreshing
        ? TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 100),
            duration: const Duration(
              milliseconds: 800,
            ),
            builder: (context, value, child) {
              return LinearProgressIndicator(
                value: value / 100,
                minHeight: 8,
                valueColor: const AlwaysStoppedAnimation(Vx.green400),
                backgroundColor: Colors.white,
              );
            },
          )
        : const SizedBox.shrink();
  }
}
