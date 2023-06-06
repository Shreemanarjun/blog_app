import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeSuccess extends StatelessWidget {
  const HomeSuccess({
    required this.onBlogAdd,
    required this.onBlogDelete,
    required this.blogs,
    super.key,
  });

  final List<BlogsBlogsInner> blogs;
  final void Function(BlogsBlogsInner) onBlogAdd;
  final void Function(BlogsBlogsInner) onBlogDelete;

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
                onBlogAdd(currentblog);
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
