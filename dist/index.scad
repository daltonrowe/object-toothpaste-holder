$fn = 100;
union()
{
  union()
  {
    difference()
    {
      #union()
      {
        cylinder(h = 60, r = 22, center = true);
      }
      cylinder(h = 60.03, r = 19, center = true);
    }
    translate(v = [0, 0, 28.5])
    {
      cylinder(h = 3, r = 22, center = true);
    }
  }
  translate(v = [41, 0, 0])
  {
    union()
    {
      difference()
      {
        #union()
        {
          cylinder(h = 60, r = 22, center = true);
        }
        cylinder(h = 60.03, r = 19, center = true);
      }
      translate(v = [0, 0, 28.5])
      {
        cylinder(h = 3, r = 22, center = true);
      }
    }
  }
  translate(v = [82, 0, 0])
  {
    union()
    {
      difference()
      {
        #union()
        {
          cylinder(h = 60, r = 22, center = true);
        }
        cylinder(h = 60.03, r = 19, center = true);
      }
      translate(v = [0, 0, 28.5])
      {
        cylinder(h = 3, r = 22, center = true);
      }
    }
  }
}
