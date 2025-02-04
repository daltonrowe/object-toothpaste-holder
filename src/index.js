import { cylinder, difference, union } from "scad-js";
import {
  holderDiameter,
  holderHeight,
  holderThickness,
  nothing,
} from "./constants.js";

function holder() {
  return union(
    difference(
      cylinder(holderHeight, holderDiameter / 2 + holderThickness).debug(),
      cylinder(holderHeight + nothing, holderDiameter / 2),
    ),
    cylinder(holderThickness, holderDiameter / 2 + holderThickness).translate_z(
      holderHeight / 2 - holderThickness / 2,
    ),
  );
}

export default function () {
  const offset = holderDiameter + holderThickness;
  return union(
    holder(),
    holder().translate_x(offset),
    holder().translate_x(offset * 2),
  );
}
