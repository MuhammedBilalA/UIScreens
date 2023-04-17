import 'package:flutter/material.dart';
// import 'package:ui_design_screen/widgets/order5.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Ui_Design4 extends StatefulWidget {
  const Ui_Design4({super.key});

  @override
  State<Ui_Design4> createState() => _Ui_Design4State();
}

class _Ui_Design4State extends State<Ui_Design4> {
  final videoURL = "https://youtu.be/UIRHzireyfo";

  late YoutubePlayerController _controller;

  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // automaticallyImplyLeading: false,
        // centerTitle: true,
        // backgroundColor: Colors.blue[600],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        elevation: 0,
        title: const Text('Dukaan Premium'),
      ),
      body: ListView(children: [
        Stack(children: [
          Container(
            height: 205,
            width: double.infinity,
            color: Colors.blue,
          ),
          Positioned(
            top: 125,
            child: Container(
              height: 160,
              width: 700,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 20,
            left: 37,
            child: SizedBox(
              // color: Colors.white,
              height: 185,
              width: 280,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.all(5.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/dukaan.png',
                              height: 70,
                              width: 90,
                            ),
                            const Text(
                              'Get Dukaan Premium for just',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              '₹4,999/year',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900),
                            ),
                            // const SizedBox(height: 6,width: 4,),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                  'All the advanced features for scaling\nyour business.'),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(width: 30),
                  Text('Features', style: TextStyle(fontSize: 20)),
                ],
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Image.asset('assets/f1.jpeg'),
                title: const Text('Custom domain name',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text(
                    'Get your own domain and build\nyour brand on the internet.'),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Image.asset('assets/f2.jpeg'),
                title: const Text('Verified seller badge',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text(
                    'Get green verified badge under your\nstore name and build trust.'),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Image.asset('assets/f3.jpeg'),
                title: const Text('Dukaan for PC',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text(
                    'Access all the exclusive premium\nfeatures on dukaan for PC.'),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Image.asset('assets/f4.jpeg'),
                title: const Text('Priority support',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text(
                    'Get your questions resolved with our\npriority customer support.'),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('What is Dukaan Premium?',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                
                  // width: 400,
                  children: [
                    YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        onReady: () => debugPrint('Ready'),
                        bottomActions: [
                          CurrentPosition(),
                          ProgressBar(
                            isExpanded: true,
                            colors: const ProgressBarColors(
                                playedColor: Colors.amber,
                                handleColor: Colors.amberAccent),
                          ),
                          const PlaybackSpeedButton()
                        ])
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 2),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Frequently asked questions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              const SizedBox(height: 15),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'What type of businesses can use Dukaan\nPremium?',
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(Icons.remove),
              //   ],
              // ),
              // SizedBox(height: 15),
              // Column(
              //   children: [
              //     Text(
              //         'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand-anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'),
              //   ],
              // ),
              // Divider(thickness: 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'What is your refund policy?',
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(Icons.add),
              //   ],
              // ),
              // Divider(thickness: 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Will there be an automatic charge after the\npaid trial?',
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(Icons.add),
              //   ],
              // ),
              // Divider(thickness: 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'What payment methods do you offer?',
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(Icons.add),
              //   ],
              // ),
              // Divider(thickness: 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // Text(
              //     //   'What happens when my free trial ends?',
              //     //   style: TextStyle(fontWeight: FontWeight.bold),
              //     // ),
              //     // Icon(Icons.add),
              //     Question(question:'', answer: 'Mobile payments')
              //   ],
              // ),
              // Divider(thickness: 2),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'What are the terms for the custom domain?',
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(Icons.add),
              //   ],
              // ),
              Column(
                children: [
                  Question(
                      question: 'What type businesses use Dukaan\nPremium?',
                      answer: 'Dukaan caters to a wide variety of sellers.'),
                  Question(
                      question: 'What is your refund policy?',
                      answer: 'Promote your policy.'),
                  Question(
                      question:
                          'Will there be an automatic charge after the\npaid trial?',
                      answer: 'Avoid Paying Subscriptions.'),
                  Question(
                      question: 'What payment methods do you offer?',
                      answer: 'Electronic transfers.'),
                  Question(
                      question: 'What happens when my free trial ends?',
                      answer: 'Charged automatically.'),
                  Question(
                      question: 'What are the terms for the custom domain?',
                      answer: 'assigned identify them.'),
                ],
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 15),
              const Divider(thickness: 4),
              const SizedBox(height: 15),
              Column(
                children: const [
                  Text(
                    'Need help? Get in touch',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      shadowColor: Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 45),
                        child: Center(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.chat_bubble_outline,
                                size: 40,
                              ),
                              Text(
                                'Live Chat',
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 44),
                      child: Center(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.phone_outlined,
                              size: 30,
                            ),
                            Text('Phone Call')
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Select Domain',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      const SizedBox(width: 30),
                      InkWell(
                        onTap: () {},
                        child: TextButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ui_Design5(),));
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 24),
                            child: Text(
                              'Get Premium',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

// ignore: must_be_immutable
class Question extends StatefulWidget {
  String question;
  String answer;
  Question({super.key, required this.question, required this.answer});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          title: Text(
            widget.question,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.minimize_outlined : Icons.add,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
          childrenPadding: const EdgeInsets.only(bottom: 18),
          children: [
            ListTile(
              leading: Text(
                widget.answer,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 158, 158, 158)),
              ),
            )
          ],
        )
      ],
    );
  }
}



// class _WidgetState extends State<YoutubePlayer> {

  // final videoURL = "https://youtu.be/1Om9oJqHBGg";
  // late YoutubePlayerController _controller;
  // @override
  // void initSate() {
  //   final videoID = YoutubePlayer.convertUrlToId(videoURL);
  //   _controller = YoutubePlayerController(
  //     initialVideoId: videoID!,
  //     flags: const YoutubePlayerFlags(autoPlay: true),
  //   );
  //   super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Youtube player'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//             onReady: () => debugPrint('Ready'),
//             bottomActions: [
//               CurrentPosition(),
//               ProgressBar(
//                 isExpanded: true,
//                 colors: const ProgressBarColors(
//                   playedColor: Colors.amber,
//                   handleColor: Colors.amberAccent,
//                 ),
//               ),
//               const PlaybackSpeedButton(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
