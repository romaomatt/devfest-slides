import 'package:devfest_slides/slider/slider_components.dart';

class SliderManager {
  final List<Slide> slides;
  int currentSlideIndex = 0;

  SliderManager(this.slides) : assert(slides != null);

  Slide handlerSliderAction(SliderAction action) {
    int previousSlide = currentSlideIndex;

    if (action == SliderAction.next && currentSlideIndex < slides.length - 1) {
      currentSlideIndex++;
    } else if (action == SliderAction.previous && currentSlideIndex > 0) {
      currentSlideIndex--;
    }

    return currentSlideIndex != previousSlide ? slides[currentSlideIndex] : null;
  }
}
