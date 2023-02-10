import 'package:call_me_maybe/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  static const _phone = '555 555 5555';
  static const _email = 'moylanm@oregonstate.edu';
  static const _website = 'github.com/moylanm';

  final _phoneUri = Uri(
    scheme: 'sms',
    path: _phone
  );
  final _emailUri = Uri(
    scheme: 'mailto',
    path: _email,
  );
  final _websiteUri = Uri(
    scheme: 'https',
    path: _website,
  );

  BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/images/selfie.jpg'),
            const SizedBox(height: 10),
            Text('Myles Moylan', style: Styles.textDefault),
            const SizedBox(height: 5),
            Text('Software Developer', style: Styles.textSmall),
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
      child: Text(_phone, style: Styles.textSmall),
    );
  }

  Widget _githubButton() {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(_websiteUri)) {
          await launchUrl(_websiteUri); 
        } else {
          throw 'cannot launch';
        }
      },
      child: Text(_website, style: Styles.textSmall),
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
      child: Text(_email, style: Styles.textSmall),
    );
  }
}