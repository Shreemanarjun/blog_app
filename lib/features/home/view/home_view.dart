import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/features/home/view/widget/logout_btn.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        title: const AppTitleHeader(),
        actions: const [
          LogoutButton(),
        ],
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final blogsAsync = ref.watch(blogListPod);
            return blogsAsync.easyWhen(
              data: (blogs) {
                return ListView.builder(
                  itemCount: blogs.blogs!.length,
                  itemBuilder: (context, index) {
                    final currentblog = blogs.blogs![index];
                    return ListTile(
                      title: '${currentblog.title}'.text.make(),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
