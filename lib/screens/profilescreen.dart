import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/familywidget.dart';
import 'package:fiasco/services/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Family details: ',
                  style: kTitleText.copyWith(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  FamilyWidget(
                      child: const Icon(
                        Icons.person_add,
                        size: 50,
                      ),
                      name: 'Add Member'),
                  // FamilyWidget(child: Consumer(builder: (context, watch, child) {
                  //   final name = watch(userNameProvider);
                  //   final pic = watch(userPicProvider);
                  //   return pic.when(
                  //       data: (value) => CircleAvatar(
                  //           maxRadius: 26,
                  //           backgroundImage: NetworkImage(
                  //               '$value')),
                  //       loading: () => const CircularProgressIndicator(),
                  //       error: (error, stack) => const Text('Oops'));
                  // }),
                  //   name: name,)
                ],
              ),
              const Spacer()
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.0,
                  ),
                ]),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.payments,
                    color: kAccentWhite,
                  ),
                  Icon(
                    Icons.monetization_on,
                    color: kAccentWhite,
                  ),
                  Icon(
                    Icons.mail,
                    color: kAccentWhite,
                  ),
                  Icon(
                    Icons.account_balance,
                    color: kAccentWhite,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: kAccentWhite,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.0,
                  ),
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                ),
                Consumer(builder: (context, watch, child) {
                  return watch(userPicProvider).when(
                      data: (value) => CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: NetworkImage(
                              '$value')),
                      loading: () => const CircularProgressIndicator(),
                      error: (error, stack) => const Text('Oops'));
                }),
                const SizedBox(
                  height: 10,
                ),
                Consumer(builder: (context, watch, child) {
                  return watch(userNameProvider).when(
                      data: (value) => Text('$value', style: kTitleText.copyWith(fontSize: 30),),
                      loading: () => const CircularProgressIndicator(),
                      error: (error, stack) => const Text('Oops'));
                }),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
