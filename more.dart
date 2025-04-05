import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class More extends StatelessWidget {
  const More({super.key});

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
        title: const Text(
          'Our Church Channels',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 3, 3),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Membership ID'),
              leading: const Icon(Icons.person),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: Colors.white,
                    title: const Text('Membership ID'),
                    content: const Text('Membership ID Not Available Now'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            const Divider(),
            ListTile(
              title: const Text('Instagram'),
              leading: const Icon(FontAwesomeIcons.instagram,
                  color: Colors.pink), // Instagram icon
              onTap: () {
                launchUrl(
                    Uri.parse(
                        'https://www.instagram.com/fgci.wg?igshid=MWZjMTM2ODFkZg%3D%3D'),
                    mode: LaunchMode.externalApplication);
                launchUrl(Uri.parse(
                    'https://www.instagram.com/fgci.wg?igshid=MWZjMTM2ODFkZg%3D%3D'));
                // Handle Instagram tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Facebook'),
              leading: const Icon(FontAwesomeIcons.facebook,
                  color: Colors.blue), // Facebook icon
              onTap: () {
                launchUrl(Uri.parse('https://www.facebook.com/fgciwg'),
                    mode: LaunchMode.externalApplication);
                launchUrl(Uri.parse('https://www.facebook.com/fgciwg'));
                // Handle Facebook tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('TikTok'),
              leading: const Icon(FontAwesomeIcons.tiktok,
                  color: Colors.black), // TikTok icon
              onTap: () {
                launchUrl(
                    Uri.parse(
                        'https://www.tiktok.com/@fgci.wg?_t=8hAwVaBoFUb&_r=1'),
                    mode: LaunchMode.externalApplication);
                launchUrl(Uri.parse(
                    'https://www.tiktok.com/@fgci.wg?_t=8hAwVaBoFUb&_r=1'));
                // Handle TikTok tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Twitter'),
              leading: const Icon(FontAwesomeIcons.twitter,
                  color: Colors.blue), // Twitter icon
              onTap: () {
                launchUrl(
                    Uri.parse(
                        'https://x.com/fgciwg?s=21&t=MZ_CglXidKsnsfsbO6uu8w'),
                    mode: LaunchMode.externalApplication);
                launchUrl(Uri.parse(
                    'https://x.com/fgciwg?s=21&t=MZ_CglXidKsnsfsbO6uu8w'));
                // Handle Twitter tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('YouTube'),
              leading: const Icon(FontAwesomeIcons.youtube,
                  color: Colors.red), // YouTube icon
              onTap: () {
                launchUrl(Uri.parse('https://www.youtube.com/@fgciwg/shorts'),
                    mode: LaunchMode.externalApplication);
                // Handle YouTube tap
              },
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
