import 'dart:ffi';
import 'dart:math';

class Point {
  double x, y, z;
  Point(this.x, this.y, this.z);
  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point o) {
    double distance = 0;
    num xSquare = pow(this.x - o.x, 2);
    num ySquare = pow(this.y - o.y, 2);
    num zSquare = pow(this.z - o.z, 2);
    distance = sqrt(xSquare + ySquare + zSquare);
    return distance;
  }

  static double areaOfTriangle(Point a, Point b, Point c) {
    double area = 0;

    double sideA = a.distanceTo(b);
    double sideB = a.distanceTo(c);
    double sideC = c.distanceTo(b);

    double s = (sideA + sideB + sideC) / 2;

    area = sqrt(s * (s - sideA) * (s - sideB) * (s - sideC));

    return area;
  }
}
