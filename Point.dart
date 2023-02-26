import 'dart:ffi';
import 'dart:math';

class Point {
  double _x, _y, _z;
  Point(this._x, this._y, this._z);
  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.unitVector() {
    return Point(1, 1, 1);
  }
  double getX() {
    return this._x;
  }

  void setX(double x) {
    this._x = x;
  }

  double getY() {
    return this._y;
  }

  void setY(double y) {
    this._y = y;
  }

  double getZ() {
    return this._z;
  }

  void setZ(double z) {
    this._z = z;
  }

  double distanceTo(Point o) {
    double distance = 0;
    num xSquare = pow(this._x - o.getX(), 2);
    num ySquare = pow(this._y - o.getY(), 2);
    num zSquare = pow(this._z - o.getZ(), 2);
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
