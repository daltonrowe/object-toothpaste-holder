import { cylinder, difference } from "scad-js";
import {
  collarHeight,
  collarHoleDiameter,
  holderDiameter,
  nothing,
  tolerance,
} from "../constants.js";

export default function () {
  return difference(
    cylinder(collarHeight, (holderDiameter / 2) - tolerance),
    cylinder(collarHeight + nothing, collarHoleDiameter / 2),
  );
}
