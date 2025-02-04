$fn = 100;
union()
{
  union()
  {
    difference()
    {
      cylinder(h = 60, r = 24, center = true);
      cylinder(h = 60.03, r = 21, center = true);
    }
    difference()
    {
      translate(v = [0, 0, -28.5])
      {
        cylinder(h = 3, r = 24, center = true);
      }
      translate(v = [0, 0, -28.5])
      {
        cylinder(h = 3.03, r = 5, center = true);
      }
    }
  }
  translate(v = [45, 0, 0])
  {
    union()
    {
      difference()
      {
        cylinder(h = 60, r = 24, center = true);
        cylinder(h = 60.03, r = 21, center = true);
      }
      difference()
      {
        translate(v = [0, 0, -28.5])
        {
          cylinder(h = 3, r = 24, center = true);
        }
        translate(v = [0, 0, -28.5])
        {
          cylinder(h = 3.03, r = 5, center = true);
        }
      }
    }
  }
  translate(v = [90, 0, 0])
  {
    union()
    {
      difference()
      {
        cylinder(h = 60, r = 24, center = true);
        cylinder(h = 60.03, r = 21, center = true);
      }
      difference()
      {
        translate(v = [0, 0, -28.5])
        {
          cylinder(h = 3, r = 24, center = true);
        }
        translate(v = [0, 0, -28.5])
        {
          cylinder(h = 3.03, r = 5, center = true);
        }
      }
    }
  }
}
