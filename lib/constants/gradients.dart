import 'package:flutter/material.dart';

import './colors.dart';

const cReddishGradientColor = LinearGradient(
  colors: [cLightReddishColor, cDarkReddishColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const cDarkishGradientColor = LinearGradient(
  colors: [clightBlackColor, cdarkBlackColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const cYellowishGradientColor = LinearGradient(
  colors: [cLightYellowishColor, cDarkYellowishColor],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const cActiveCategoryGradientColor = LinearGradient(
  colors: [cLightReddishColor, cDarkReddishColor],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const cInactiveCategoryGradientColor = LinearGradient(
  colors: [
    Colors.white,
    Colors.white,
  ],
);

const cDetailsPageBlackGradientColor = LinearGradient(
  colors: [
    Colors.transparent,
    cBlackColorOpac,
  ],
  stops: [0.05, 0.95],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
