// Packages
import 'package:flutter/material.dart';

// Components
import 'package:persona_generator/components/persona_attribute.dart';
import 'package:persona_generator/components/persona_description.dart';

class PersonaCard extends StatelessWidget {
  const PersonaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Press the button below!'),
                PersonaAttribute(),
              ],
            ),
            Container(
              height: 200.0,
              width: 200.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.5),
                border: Border.all(color: Colors.black),
              ),
              child: const CircleAvatar(
                foregroundImage: NetworkImage(
                  'https://www.w3schools.com/howto/img_avatar.png',
                ),
              ),
            ),
            const PersonaDescription(),
          ],
        ),
      ),
    );
  }
}
