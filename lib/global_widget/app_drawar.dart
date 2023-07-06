import 'package:flutter/material.dart';
import 'package:four20society/feature/about_us/presentation/about_us.dart';
import 'package:four20society/feature/address/presentation/added_address.dart';
import 'package:four20society/feature/help_support/presentation/termcondition.dart';
import 'package:four20society/feature/notification/presentation/notification_screen.dart';
import 'package:four20society/feature/track_order/presentation/track_order.dart';
import '../feature/payment/presentation/paymentcard.dart';


Widget customDrawer({required context}) {
  final mediaQuery = MediaQuery.of(context);
  return Container(
    // padding: EdgeInsets.only(top: _mediaQuery.viewPadding.top),
    width: mediaQuery.size.width * 0.75,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: mediaQuery.size.height * 0.24,
          decoration: const BoxDecoration(
              color: Color(0XFF00C8B8),
              borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF1E1E1E),
                    ),
                    children: [
                      TextSpan(
                        text: 'John Smith \n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                      TextSpan(
                        text: 'San Francisco, CA',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 10, bottom: 18),
            children: [
              Container(
                padding: const EdgeInsets.only(top: 0, left: 10, bottom: 8),
                child: Text(
                  "your information".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 0, top: 0),
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 209, 209)
                          .withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const TrackOrderPage()));
                          },
                          title: const Text(
                            "Track Your Order",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TermConditionPage()));
                          },
                          title: const Text(
                            "Help Support",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddedAddress()));
                          },
                          title: const Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentCard()));
                          },
                          title: const Text(
                            "Payment Method",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container()
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Other information".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 209, 209)
                          .withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutUsPage()));
                          },
                          title: const Text(
                            "Share The App",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const AboutUsPage()));
                          },
                          title: const Text(
                            "About Us",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text(
                            "Rate Us On The Play Store",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen()));
                          },
                          title: const Text(
                            "Notification Preferences",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          title: const Text(
                            "Log Out",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container()
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
// enum SingingCharacter { lafayette, jefferson } //new
// class PaymentCard extends StatefulWidget {
//   const PaymentCard({Key? key}) : super(key: key);
//
//   @override
//   State<PaymentCard> createState() => _PaymentCard();
// }

// class _PaymentCard extends State<PaymentCard> {
//   SingingCharacter? _character = SingingCharacter.lafayette;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Payment Method"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
//             padding: const EdgeInsets.only(
//                 top: 0, bottom: 0, left: 10, right: 10),
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             width: MediaQuery.of(context).size.width * 0.9,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 ListTile(
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const AboutUsPage()));
//                   },
//                   title: const Text(
//                     "Add New Card",
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.black),
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (_) => const AboutUsPage()));
//                   },
//                   title: const Text(
//                     "Add New Bank Account",
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
//             padding: const EdgeInsets.only(
//                 top: 0, bottom: 0, left: 10, right: 10),
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
//               borderRadius: BorderRadius.circular (8), //new
//             ),
//             width: MediaQuery.of(context).size.width * 0.9,
//              child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   ListTile(
//                     onTap: () {
//                       Navigator.pop(context);
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const AboutUsPage()));
//                     },
//                     title: const Text(
//                       "Add New Card",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.black),
//                     ),
//                   ),
//                   ListTile(
//                     onTap: () {
//                       Navigator.pop(context);
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (_) => const AboutUsPage()));
//                     },
//                     title: const Text(
//                       "Add New Bank Account",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),  //new child
//           ),
//         ],
//       ),
//     );
//   }
// }
//
