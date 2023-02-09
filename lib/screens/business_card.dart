import 'package:call_me_maybe/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  static const _phone = '555 555 5555';
  static const _email = 'moylanm@oregonstate.edu';
  static const _github = 'github.com/moylanm';

  final _phoneUri = Uri(
    scheme: 'sms',
    path: _phone
  );
  final _emailUri = Uri(
    scheme: 'mailto',
    path: _email,
  );
  final _githubUri = Uri(
    scheme: 'https',
    path: _github,
  );

  BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Image.asset('assets/images/selfie.jpg'),
            const SizedBox(height: 10),
            Text('Myles Moylan', style: Styles.textDefault),
            const SizedBox(height: 5),
            const Text('Software Developer'),
            const SizedBox(height: 15),
            _phoneButton(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _githubButton(),
                const SizedBox(width: 20),
                _emailButton()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _phoneButton() {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(_phoneUri)) {
          await launchUrl(_phoneUri);
        } else {
          throw 'cannot launch';
        }
      },
      child: const Text(_phone),
    );
  }

  Widget _githubButton() {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(_githubUri)) {
          await launchUrl(_githubUri); 
        } else {
          throw 'cannot launch';
        }
      },
      child: const Text(_github),
    );
  }

  Widget _emailButton() {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(_emailUri)) {
          await launchUrl(_emailUri); 
        } else {
          throw 'cannot launch';
        }
      },
      child: const Text(_email),
    );
  }
}