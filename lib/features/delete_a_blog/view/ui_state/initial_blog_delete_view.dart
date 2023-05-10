import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InitialBlogDeleteView extends StatelessWidget {
  const InitialBlogDeleteView({
    required this.blogId,
    required this.onDelete,
    super.key,
  });
  final int blogId;
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      '''
Are you sure you want to delete the blog having id $blogId?'''
          .text
          .bold
          .isIntrinsic
          .make()
          .pSymmetric(
            h: 32,
          ),
      [
        ElevatedButton(
          onPressed: () {
            context.pop<void>();
          },
          child: 'Cancel'.text.make(),
        ),
        ElevatedButton(
          onPressed: onDelete,
          child: 'Delete'.text.make(),
        )
      ]
          .hStack(
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          )
          .pOnly(top: 20)
    ].vStack().scrollVertical().centered();
  }
}
