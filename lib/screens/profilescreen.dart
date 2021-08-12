import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/familywidget.dart';
import 'package:flutter/material.dart';

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
                  FamilyWidget(child: const CircleAvatar(
                      maxRadius: 26,
                      backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C4E03AQHjONHn6O0hBQ/profile-displayphoto-shrink_800_800/0/1621799912908?e=1634169600&v=beta&t=MJLyYdqyAwCcz9Le4UnehNlpwl455YqBhXTZV5jNGRA')), name: 'Aditya')
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
                const CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4E03AQHjONHn6O0hBQ/profile-displayphoto-shrink_800_800/0/1621799912908?e=1634169600&v=beta&t=MJLyYdqyAwCcz9Le4UnehNlpwl455YqBhXTZV5jNGRA')),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Aditya Thakur',
                  style: kTitleText.copyWith(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
