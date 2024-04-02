import 'package:flutter/material.dart';

import '../widgets/details_body.dart';

class Details extends StatelessWidget {
  const Details({super.key});
static String id='details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:DetailsBody() ,
    );
  }
}