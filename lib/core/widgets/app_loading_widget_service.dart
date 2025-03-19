import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../config/theming/colors.dart';

abstract class AppLoadingWidgetService {
  static OverlayEntry? _overlayEntry;

  static void showLoading(BuildContext context) {
    if (_overlayEntry == null) {
      OverlayState overlayState = Overlay.of(context);
      _overlayEntry = OverlayEntry(
        builder: (context) {
          return Material(
            color: Colors.transparent.withValues(alpha: 0.5),
            child: const Center(
              child: AppLoadingWidget(),
            ),
          );
        },
      );
      overlayState.insert(_overlayEntry!);
    }
  }

  static void hideLoading() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }
}

class AppLoadingWidget extends StatelessWidget {
  final double? size;
  const AppLoadingWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningLines(
      color: ColorsManager.primary,
      lineWidth: 3,
      duration: const Duration(seconds: 1),
      itemCount: 2,
      size: size ?? 50,
    );
  }
}
