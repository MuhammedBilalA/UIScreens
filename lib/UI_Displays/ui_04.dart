import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class UI04 extends StatefulWidget {
  const UI04({super.key});

  @override
  State<UI04> createState() => _UI04State();
}

class _UI04State extends State<UI04> {

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
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        title: const Text('Dukaan Premium'),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardHead(),
          _sizedHeightBox(5),
          _featured(),
          _featuredbalence('assets/images/f1.jpeg', 'Custom Domain Name',
              "Get Your Own Custom Domain And Build Your Brand On The Internet."),
          _featuredbalence('assets/images/f2.jpeg', 'Verified Seller Badge',
              'Get green Verified Badge under Your Store Name And Build Trust.'),
          _featuredbalence('assets/images/f3.jpeg', 'Dukaan For PC',
              'Access All The Exclusive Premium Features On Dukaan For PC.S'),
          _featuredbalence('assets/images/f4.jpeg', 'Priority Support',
              'Get Your Qustions Resolved With Our Priority Customer Support.'),
          _dhukaanPremium(),
          const Text(
            '    Frequently asked questions',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          _sizedHeightBox(20),
          Question(
              question: 'What types of  businesses can use Dukaan Premium?',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          Question(
              question: 'What is your refund policy?',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          Question(
              question:
                  'Will there be an automatic charge after the paid trail',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          Question(
              question: 'What payment methods do you offer?',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          Question(
              question: 'What happens when my free trail ends?',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          Question(
              question: 'What are the terms for the custom domain?',
              answer:
                  'Dukaan caters to a wide varity of sellers.Be it a small grocery store or a big lagacy brand anyone who wants to sell their products/services one Dukaan is the perfect platform for you.'),
          const Divider(
            height: 32,
            color: Color.fromARGB(75, 130, 130, 130),
            thickness: 3.5,
          ),
          const Text(
            '    Need help? Get in touch',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          _sizedHeightBox(10),
          Row(
            children: [
              _help(Icons.chat_bubble_outline_outlined, 'Live Chat'),
              _help(Icons.phone_outlined, 'Phone Call')
            ],
          ),
          _sizedHeightBox(20),
          const Divider(
            color: Color.fromARGB(75, 130, 130, 130),
            thickness: 3.5,
          ),
          _last(),
          _sizedHeightBox(10)
        ],
      )),
    );
  }

  Widget _last() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Select Domain       ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Get Premium')),
          )
        ],
      ),
    );
  }

  Widget _help(icon, String title) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 7),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.white),
            width: 190,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: const Color.fromARGB(255, 113, 106, 106),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 113, 106, 106),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _dhukaanPremium() {
    return Column(
      children: [
        const Divider(
          height: 32,
          color: Color.fromARGB(75, 130, 130, 130),
          thickness: 3.5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' What is Dhukaan Premium?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              // Image.asset('assets/images/cardimg.jpg')
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
                ],
              )
            ],
          ),
        ),
        const Divider(
          height: 55,
          color: Color.fromARGB(75, 130, 130, 130),
          thickness: 3.5,
        ),
      ],
    );
  }

  Widget _featuredbalence(String image, String heading1, String heading2) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(image),
            ),
          ),
          SizedBox(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    heading1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 0),
                  child: Text(
                    heading2,
                    style: const TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sizedHeightBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _featured() {
    return const Padding(
      padding: EdgeInsets.only(left: 30, top: 5),
      child: Text(
        'Features',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget _cardHead() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 145,
          color: Colors.blue[600],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 5),
          child: Card(
            elevation: 6,
            shadowColor: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 260,
              width: 360,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 3),
                    child: SizedBox(
                        height: 125,
                        width: 125,
                        child: Image.asset(
                          'assets/images/dukaan.png',
                        )),
                  ),
                  const Text(
                    '''Get Dhukaan Premium For Just
                  ₹4,999/year''',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '''All the advanced features for scaling your 
                                business''',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

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
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.minimize_outlined : Icons.add,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
          childrenPadding: const EdgeInsets.only(bottom: 20),
          children: [
            ListTile(
              leading: Text(
                widget.answer,
                style: const TextStyle(
                    fontSize: 16,
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
