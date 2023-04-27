import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/add_a_blog/presentation/add_a_blog_view.dart';
import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/features/home/view/widget/logout_btn.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:blog_app/shared/widget/app_locale_popup.dart';
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
        centerTitle: true,
        actions: const [
          LogoutButton(),
          AppLocalePopUp(),
        ],
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context) => const AddABlogView(),
                constraints: const BoxConstraints(
                  maxWidth: 600,
                ),
                routeSettings: const RouteSettings(name: 'add a blog route'),
              );
            },
            child: const Icon(Icons.add),
          );
        },
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final blogsAsync = ref.watch(blogListPod);
            return blogsAsync.easyWhen(
              data: (blogs) {
                if (blogs.blogs != null) {
                  return RefreshIndicator(
                    onRefresh: () => ref.refresh(blogListPod.future),
                    child: ListView.builder(
                      itemCount: blogs.blogs!.length,
                      itemBuilder: (context, index) {
                        final currentblog = blogs.blogs![index];
                        return ListTile(
                          leading: '${currentblog.id}'.text.make(),
                          title: '${currentblog.title}'.text.make(),
                          subtitle: <Widget>[
                            '${currentblog.description}'
                                .text
                                .make()
                                .objectCenterLeft(),
                            '${currentblog.createdAt}'
                                .text
                                .make()
                                .objectCenterLeft(),
                          ].vStack(
                            alignment: MainAxisAlignment.start,
                          ),
                          trailing: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ].hStack(),
                          isThreeLine: true,
                        );
                      },
                    ),
                  );
                } else {
                  return 'No blogs Here'.text.make();
                }
              },
              includedefaultDioErrorMessage: true,
              onRetry: () {
                ref.invalidate(blogListPod);
              },
            );
          },
        ),
      ),
    );
  }
}
