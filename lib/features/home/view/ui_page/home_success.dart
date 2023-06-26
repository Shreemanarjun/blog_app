import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeSuccess extends StatelessWidget {
  const HomeSuccess({
    required this.onBlogEdit,
    required this.onBlogDelete,
    required this.blogs,
    super.key,
  });

  final List<Blog> blogs;
  final void Function(Blog) onBlogEdit;
  final void Function(Blog) onBlogDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: blogs.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final currentblog = blogs[index];
        return ListTile(
          leading: '${currentblog.id}'.text.make(),
          title: '${currentblog.title}'.text.make(),
          subtitle: <Widget>[
            '${currentblog.description}'.text.make().objectCenterLeft(),
            '${currentblog.createdAt}'.text.make().objectCenterLeft(),
          ].vStack(
            alignment: MainAxisAlignment.start,
          ),
          trailing: <Widget>[
            IconButton(
              onPressed: () {
                onBlogEdit(currentblog);
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () {
                onBlogDelete(currentblog);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ].hStack(
            axisSize: MainAxisSize.min,
          ),
          isThreeLine: true,
        );
      },
    );
  }
}
