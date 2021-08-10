import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/expensewidgets.dart';
import 'package:fiasco/screens/widgets/homewidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //TODO: Replace with Account name from Google
                    Text(
                      'Welcome back, Aditya',
                      style:
                          kLightTitleText.copyWith(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      //TODO: Replace with Account pic from Google
                      backgroundColor: kPrimaryColor,
                      child: Icon(
                        Icons.account_box,
                        color: kAccentWhite,
                      ),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Text(
              //     'YOUR BALANCE',
              //     style: kSubTitleText,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Text(
              //     '78512633',
              //     style: kLightTitleText,
              //   ),
              // ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeWidgetTile(
                          icon: Icons.payment,
                          text: 'Send Money',
                          color: kPrimaryColor,
                          styleColor: Colors.white,
                        ),
                        HomeWidgetTile(
                          icon: Icons.speaker_phone,
                          text: 'Top Up',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeWidgetTile(
                          icon: Icons.share,
                          text: 'Transfer',
                        ),
                        HomeWidgetTile(
                          icon: Icons.payments,
                          text: 'Pay Bill',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'This Month:',
              //     style: kLightTitleText,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

