###
  system.coffee

  The basic paramters for solar system
###
define [
  'exports'
  'cs!../../physics/units/au'
], (s, au) ->

    m1 = 1
    m2 = 1 / 1047
    a = 5.458104
    l = 1.01671388

    M = m1 + m2
    x1 = m2 / M * a
    x2 = - m1 / M * a

    v  = Math.sqrt(au.G * M / a)
    v1 = v / M * m2
    v2 = - v / M * m1
    v3 =  Math.sqrt(au.G * M / l)

    s.m1 = m1
    s.m2 = m2
    s.p1 = [x1, 0]
    s.p2 = [x2, 0]
    s.p3 = [0, l]
    s.v1 = [0, v1]
    s.v2 = [0, v2]
    s.v3 = [v3, 0]

    s