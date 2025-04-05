import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SundayServicePage extends StatelessWidget {
  const SundayServicePage({super.key});

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
        title: const Text('SUNDAY SERVICE',
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
                'assets/images/paps.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Our Sunday Service',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '''Join Us for a Powerful Sunday Service!

We invite you to a spirit-filled worship experience this Sunday at the Full Gospel Church Auditorium!

📅 Date: This Sunday ⏰ Time: 7:00 AM 📍 Location: Full Gospel Church Auditorium

Come and be blessed through uplifting praise, inspiring messages, and heartfelt fellowship. Let’s grow together in faith and experience the presence of God in a mighty way.

Come expectant, and don’t come alone—invite someone to share in the joy of worship!

See you there! ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Gallery',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6, // Adjust the number of images
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/${index + 1}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
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
