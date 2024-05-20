import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00576f),
      surfaceTint: Color(0xff006782),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007f9f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff436371),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc7e9fa),
      onSecondaryContainer: Color(0xff2d4d5a),
      tertiary: Color(0xff6a3e80),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9162a8),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fafd),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafd),
      onSurface: Color(0xff181c1e),
      surfaceVariant: Color(0xffdae4ea),
      onSurfaceVariant: Color(0xff3e484d),
      outline: Color(0xff6e797e),
      outlineVariant: Color(0xffbec8ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffeef1f4),
      inversePrimary: Color(0xff74d2f7),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff001f29),
      primaryFixedDim: Color(0xff74d2f7),
      onPrimaryFixedVariant: Color(0xff004d63),
      secondaryFixed: Color(0xffc6e8f8),
      onSecondaryFixed: Color(0xff001f29),
      secondaryFixedDim: Color(0xffaaccdb),
      onSecondaryFixedVariant: Color(0xff2a4b58),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff300247),
      tertiaryFixedDim: Color(0xffe8b3ff),
      onTertiaryFixedVariant: Color(0xff5f3476),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f7),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e6),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00495d),
      surfaceTint: Color(0xff006782),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007f9f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff264754),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff597987),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5b3072),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9162a8),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafd),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafd),
      onSurface: Color(0xff181c1e),
      surfaceVariant: Color(0xffdae4ea),
      onSurfaceVariant: Color(0xff3a4449),
      outline: Color(0xff576166),
      outlineVariant: Color(0xff727c82),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffeef1f4),
      inversePrimary: Color(0xff74d2f7),
      primaryFixed: Color(0xff007f9f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00647f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff597987),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff40606e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9162a8),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff764a8d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f7),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002632),
      surfaceTint: Color(0xff006782),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00495d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002632),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff264754),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff370b4e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5b3072),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafd),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafd),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae4ea),
      onSurfaceVariant: Color(0xff1c252a),
      outline: Color(0xff3a4449),
      outlineVariant: Color(0xff3a4449),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd3f1ff),
      primaryFixed: Color(0xff00495d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003140),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff264754),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff0d313d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5b3072),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff43185a),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f7),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff74d2f7),
      surfaceTint: Color(0xff74d2f7),
      onPrimary: Color(0xff003545),
      primaryContainer: Color(0xff007c9c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffaaccdb),
      onSecondary: Color(0xff113441),
      secondaryContainer: Color(0xff20414e),
      onSecondaryContainer: Color(0xffb4d6e6),
      tertiary: Color(0xffe8b3ff),
      onTertiary: Color(0xff471c5e),
      tertiaryContainer: Color(0xff8f60a6),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e6),
      surface: Color(0xff101416),
      onSurface: Color(0xffdfe3e6),
      surfaceVariant: Color(0xff3e484d),
      onSurfaceVariant: Color(0xffbec8ce),
      outline: Color(0xff889298),
      outlineVariant: Color(0xff3e484d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e6),
      inverseOnSurface: Color(0xff2d3133),
      inversePrimary: Color(0xff006782),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff001f29),
      primaryFixedDim: Color(0xff74d2f7),
      onPrimaryFixedVariant: Color(0xff004d63),
      secondaryFixed: Color(0xffc6e8f8),
      onSecondaryFixed: Color(0xff001f29),
      secondaryFixedDim: Color(0xffaaccdb),
      onSecondaryFixedVariant: Color(0xff2a4b58),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff300247),
      tertiaryFixedDim: Color(0xffe8b3ff),
      onTertiaryFixedVariant: Color(0xff5f3476),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313538),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff79d7fc),
      surfaceTint: Color(0xff74d2f7),
      onPrimary: Color(0xff001922),
      primaryContainer: Color(0xff359cbe),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffaed0e0),
      onSecondary: Color(0xff001922),
      secondaryContainer: Color(0xff7596a4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeab9ff),
      onTertiary: Color(0xff29003e),
      tertiaryContainer: Color(0xffaf7ec6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e6),
      surface: Color(0xff101416),
      onSurface: Color(0xfff8fbfe),
      surfaceVariant: Color(0xff3e484d),
      onSurfaceVariant: Color(0xffc2ccd2),
      outline: Color(0xff9aa4aa),
      outlineVariant: Color(0xff7a858a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e6),
      inverseOnSurface: Color(0xff262b2d),
      inversePrimary: Color(0xff004f64),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff00131b),
      primaryFixedDim: Color(0xff74d2f7),
      onPrimaryFixedVariant: Color(0xff003b4c),
      secondaryFixed: Color(0xffc6e8f8),
      onSecondaryFixed: Color(0xff00131b),
      secondaryFixedDim: Color(0xffaaccdb),
      onSecondaryFixedVariant: Color(0xff183a47),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff210033),
      tertiaryFixedDim: Color(0xffe8b3ff),
      onTertiaryFixedVariant: Color(0xff4d2364),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313538),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff6fbff),
      surfaceTint: Color(0xff74d2f7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff79d7fc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff6fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffaed0e0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffeab9ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e6),
      surface: Color(0xff101416),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3e484d),
      onSurfaceVariant: Color(0xfff6fbff),
      outline: Color(0xffc2ccd2),
      outlineVariant: Color(0xffc2ccd2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e6),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002e3c),
      primaryFixed: Color(0xffc6edff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff79d7fc),
      onPrimaryFixedVariant: Color(0xff001922),
      secondaryFixed: Color(0xffcaecfc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffaed0e0),
      onSecondaryFixedVariant: Color(0xff001922),
      tertiaryFixed: Color(0xfff8deff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeab9ff),
      onTertiaryFixedVariant: Color(0xff29003e),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313538),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
