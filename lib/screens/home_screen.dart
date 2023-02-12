import 'package:doctor_app/constants/constant.dart';
import 'package:doctor_app/screens/widgets/doctor_app_grid_menu.dart';
import 'package:doctor_app/screens/widgets/home_screen_navbar.dart';
import 'package:doctor_app/screens/widgets/top_doctor_list.dart';
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
                const SizedBox(
                  height: 30,
                ),
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
                    ])),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                      right: 8, left: 16, bottom: 5, top: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor500,
                  ),
                  child: TextField(
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: kBlackColor900),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: kBlackColor900,
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          maxHeight: 24,
                        ),
                        hintText: 'Search doctor, medical drugs etc',
                        hintStyle: Theme.of(context).textTheme!.headline5,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const DoctorAppGridMenu(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: kBlueColor),
                    )
                  ],
                ),

                const SizedBox(
                  height: 24,
                ),
                const TopDoctorList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
