import 'package:blog_app/features/add_a_blog/controller/add_a_blog_pod.dart';
import 'package:blog_app/features/add_a_blog/state/add_blog_state.dart';
import 'package:blog_app/features/add_a_blog/view/ui_state/add_blog_intial_view.dart';
import 'package:blog_app/features/add_a_blog/view/ui_state/adding_blog_view.dart';
import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AddABlogView extends ConsumerStatefulWidget {
  const AddABlogView({super.key});

  @override
  ConsumerState<AddABlogView> createState() => _AddABlogViewState();
}

class _AddABlogViewState extends ConsumerState<AddABlogView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  Future<void> onAddPressed() async {
    if (_formKey.currentState!.validate()) {
      final fields = _formKey.currentState!.fields;
      final title = fields['title']!.value as String;
      final description = fields['description']!.value as String;
      await ref.read(addABlogPod.notifier).addABlog(
            title: title,
            description: description,
            onError: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: error.toString().text.isIntrinsic.make(),
                ),
              );
            },
            onAdded: () async {
              ref.invalidate(blogListPod);
              if (context.mounted) {
                context.pop<void>();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: '✅ Added a new blog'.text.isIntrinsic.make(),
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
        title: l10n.addablogtitle.text.make(),
      ),
      body: FormBuilder(
        key: _formKey,
        child: Consumer(
          builder: (context, ref, child) {
            final addBlogAsync = ref.watch(addABlogPod);
            return addBlogAsync.easyWhen(
              data: (addblogstate) {
                switch (addblogstate) {
                  case InitialBlogState _:
                    return AddBlogIntialView(onLoginPressed: onAddPressed);
                  case AddingBlogState _:
                    return const AddingBlogView();
                  case AddBlogErrorState _:
                    return AddBlogIntialView(onLoginPressed: onAddPressed);
                  case AddedBlogState _:
                    return AddBlogIntialView(onLoginPressed: onAddPressed);
                }
              },
              onRetry: () {
                ref.invalidate(addABlogPod);
              },
              includedefaultDioErrorMessage: true,
            );
          },
        ).p12().scrollVertical(),
      ),
    );
  }
}
