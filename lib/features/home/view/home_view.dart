import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/add_a_blog/add_a_blog.dart';
import 'package:blog_app/features/delete_a_blog/delete_a_blog.dart';
import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/features/home/view/ui_page/home_empty.dart';
import 'package:blog_app/features/home/view/ui_page/home_success.dart';
import 'package:blog_app/features/home/view/widget/logout_btn.dart';
import 'package:blog_app/features/home/view/widget/top_indicator.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:blog_app/shared/widget/app_locale_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'HomeRouter',
  deferredLoading: true,
)
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<void> deleteBlog(BlogsBlogsInner blogsInner) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return DeleteABlogView(
          blogId: blogsInner.id!,
        );
      },
    );
  }

  Future<void> editBlog(BlogsBlogsInner blogsInner) async {}

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
                builder: (context) => DraggableScrollableSheet(
                  initialChildSize: 0.75,
                  snap: true,
                  expand: false,
                  builder: (context, scrollController) {
                    return const AddABlogView();
                  },
                ),
                constraints: BoxConstraints(
                  maxWidth: 600,
                  maxHeight: context.safePercentHeight * 150,
                ),
                routeSettings: const RouteSettings(name: 'add a blog route'),
                useSafeArea: true,
                isScrollControlled: true,
              );
            },
            child: const Icon(Icons.add),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) {
                return const TopIndicator();
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                final blogsAsync = ref.watch(blogListPod);
                return blogsAsync.easyWhen(
                  data: (blogs) {
                    if (blogs.isNotEmpty) {
                      return Scrollbar(
                        child: RefreshIndicator(
                          onRefresh: () => ref.refresh(blogListPod.future),
                          child: HomeSuccess(
                            blogs: blogs,
                            onBlogAdd: (blogsBlogsInner) {},
                            onBlogDelete: deleteBlog,
                          ),
                        ),
                      );
                    } else {
                      return const HomeEmpty();
                    }
                  },
                  includedefaultDioErrorMessage: true,
                  onRetry: () {
                    ref.invalidate(blogListPod);
                  },
                );
              },
            ).flexible(),
          ],
        ),
      ),
    );
  }
}
