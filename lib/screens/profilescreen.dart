import 'package:fiasco/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  boxShadow: [
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
                   Icon(Icons.payments, color: kAccentWhite,),
                    Icon(Icons.monetization_on, color: kAccentWhite,),
                    Icon(Icons.mail, color: kAccentWhite,),
                    Icon(Icons.account_balance, color: kAccentWhite,)
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  color: kAccentWhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4.0,
                    ),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                  ),
                  CircleAvatar(
                      maxRadius: 60,
                      backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C4E03AQHjONHn6O0hBQ/profile-displayphoto-shrink_800_800/0/1621799912908?e=1634169600&v=beta&t=MJLyYdqyAwCcz9Le4UnehNlpwl455YqBhXTZV5jNGRA')),
                  SizedBox(height: 10,),
                  Text('Aditya Thakur', style: kTitleText.copyWith(fontSize: 30),),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
