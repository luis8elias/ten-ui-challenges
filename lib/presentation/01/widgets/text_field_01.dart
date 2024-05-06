import 'package:flutter/material.dart';

class TextField01 extends StatefulWidget {
  const TextField01({
    super.key,
    required this.borderRadius,
    required this.label,
  });

  final String label;
  final BorderRadius borderRadius;

  @override
  State<TextField01> createState() => _TextField01State();
}

class _TextField01State extends State<TextField01> {
  @override
  Widget build(BuildContext context) {

    final theme  = Theme.of(context);

    return TextField(
      cursorColor: theme.colorScheme.primary,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        enabledBorder:  OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: BorderSide(
            color: theme.colorScheme.secondary,
             width: 0.6
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 0.6
          )
        ),
        fillColor: theme.colorScheme.background,
        label: Text(widget.label),
        hintText: widget.label,
        hintStyle: theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.secondary,
        ),
        labelStyle: theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}