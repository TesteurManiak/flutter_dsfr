import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'palette.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors> {
  final Color frConnectHover;
  final Color frConnectActive;
  final Color frConnectBackground;
  final Color backgroundActionHighBlueFrance;
  final Color backgroundActionHighBlueFranceHover;
  final Color backgroundActionHighBlueFranceActive;
  final Color textInvertedBlueFrance;
  final Color borderActionHighBlueFrance;
  final Color blockColorHover;
  final Color blockColorActive;
  final Color defaultBorderGrey;

  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
    required this.backgroundActionHighBlueFrance,
    required this.backgroundActionHighBlueFranceHover,
    required this.backgroundActionHighBlueFranceActive,
    required this.textInvertedBlueFrance,
    required this.borderActionHighBlueFrance,
    required this.blockColorHover,
    required this.blockColorActive,
    required this.defaultBorderGrey,
  });

  const DSFRColors.light()
      : this._(
          frConnectHover: ColorPalette.blueFranceSun113Hover,
          frConnectActive: ColorPalette.blueFranceSun113Active,
          frConnectBackground: ColorPalette.blueFranceSun113,
          backgroundActionHighBlueFrance: ColorPalette.blueFranceSun113,
          backgroundActionHighBlueFranceHover:
              ColorPalette.blueFranceSun113Hover,
          backgroundActionHighBlueFranceActive:
              ColorPalette.blueFranceSun113Active,
          textInvertedBlueFrance: ColorPalette.blueFrance975,
          borderActionHighBlueFrance: ColorPalette.blueFranceSun113,
          blockColorHover: const Color.fromRGBO(224, 224, 224, 0.5),
          blockColorActive: const Color.fromRGBO(194, 194, 194, 0.5),
          defaultBorderGrey: const Color(0xFFe5e5e5),
        );

  const DSFRColors.dark()
      : this._(
          frConnectHover: ColorPalette.blueFrance625Hover,
          frConnectActive: ColorPalette.blueFrance625Active,
          frConnectBackground: ColorPalette.blueFrance625,
          backgroundActionHighBlueFrance: ColorPalette.blueFrance625,
          backgroundActionHighBlueFranceHover: ColorPalette.blueFrance625Hover,
          backgroundActionHighBlueFranceActive:
              ColorPalette.blueFrance625Active,
          textInvertedBlueFrance: ColorPalette.blueFranceSun113,
          borderActionHighBlueFrance: const Color(0xFF9a9aff),
          blockColorHover: const Color.fromRGBO(65, 65, 65, 0.5),
          blockColorActive: const Color.fromRGBO(99, 99, 99, 0.5),
          defaultBorderGrey: const Color(0xFF2a2a2a),
        );

  static DSFRColors of(BuildContext context) =>
      Theme.of(context).extension<DSFRColors>()!;

  @override
  DSFRColors copyWith({
    Color? backgroundActionHighBlueFrance,
    Color? backgroundActionHighBlueFranceHover,
    Color? backgroundActionHighBlueFranceActive,
    Color? textInvertedBlueFrance,
    Color? borderActionHighBlueFrance,
    Color? blockColorHover,
    Color? blockColorActive,
    Color? defaultBorderGrey,
  }) {
    return DSFRColors._(
      frConnectHover: frConnectHover,
      frConnectActive: frConnectActive,
      frConnectBackground: frConnectBackground,
      backgroundActionHighBlueFrance:
          backgroundActionHighBlueFrance ?? this.backgroundActionHighBlueFrance,
      backgroundActionHighBlueFranceHover:
          backgroundActionHighBlueFranceHover ??
              this.backgroundActionHighBlueFranceHover,
      backgroundActionHighBlueFranceActive:
          backgroundActionHighBlueFranceActive ??
              this.backgroundActionHighBlueFranceActive,
      textInvertedBlueFrance:
          textInvertedBlueFrance ?? this.textInvertedBlueFrance,
      borderActionHighBlueFrance:
          borderActionHighBlueFrance ?? this.borderActionHighBlueFrance,
      blockColorHover: blockColorHover ?? this.blockColorHover,
      blockColorActive: blockColorActive ?? this.blockColorActive,
      defaultBorderGrey: defaultBorderGrey ?? this.defaultBorderGrey,
    );
  }

  @override
  DSFRColors lerp(ThemeExtension<DSFRColors>? other, double t) {
    if (other is! DSFRColors) {
      return this;
    }
    return DSFRColors._(
      frConnectHover: Color.lerp(frConnectHover, other.frConnectHover, t)!,
      frConnectActive: Color.lerp(frConnectActive, other.frConnectActive, t)!,
      frConnectBackground:
          Color.lerp(frConnectBackground, other.frConnectBackground, t)!,
      backgroundActionHighBlueFrance: Color.lerp(
        backgroundActionHighBlueFrance,
        other.backgroundActionHighBlueFrance,
        t,
      )!,
      backgroundActionHighBlueFranceHover: Color.lerp(
        backgroundActionHighBlueFranceHover,
        other.backgroundActionHighBlueFranceHover,
        t,
      )!,
      backgroundActionHighBlueFranceActive: Color.lerp(
        backgroundActionHighBlueFranceActive,
        other.backgroundActionHighBlueFranceActive,
        t,
      )!,
      textInvertedBlueFrance: Color.lerp(
        textInvertedBlueFrance,
        other.textInvertedBlueFrance,
        t,
      )!,
      borderActionHighBlueFrance: Color.lerp(
        borderActionHighBlueFrance,
        other.borderActionHighBlueFrance,
        t,
      )!,
      blockColorHover: Color.lerp(blockColorHover, other.blockColorHover, t)!,
      blockColorActive:
          Color.lerp(blockColorActive, other.blockColorActive, t)!,
      defaultBorderGrey:
          Color.lerp(defaultBorderGrey, other.defaultBorderGrey, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<Color>> get props => [
        NamedProperty('frConnectHover', frConnectHover),
        NamedProperty('frConnectActive', frConnectActive),
        NamedProperty('frConnectBackground', frConnectBackground),
        NamedProperty(
          'backgroundActionHighBlueFrance',
          backgroundActionHighBlueFrance,
        ),
        NamedProperty(
          'backgroundActionHighBlueFranceHover',
          backgroundActionHighBlueFranceHover,
        ),
        NamedProperty(
          'backgroundActionHighBlueFranceActive',
          backgroundActionHighBlueFranceActive,
        ),
        NamedProperty('textInvertedBlueFrance', textInvertedBlueFrance),
        NamedProperty('borderActionHighBlueFrance', borderActionHighBlueFrance),
        NamedProperty('blockColorHover', blockColorHover),
        NamedProperty('blockColorActive', blockColorActive),
        NamedProperty('defaultBorderGrey', defaultBorderGrey),
      ];
}