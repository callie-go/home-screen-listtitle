import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/button/widgets/ticket_clipper.dart';

class MaterialButtonWidget extends StatefulWidget {
  const MaterialButtonWidget({super.key});

  @override
  State<MaterialButtonWidget> createState() => _MaterialButtonWidgetState();
}

class _MaterialButtonWidgetState extends State<MaterialButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: TicketClipper(
            borderRadius: 12,
            xClipperStart: MediaQuery.sizeOf(context).width * 0.2,
            xClipRadius: 12,
          ),
          child: MaterialButton(
            onPressed: () {},
            minWidth: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: Text('Material Button'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        // second
        RawMaterialButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minWidth: MediaQuery.sizeOf(context).width,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.transparent,
          elevation: 0,
          focusElevation: 1.5,
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
          child: ClipPath(
            clipper: TicketClipper(
              borderRadius: 10,
              xClipperStart: MediaQuery.sizeOf(context).width * 0.23,
              xClipRadius: 8,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              color: Colors.grey,
              child: const Text('Raw Material Button'),
            ),
          ),
        ),
      ],
    );
  }
}
