import 'package:fgci/greatgathering.dart';
import 'package:fgci/more.dart';
import 'package:fgci/sundayservice.dart';
import 'package:fgci/youtube.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 102, 3, 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //SPACING 1
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo3.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: const Color.fromARGB(255, 255, 253, 253),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const More(),
                              ),
                            );
                          },
                          icon: const Icon(
                            FontAwesomeIcons.bars,
                            color: Color.fromARGB(255, 6, 2, 2),
                            size: 30,
                          ),
                        )),
                  ]),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            //SPACING 2
            const SizedBox(
              height: 56,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                // THe Beginning of the scrowable view container ......................................
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SundayServicePage()));
                        },
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,
                            //this the first container with a background image 111111111111111111111111
                            image: const DecorationImage(
                              image: AssetImage('assets/images/paps.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          width: double.infinity,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      '''  SUNDAY SERVICE''',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 102, 3, 3),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      //SPACING 3
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const YouTubePage(
                                        videoUrl:
                                            'https://www.youtube.com/watch?v=6ca0tKkTfKw',
                                      )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,
                            // This is the first container with a background image   22222222
                            image: const DecorationImage(
                              image: AssetImage('assets/images/action.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          height: 300,
                          width: double.infinity,
                          // This is the first container with a messase
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      ''' PAROUSIA''',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 102, 3, 3),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                      ),
                      //SPACING 4
                      const SizedBox(
                        height: 25,
                      ),

                      // This is the second container with a different background
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Greatgathering()));
                          // Handle tap event here
                          // For example, navigate to another screen or show a dialog
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/altbg.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          height: 300,
                          width: double.infinity,
                          // This is the Last Text in the container GGGGGGGGGGGGGGGGRRRRRRRRRREEEEEEEEAATTTTT GATHERING
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      ''' GREAT GATHERING''',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 102, 3, 3),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 20.0), // Add vertical spacing
              child: Text(
                'TESTIMONIALS',
                textAlign: TextAlign.left, // Center the text
                style: TextStyle(
                  fontSize: 30, // Increase font size
                  color: Colors.white, // Keep the text color white
                  fontWeight: FontWeight.bold, // Make the text bold
                  letterSpacing: 2.0, // Add letter spacing for a modern look
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0), // Add a shadow effect
                      blurRadius: 4.0,
                      color: Colors.black38,
                    ),
                  ],
                  // Set underline thickness
                ),
              ),
            ),

            Wrap(
              spacing: 20.0, // Horizontal spacing between containers
              runSpacing: 20.0, // Vertical spacing between rows of containers

              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  height: 300,
                  width: 350,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/euge.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '''-Eugene- Parousia wasn’t just another church program; it was an encounter, a moment of surrender, a gateway into deep worship that I never knew I needed.From the moment I stepped into the auditorium, I could feel something different. The air was thick with expectation, hearts wide open in worship. As the choir began to sing, it wasn’t just voices—it was a wave, a sound that lifted our spirits into heavenly realms.''',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  height: 300,
                  width: 350,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/ivy.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '''-Ivy- And when the word was shared, it was as if God Himself was speaking directly to us. His presence was so tangible, so undeniable, that no one left the same. Hearts were set on fire, faith was rekindled, and lives were transformed.We danced like David, forgetting ourselves in the presence of the Almighty. Chains broke, souls were restored, and healing flowed like a mighty river. I came in searching. I left changed. ''',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 102, 3, 3),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              '© 2025 FGCI. All rights reserved.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
