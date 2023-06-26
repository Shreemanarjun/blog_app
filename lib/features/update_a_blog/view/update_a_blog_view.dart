import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/features/update_a_blog/controller/update_a_blog_pod.dart';
import 'package:blog_app/features/update_a_blog/state/update_a_blog_state.dart';
import 'package:blog_app/features/update_a_blog/view/ui_state/update_blog_initial_view.dart';
import 'package:blog_app/features/update_a_blog/view/ui_state/updating_blog_view.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateABlogView extends ConsumerStatefulWidget {
  const UpdateABlogView({
    required this.blog,
    super.key,
  });
  final Blog blog;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateABlogViewState();
}

class _UpdateABlogViewState extends ConsumerState<UpdateABlogView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  Future<void> updateBlog() async {
    if (_formKey.currentState!.validate()) {
      final fields = _formKey.currentState!.fields;
      final title = fields['title']!.value as String;
      final description = fields['description']!.value as String;
      await ref.read(updateABlogPod.notifier).updateABlog(
            blogId: widget.blog.id!,
            title: title,
            description: description,
            onError: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: error.toString().text.isIntrinsic.make(),
                ),
              );
            },
            onUpdated: () async {
              ref.invalidate(blogListPod);
              if (context.mounted) {
                context.pop<void>();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: '✅ Updated a blog'.text.isIntrinsic.make(),
                  ),
                );
              }
            },
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: l10n.updateblogtitle.text.make(),
      ),
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          'title': widget.blog.title,
          'description': widget.blog.description
        },
        child: Consumer(
          builder: (context, ref, child) {
            final updateblogAsync = ref.watch(updateABlogPod);
            return updateblogAsync.easyWhen(
              data: (updatestate) {
                return switch (updatestate) {
                  InitialUpdateBlogState _ => UpdateBlogInitialView(
                      onUpdatePressed: updateBlog,
                    ),
                  UpdatingBlogState _ => const UpdatingBlogView(),
                  UpdatedBlogState _ => UpdateBlogInitialView(
                      onUpdatePressed: updateBlog,
                    ),
                  ErrorUpdatingBlogState _ => UpdateBlogInitialView(
                      onUpdatePressed: updateBlog,
                    )
                };
              },
            );
          },
        ),
      ).p12(),
    );
  }
}
