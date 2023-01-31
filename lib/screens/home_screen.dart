import 'package:doctor_app/constants/constant.dart';
import 'package:doctor_app/screens/widgets/home_screen_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavbar(),
                const SizedBox(height: 30,),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline1,
                        children: <TextSpan>[
                      const TextSpan(text: 'Find  '),
                      TextSpan(
                          text: 'your docotor',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: kGreyColor900))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
