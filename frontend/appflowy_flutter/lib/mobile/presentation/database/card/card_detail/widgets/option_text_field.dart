import 'package:appflowy/generated/flowy_svgs.g.dart';
import 'package:appflowy/mobile/presentation/widgets/widgets.dart';
import 'package:appflowy/util/field_type_extension.dart';
import 'package:appflowy_backend/protobuf/flowy-database2/protobuf.dart';
import 'package:flutter/material.dart';

class OptionTextField extends StatelessWidget {
  const OptionTextField({
    super.key,
    required this.controller,
    required this.type,
    required this.onTextChanged,
  });

  final TextEditingController controller;
  final FieldType type;
  final void Function(String value) onTextChanged;

  @override
  Widget build(BuildContext context) {
    return FlowyOptionTile.textField(
      controller: controller,
      autofocus: true,
      textFieldPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      onTextChanged: onTextChanged,
      leftIcon: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: type.mobileIconBackgroundColor,
        ),
        child: Center(
          child: FlowySvg(
            type.svgData,
            blendMode: null,
            size: const Size.square(22),
          ),
        ),
      ),
    );
  }
}
