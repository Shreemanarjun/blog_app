import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DeletingBlogView extends StatelessWidget {
  const DeletingBlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      const CircularProgressIndicator().pOnly(bottom: 20).centered(),
      'Deleting Blog'.text.bold.isIntrinsic.lg.makeCentered(),
    ].vStack().scrollVertical().centered();
  }
}
