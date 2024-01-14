import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:racing/c_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SvgPicture.asset('images/bell.svg'),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          ST(
            onTap: () {},
            t: 'Privacy Policy',
          ),
          ST(
            onTap: () {},
            t: 'Terms of use',
          ),
          ST(
            onTap: () {},
            t: 'Write support',
          ),
          ST(
            onTap: () {},
            t: 'Rate app',
          ),
        ],
      ),
    );
  }
}

class ST extends StatelessWidget {
  const ST({super.key, required this.onTap, required this.t});
  final VoidCallback onTap;
  final String t;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: CTheme.darkGreyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                t,
                style: const TextStyle(
                  color: CTheme.whiteColor,
                  fontSize: 16,
                ),
              ),
            ),
            SvgPicture.asset('images/circle_arrow.svg'),
          ],
        ),
      ),
    );
  }
}
