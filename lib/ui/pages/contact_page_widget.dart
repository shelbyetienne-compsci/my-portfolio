import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/ui/widgets/header_widget.dart';
import 'package:my_portfolio/ui/widgets/page_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageWidget extends StatelessWidget {
  final GlobalKey sectionKey;

  const ContactPageWidget({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      sectionKey: sectionKey,
      needsMaxConstraint: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderWidget(text: "Contact"),
          SizedBox(height: 16),
          const Text("Interested in working together? Send me a message."),
          SizedBox(height: 8),
          ContactForm(),
        ],
      ),
    );
  }
}


class ContactForm extends ConsumerStatefulWidget {
  const ContactForm({super.key});

  @override
  ConsumerState<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends ConsumerState<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  Future<void> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'shelbycompsci@gmail.com',
      query: Uri.encodeFull(
        'subject=Portfolio Contact from $name&body=Name: $name\nEmail: $email\n\n$message',
      ),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch email client';
    }
  }

  void submitForm() async {
    if (_formKey.currentState!.validate()) {

      await sendEmail(
        name: nameController.text,
        email: emailController.text,
        message: messageController.text,
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth * 0.5),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter your email";
                }
                if (!value.contains("@")) {
                  return "Enter a valid email";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: messageController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: "Message",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter a message";
                }
                return null;
              },
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: submitForm,
              child: const Text("Send Message"),
            ),
          ],
        ),
      ),
    );
  }
}
