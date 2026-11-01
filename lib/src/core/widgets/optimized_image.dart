// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class OptimizedImage extends StatelessWidget {
  const OptimizedImage({
    super.key,
    required this.src,
    required this.fit,
    this.cache = false,
    this.height,
    this.width,
  });

  final String src;
  final BoxFit fit;
  final bool cache;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      src,
      width: width,
      height: height,
      cache: cache,
      fit: fit,
      retries: 3,
      timeRetry: const Duration(seconds: 2),
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return Container(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: const Center(child: CircularProgressIndicator()),
            );
          case LoadState.failed:
            return IgnorePointer(
              child: GestureDetector(
                onTap: () => state.reLoadImage(),
                child: Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: const Icon(Icons.error),
                ), // ✅ ถ้าโหลดไม่ได้ กด Retry ได้
              ),
            );
          default:
            return AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 500),
              child: state.completedWidget,
            );
        }
      },
    );
  }
}
