import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcdonald_project/components/about_mcdonald_detail.dart';
import 'package:mcdonald_project/components/contact_us_detail.dart';
import 'package:mcdonald_project/components/faq_detail.dart';
import 'package:mcdonald_project/components/more_login_screen.dart'; // Import the login screen
import 'package:mcdonald_project/components/birthday_party_detail.dart';
import 'package:mcdonald_project/components/more_privacy_detail.dart';
import 'package:mcdonald_project/components/more_term_conditional.dart';
import 'package:mcdonald_project/components/region_detail.dart';

class MoreDetail extends StatelessWidget {
  const MoreDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildListTile(context, Icons.person, 'My Account'),
        const Divider(),
        _buildListTile(context, Icons.card_giftcard, 'Birthday Party'),
        const Divider(),
        _buildListTile(context, Icons.help_outline, 'FAQ'),
        const Divider(),
        _buildListTile(context, Icons.info_outline, 'About McDonald\'s'),
        const Divider(),
        _buildListTile(context, Icons.email, 'Contact Us'),
        const Divider(),
        _buildListTile(context, Icons.article_outlined, 'Terms & Conditions'),
        const Divider(),
        _buildListTile(context, Icons.lock, 'Privacy Statement'),
        const Divider(),
        _buildListTile(context, Icons.language, 'Region & Language'),
        const Divider(),
        const SizedBox(height: 2),
      ],
    );
  }

  ListTile _buildListTile(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Iconsax.arrow_right_3),
      onTap: () {
        if (title == 'My Account') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        } else if (title == 'Birthday Party') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BirthdayPartyScreen()),
          );
        } else if (title == 'FAQ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FAQScreen()),
          );
        } else if (title == 'About McDonald\'s') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutMcdonaldPage()),
          );
        } else if (title == 'Contact Us') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactUsPage()),
          );
        } else if (title == 'Terms & Conditions') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MoreTermConditionsPage()),
          );
        } else if (title == 'Privacy Statement') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MorePrivacyDetail()),
          );
        } else if (title == 'Region & Language') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SelectRegionDetail()),
          );
        }
      },
    );
  }
}
