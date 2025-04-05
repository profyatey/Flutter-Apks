import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Greatgathering extends StatelessWidget {
  const Greatgathering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Colors.white), // Replace with your desired icon
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text('The Great Gathering',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        backgroundColor: const Color.fromARGB(255, 102, 3, 3),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/5.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Great Gathering',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '''The Great Gathering: A Celebration of Faith and Unity

The Great Gathering is a powerful and spiritually enriching church program designed to bring believers together in worship, fellowship, and divine encounter. Rooted in faith and community, this event serves as a time of revival, inspiration, and renewed dedication to God's purpose.

Purpose of the Program
Spiritual Revival: The Great Gathering ignites a renewed passion for faith, encouraging attendees to deepen their relationship with God.

Unity in Christ: The event fosters fellowship, strengthening bonds among believers from different backgrounds and congregations.
Powerful Worship: Through heartfelt praise and worship sessions, participants experience the presence of God in a transformative way.
Biblical Teachings: Renowned pastors and speakers share impactful sermons, providing wisdom and guidance based on scripture.
Prayers & Miracles: A time of collective prayer, where individuals seek divine breakthroughs, healing, and answers to life's challenges.

What to Expect
Attendees can anticipate an atmosphere filled with joy, inspiration, and faith-driven experiences, including:

🎸 Live worship led by anointed musicians and choirs

🎤 Spoken word messages that empower and uplift

🕺 Performance by TDM Dancers

Special sessions for youth, families, and leaders

Why Attend?
The Great Gathering is not just a program—it's a movement of faith, a divine appointment, and a sacred opportunity to draw closer to God. Whether you're seeking spiritual renewal, encouragement, or a sense of belonging, this event will leave a lasting impact on your heart and soul.
Would you like me to personalize this further or add any details about your specific church’s event?''',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Connect with Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20), // Add spacing before the footer
            Container(
              color: const Color.fromARGB(
                  255, 102, 3, 3), // Dark background for the footer
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Phone:+233 24 495 6133 /+233 55 496 4244',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Email: fgciwg@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Ashaiman, Valco Flat, Ghana',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter,
                            color: Colors.white),
                        onPressed: () {
                          launchUrl(
                              Uri.parse(
                                  'https://x.com/fgciwg?s=21&t=MZ_CglXidKsnsfsbO6uu8w'),
                              mode: LaunchMode.externalApplication);
                          launchUrl(Uri.parse(
                              'https://x.com/fgciwg?s=21&t=MZ_CglXidKsnsfsbO6uu8w'));
                          // Add Twitter link
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.white),
                        onPressed: () {
                          launchUrl(
                              Uri.parse('https://www.facebook.com/fgciwg'),
                              mode: LaunchMode.externalApplication);
                          launchUrl(
                              Uri.parse('https://www.facebook.com/fgciwg'));
                          // Add Facebook link
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        onPressed: () {
                          launchUrl(
                              Uri.parse(
                                  'https://www.instagram.com/fgci.wg?igshid=MWZjMTM2ODFkZg%3D%3D'),
                              mode: LaunchMode.externalApplication);
                          launchUrl(Uri.parse(
                              'https://www.instagram.com/fgci.wg?igshid=MWZjMTM2ODFkZg%3D%3D'));
                          // Add Instagram link
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
