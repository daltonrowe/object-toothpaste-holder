import { cylinder, difference, union } from "scad-js";
import {
  drainDiameter,
  holderDiameter,
  holderHeight,
  holderThickness,
  nothing,
} from "./constants.js";
import collar from "./components/collar.js";

function holder() {
  return union(
    difference(
      cylinder(holderHeight, holderDiameter / 2 + holderThickness),
      cylinder(holderHeight + nothing, holderDiameter / 2),
    ),
    difference(
      cylinder(
        holderThickness,
        holderDiameter / 2 + holderThickness,
      ).translate_z((holderHeight / 2 - holderThickness / 2) * -1),
      cylinder(holderThickness + nothing, drainDiameter / 2).translate_z(
        (holderHeight / 2 - holderThickness / 2) * -1,
      ),
    ),
  );
}

export default function () {
  const offset = holderDiameter + holderThickness;
  return union(
    holder().debug(),
    collar(),
    holder().translate_x(offset),
    holder().translate_x(offset * 2),
  );
}
