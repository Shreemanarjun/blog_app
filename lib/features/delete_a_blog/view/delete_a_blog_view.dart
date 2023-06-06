import 'package:blog_app/features/delete_a_blog/controller/delete_blog_pod.dart';
import 'package:blog_app/features/delete_a_blog/state/delete_blog_state.dart';
import 'package:blog_app/features/delete_a_blog/view/ui_state/deleting_blog_view.dart';
import 'package:blog_app/features/delete_a_blog/view/ui_state/initial_blog_delete_view.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class DeleteABlogView extends ConsumerStatefulWidget {
  const DeleteABlogView({required this.blogId, super.key});
  final int blogId;

  @override
  ConsumerState<DeleteABlogView> createState() => _DeleteABlogState();
}

class _DeleteABlogState extends ConsumerState<DeleteABlogView> {
  Future<void> deleteBlog() async {
    await ref.read(deleteBlogPod(widget.blogId).notifier).deleteBlog();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10,
      child: SizedBox.fromSize(
        size: const Size(400, 200),
        child: Consumer(
          builder: (context, ref, child) {
            ref.listen(deleteBlogPod(widget.blogId), (previous, next) {
              if (next.value is DeletedBlogState) {
                context.pop<void>();
              }
            });

            final deleteAsynState = ref.watch(deleteBlogPod(widget.blogId));
            return deleteAsynState.easyWhen(
              data: (deleteblogstate) {
                return switch (deleteblogstate) {
                  IntialBlogDeleteState _ => InitialBlogDeleteView(
                      blogId: widget.blogId,
                      onDelete: deleteBlog,
                    ),
                  DeletingBlogState _ => const DeletingBlogView(),
                  DeletedBlogState _ => 'Blog deleted successfully'
                        .text
                        .xl
                        .isIntrinsic
                        .green500
                        .bold
                        .makeCentered()
                        .pOnly(top: 32)
                        .pSymmetric(
                          h: 32,
                        )
                        .scrollVertical()
                        .centered(),
                  DeleteBlogError s => <Widget>[
                      s.error.text.bold
                          .makeCentered()
                          .pOnly(top: 32)
                          .pSymmetric(
                            h: 8,
                          ),
                      ElevatedButton(
                        onPressed: () => context.pop<void>(),
                        child: 'OK'.text.make(),
                      ).pOnly(top: 20)
                    ].vStack().scrollVertical().centered()
                };
              },
              includedefaultDioErrorMessage: true,
              onRetry: deleteBlog,
            );
          },
        ),
      ),
    );
  }
}
