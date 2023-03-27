import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'HomeRouter',
  deferredLoading: true,
)
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitleHeader().hero('title'),
      ),
    );
  }
}
