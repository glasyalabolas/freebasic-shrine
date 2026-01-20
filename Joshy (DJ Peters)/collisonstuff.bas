#include once "crt.bi"        ' math.bi
#include once "crt/limits.bi" ' FLT_MAX

const as single EPSILON = 0.0001

#define dot(x_,y_) ( (x_).x*(y_).x + (x_).y*(y_).y + (x_).z*(y_).z )

#define getMin(a_,b_) iif((a_)<(b_),(a_),(b_))
#define getMax(a_,b_) iif((a_)>(b_),(a_),(b_))


' Clamp n to lie within the range (a min, b max)
function Clamp(byref n as const single, _
               byref a as const single=0, _
               byref b as const single=1) as single
  if (n < a) then return a
  if (n > b) then return b
  return n
end function


type vec2
  declare constructor
  declare constructor(px as single, py as single)
  as single x,y
end type
constructor vec2
end constructor
constructor vec2(px as single, py as single)
  x=px : y=py
end constructor
operator -(byref l as const vec2,byref r as const vec2) as vec2
  return vec2(l.x-r.x, l.y-r.y)
end operator

type vec3
  declare constructor
  declare constructor(byref px as const single, _
                      byref py as const single, _
                      byref pz as const single)
  union
    type
      as single x,y,z
    end type
    as single f(2)
  end union
end type
constructor vec3
end constructor
constructor vec3(byref px as const single, _
                 byref py as const single, _
                 byref pz as const single)
  x=px:y=py:z=pz
end constructor

operator -(byref l as const vec3,byref r as const vec3) as vec3
  return vec3(l.x-r.x, l.y-r.y, l.z-r.z)
end operator
operator +(byref l as const vec3,byref r as const vec3) as vec3
  return vec3(l.x+r.x, l.y+r.y, l.z+r.z)
end operator
operator *(byref l as const vec3,byref r as const single) as vec3
  return vec3(l.x*r, l.y*r, l.z*r)
end operator
operator *(byref l as const single,byref r as const vec3) as vec3
  return vec3(l*r.x, l*r.y, l*r.z)
end operator
operator /(byref l as const vec3,byref r as const single) as vec3
  return vec3(l.x/r, l.y/r, l.z/r)
end operator

function cross(byref a as const vec3,byref b as const vec3) as vec3
  return vec3(a.y*b.z - a.z*b.y, _
              a.z*b.x - a.x*b.z, _
              a.x*b.y - a.y*b.x)
end function

function normalized (byref v as const vec3) as vec3
  dim as single d = dot(v,v)
  if d then d=1/sqrtf(d)
  return vec3(v.x*d,v.y*d,v.z*d)
end function

type mat3 ' A rotations matrix
  as single m(2,2)
end type

type PLANE
  declare constructor
  declare constructor (byref n as const vec3,byref  p as const vec3)
  declare constructor (byref n as const vec3,byref  d as const single)
  declare constructor (byref a as const vec3,byref  b as const vec3, c as const vec3)
  declare function getDistance(byref v as const vec3) as single
  as vec3   n ' Plane normal. Points x on the plane satisfy Dot(n,x) = d
  as single d ' d = dot(n,p) for a given point p on the plane
end type
constructor PLANE
  n=vec3(0,1,0) : d=0
end constructor
constructor PLANE(byref pn as const vec3, _
                  byref p as const vec3)
  n=pn : d = -Dot(n, p)
end constructor
constructor PLANE(byref pn as const vec3, _
                  byref pd as const single)
  n=pn : d=pd
end constructor
constructor PLANE(byref a as const vec3, _
                  byref b as const vec3, _
                  byref c as const vec3)
  n = Normalized(cross(b - a, c - a)) :  d = -Dot(n, a)
end constructor

function plane.getDistance(byref v as const vec3) as single
  return dot(n,v) + d
end function

type SPHERE ' A sphere bounding volume.
  as vec3   c ' center
  as single r ' radius
end type

type AABB ' A axis aligned bounding volume.
  as vec3 min
  as vec3 max
end type

type OBB  ' A oriented bounding box volume.
  as vec3 c    ' center  
  as vec3 u(2) ' axis
  as vec3 e    ' extends 
end type

type Capsule ' A sphere caped cylinder volume.
  as vec3   a
  as vec3   b
  as single r ' radius
end type

type Lozenge ' A SSV Sphere swept volume.
  as vec3   a    ' origin
  as vec3   u(1) ' the two edges axes of the rectangle
  as single r    ' radius
end type

' A slab is the infinite region of space between two planes,
' defined by a normal n and two signed distances from the origin.
type Slab
  as single n(2)  ' Normal n = (a, b, c)
  as single dNear ' Signed distance from origin for near plane (dNear)
  as single dFar  ' Signed distance from origin for far plane (dFar)
end type

type DOP8 ' Discrete-orientation Polytopes
  as single min(3) ' Minimum distance (from origin) along axes 0 to 3
  as single max(3) ' Maximum distance (from origin) along axes 0 to 3
end type

type KDOP
  as single min(3)
  as single max(3)
end type

type Rect
  as vec3   c    ' center point of rectangle
  as vec3   u(1) ' unit vectors determining local x and y axes for the rectangle
  as single e(1) ' the halfwidth extents of the rectangle along the axes
end type

type TRIANGLE2D
  declare constructor(byref v0 as const vec2, _
                      byref v1 as const vec2, _
                      byref v2 as const vec2)
  as vec2 a,b,c
  as vec2 ba,cb,ac
end type
constructor TRIANGLE2D(byref v0 as const vec2, _
                       byref v1 as const vec2, _
                       byref v2 as const vec2)
  a=v0 : b=v1 : c=v2
  ba=b-a : cb=c-b :ac=a-c
end constructor

type TRIANGLE
  declare constructor(byref v0 as const vec3, _
                      byref v1 as const vec3, _
                      byref v2 as const vec3)
  as vec3   a,b,c
  as vec3   n,absn
  as single d
end type
constructor TRIANGLE(byref v0 as const vec3, _
                     byref v1 as const vec3, _
                     byref v2 as const vec3)
  a=v0:b=v1:c=v2
  absn = Cross(b - a, c - a)
  n = normalized(absn)
  d = -dot(n,a)
  if absn.x<0 then absn.x=-absn.x
  if absn.y<0 then absn.y=-absn.y
  if absn.z<0 then absn.z=-absn.z
end constructor

type PLANETRIANGLE
  declare constructor(byref a as const vec3, _
                      byref b as const vec3, _
                      byref c as const vec3)
  as vec3  n
  as plane p
  as plane edgeBC
  as plane edgeCA
end type
constructor PLANETRIANGLE(byref a as const vec3, _
                          byref b as const vec3, _
                          byref c as const vec3)
  dim as vec3 n = cross(b-a, c-a)
  p = Plane(n, a)
  edgeBC = Plane(Cross(n,c-b), b)
  edgeCA = Plane(Cross(n,a-c), c)
  edgeBC.d *= 1.0 / (Dot(a, edgeBC.n) - edgeBC.d)
  edgeCA.d *= 1.0 / (Dot(b, edgeCA.n) - edgeCA.d)
end constructor

function scalarTriple(byref a as const vec3, _
                      byref b as const vec3, _
                      byref c as const vec3) as single
  return dot(a,cross(b,c))
end function
 
function vectorTriple(a as const vec3, b as const vec3, c as const vec3) as vec3
  return cross(a,cross(b,c))
end function

function Triangle2DArea(byref x1 as const single, byref y1 as const single, _
                        byref x2 as const single, byref y2 as const single, _
                        byref x3 as const single, byref y3 as const single)  as single
  return (x1-x2) * (y2-y3) - (x2-x3) * (y1-y2)
end function

' Compute the 2D pseudo cross product Dot(Perp(u), v)
function cross2D(byref u as const vec2, _
                 byref v as const vec2) as single
  return u.y * v.x - u.x * v.y
end function

' Returns 2 times the signed triangle area. The result is positive if
' abc is ccw, negative if abc is cw, zero if abc is degenerate.
function SignedTriangle2DArea(byref a as const vec3, _
                              byref b as const vec3, _
                              byref c as const vec3) as single
  return (a.x - c.x) * (b.y - c.y) - (a.y - c.y) * (b.x - c.x)
end function

function TriangleIsCCW overload(byref a as const vec3, _
                                byref b as const vec3, _
                                byref c as const vec3) as boolean
  dim as vec3 n= normalized(cross(b-a,c-a))
  dim as vec3 c1 = a - b
  dim as vec3 c2 = a - c
  c1 = cross(c1, c2)
  return iif(Dot(n,c1) > EPSILON,true,false)
end function

function TriangleIsCCW(byref t as const TRIANGLE) as boolean
  dim as vec3 c1 = t.a - t.b
  dim as vec3 c2 = t.a - t.c
  c1 = cross(c1, c2)
  return iif(Dot(t.n,c1) > EPSILON,true,false)
end function


sub Barycentric(byref t as const TRIANGLE, _
                byref p as const vec3, _
                byref u as single, _
                byref v as single, _
                byref w as single)
  #define Area2D(x_1,y_1, x_2,y_2, x_3,y_3) (x_1-x_2) * (y_2-y_3) - (x_2-x_3) * (y_1-y_2)
  dim as vec3 m = t.absn
  dim as single nu=any, nv=any, ood=any
  if (m.x >= m.y andalso m.x >= m.z) then
    nu = Area2D(p.y, p.z, t.b.y, t.b.z, t.c.y, t.c.z)
    nv = Area2D(p.y, p.z, t.c.y, t.c.z, t.a.y, t.a.z)
    ood = 1.0 / m.x
  elseif (m.y >= m.x andalso m.y >= m.z) then
    nu = Area2D(p.x, p.z, t.b.x, t.b.z, t.c.x, t.c.z)
    nv = Area2D(p.x, p.z, t.c.x, t.c.z, t.a.x, t.a.z)
    ood = 1.0 /-m.y
  else
    nu = Area2D(p.x, p.y, t.b.x, t.b.y, t.c.x, t.c.y)
    nv = Area2D(p.x, p.y, t.c.x, t.c.y, t.a.x, t.a.y)
    ood = 1.0 / m.z
  end if
  u = nu * ood
  v = nv * ood
  w = 1.0 - u - v
  #undef Area2D
end sub

' Test if 2D point P lies inside the counterclockwise 2D triangle ABC
function PointInCCWTriangle2D (byref p as const vec2, _
                               byref a as const vec2, _
                               byref b as const vec2, _
                               byref c as const vec2) as boolean
  ' If P to the right of AB then outside triangle
  if (cross2D(p-a, b-a) < 0.0) then return false
  ' If P to the right of BC then outside triangle
  if (cross2D(p-b, c-b) < 0.0) then return false
  ' If P to the right of CA then outside triangle
  if (cross2D(p-c, a-c) < 0.0) then return false
  ' Otherwise P must be in (or on) the triangle
  return true
end function

' Test if 2D point P lies inside 2D triangle t
function PointInTriangle2D overload(byref p as const vec2, _
                                    byref t as const TRIANGLE2D) as boolean
  dim as single pab = Cross2D(p - t.a,t.ba)
  dim as single pbc = Cross2D(p - t.b,t.cb)
  ' If P left of one of AB and BC and right of the other, not inside triangle
  if sgn(pab)<>sgn(pbc) then return false
  dim as single pca = Cross2D(p - t.c, t.ac)
  ' If P left of one of AB and CA and right of the other, not inside triangle
  return iif( sgn(pab)=sgn(pca),false,true)
end function
' Test if 2D point P lies inside 2D triangle abc
function PointInTriangle2D(byref p as const vec2, _
                           byref a as const vec2, _
                           byref b as const vec2, _
                           byref c as const vec2) as boolean
  dim as single pab = Cross2D(p - a, b - a)
  dim as single pbc = Cross2D(p - b, c - b)
  ' If P left of one of AB and BC and right of the other, not inside triangle
  if sgn(pab)<>sgn(pbc) then return false
  dim as single pca = Cross2D(p - c, a - c)
  ' If P left of one of AB and CA and right of the other, not inside triangle
  return iif( sgn(pab)=sgn(pca),false,true)
end function
' Test if 3D point P lies inside 3D triangle t
function PointInTRIANGLE overload (p as const vec3, t as const TRIANGLE) as boolean
  dim as single u=any,v=any,w=any
  Barycentric(t,p,u,v,w)
  if v<0 then return false
  if w<0 then return false
  if (v+w) > 1 then return false
  return true
end function

' Test if 3D point P lies inside the counterclockwise 3D triangle _A,_B,_C
function PointInCCWTriangle overload(byref p  as const vec3, _
                                     byref _a as const vec3, _
                                     byref _b as const vec3, _
                                     byref _c as const vec3) as boolean
  ' Translate point and triangle so that point lies at origin
  dim as vec3 a = _a-p
  dim as vec3 b = _b-p
  dim as vec3 c = _c-p
  dim as single ab = Dot(a,b)
  dim as single ac = Dot(a,c)
  dim as single bc = Dot(b,c)
  dim as single cc = Dot(c,c)
  ' Make sure plane normals for pab and pbc point in the same direction
  if ((bc * ac - cc * ab) < 0.0) then return false
  ' Make sure plane normals for pab and pca point in the same direction
  dim as single bb = Dot(b, b)
  return iif( (ab * bc - ac * bb) < 0.0,false,true)
end function
' Test if 3D point P lies inside the counterclockwise 3D triangle t
function PointInCCWTriangle(byref p  as const vec3, _
                            byref t  as const TRIANGLE) as boolean
  ' Translate point and triangle so that point lies at origin
  dim as vec3 a = t.a-p
  dim as vec3 b = t.b-p
  dim as vec3 c = t.c-p
  dim as single ab = Dot(a,b)
  dim as single ac = Dot(a,c)
  dim as single bc = Dot(b,c)
  dim as single cc = Dot(c,c)
  ' Make sure plane normals for pab and pbc point in the same direction
  if ((bc * ac - cc * ab) < 0.0) then return false
  ' Make sure plane normals for pab and pca point in the same direction
  dim as single bb = Dot(b, b)
  return iif( (ab * bc - ac * bb) < 0.0,false,true)
end function

function IsQuadConvex(byref a as const vec3, _
                      byref b as const vec3, _
                      byref c as const vec3, _
                      byref d as const vec3) as boolean
  dim as vec3 tmp = d - b
  dim as vec3 va = cross(tmp, a - b)
  dim as vec3 vb = cross(tmp, c - b)
  if dot(va,vb) < 0.0 then
    tmp = c - a
    va = cross(tmp, d - a)
    vb = cross(tmp, b - a)
    if dot(va,vb) < 0.0 then return true
    ' return false !!!
  end if
  ' return false !!!
  return true
end function

' Transform AABB a by the matrix and translation,
' find maximum extents, and store result into AABB b.
sub UpdateAABB(byref a as const AABB, _
               byref rotation as const mat3, _
							 byref position as const vec3, _
							 byref b as AABB)
  for i as integer=0 to 2
    ' Start by adding in translation
    b.min.f(i) = position.f(i)
    b.max.f(i) = position.f(i)
    ' Form extent by summing smaller and larger terms respectively
    for j as integer = 0 to 2
      dim as single e = rotation.m(i,j) * a.min.f(j)
      dim as single f = rotation.m(i,j) * a.max.f(j)
      if (e < f) then
        b.min.f(i) += e
        b.max.f(i) += f
      else
        b.min.f(i) += f
        b.max.f(i) += e
      end if
    next
  next
end sub

' Two AABBs only overlap if they overlap on all three axes, where their extent along
' each dimension is seen as an interval on the corresponding axis.
function TestAABB_AABB(byref a as const AABB, _
                      byref b as const AABB) as boolean
  if a.max.x < b.min.x then return false
  if a.min.x > b.max.x then return false
  if a.max.y < b.min.y then return false
  if a.min.y > b.max.y then return false
  if a.max.z < b.min.z then return false
  if a.min.z > b.max.z then return false
  return true
end function

function TestOBB_OBB(byref a as const OBB, _
                    byref b as const OBB) as boolean
  dim as single ra=any, rb=any
  dim as single R(2,2)=any, AbsR(2,2)=any
  ' Compute rotation matrix expressing b in a's coordinate frame
  for i as integer = 0 to 2
    for j as integer = 0 to 2
      R(i,j) = a.u(i).x*b.u(j).x + a.u(i).y*b.u(j).y + a.u(i).z*b.u(j).z
    next
  next
  ' Compute translation vector t
  dim as vec3 t = b.c - a.c
  ' Bring translation into a's coordinate frame
  t = vec3( dot(t,a.u(0)), dot(t,a.u(1)), dot(t,a.u(2) ) )
  ' Compute common subexpressions. Add in an epsilon term to
  ' counteract arithmetic errors when two edges are parallel and
  ' their cross product is (near) null (see text for details)
  for i as integer = 0 to 2
    for j as integer = 0 to 2
      AbsR(i,j) = fAbs(R(i,j)) + EPSILON
    next
  next
  ' Test axes L = A0, L = A1, L = A2
  for i as integer = 0 to 2
    ra = a.e.f(i)
    rb = b.e.f(0) * AbsR(i,0) + b.e.f(1) * AbsR(i,1) + b.e.f(2) * AbsR(i,2)
    if (fAbs(t.f(i)) > ra + rb) then return false
  next
  ' Test axes L = B0, L = B1, L = B2
  for i as integer = 0 to 2
    ra = a.e.f(0) * AbsR(0,i) + a.e.f(1) * AbsR(1,i) + a.e.f(2) * AbsR(2,i)
    rb = b.e.f(i)
    if (fAbs(t.f(0) * R(0,i) + t.f(1) * R(1,i) + t.f(2) * R(2,i)) > ra + rb) then return false
  next
  ' Test axis L = A0 x B0
  ra = a.e.f(1) * AbsR(2,0) + a.e.f(2) * AbsR(1,0)
  rb = b.e.f(1) * AbsR(0,2) + b.e.f(2) * AbsR(0,1)
  if (fAbs(t.f(2) * R(1,0) - t.f(1) * R(2,0)) > ra + rb) then return false
  ' Test axis L = A0 x B1
  ra = a.e.f(1) * AbsR(2,1) + a.e.f(2) * AbsR(1,1)
  rb = b.e.f(0) * AbsR(0,2) + b.e.f(2) * AbsR(0,0)
  if (fAbs(t.f(2) * R(1,1) - t.f(1) * R(2,1)) > ra + rb) then return false
  ' Test axis L = A0 x B2
  ra = a.e.f(1) * AbsR(2,2) + a.e.f(2) * AbsR(1,2)
  rb = b.e.f(0) * AbsR(0,1) + b.e.f(1) * AbsR(0,0)
  if (fAbs(t.f(2) * R(1,2) - t.f(1) * R(2,2)) > ra + rb) then return false
  ' Test axis L = A1 x B0
  ra = a.e.f(0) * AbsR(2,0) + a.e.f(2) * AbsR(0,0)
  rb = b.e.f(1) * AbsR(1,2) + b.e.f(2) * AbsR(1,1)
  if (fAbs(t.f(0) * R(2,0) - t.f(2) * R(0,0)) > ra + rb) then return false
  ' Test axis L = A1 x B1
  ra = a.e.f(0) * AbsR(2,1) + a.e.f(2) * AbsR(0,1)
  rb = b.e.f(0) * AbsR(1,2) + b.e.f(2) * AbsR(1,0)
  if (fAbs(t.f(0) * R(2,1) - t.f(2) * R(0,1)) > ra + rb) then return false
  ' Test axis L = A1 x B2
  ra = a.e.f(0) * AbsR(2,2) + a.e.f(2) * AbsR(0,2)
  rb = b.e.f(0) * AbsR(1,1) + b.e.f(1) * AbsR(1,0)
  if (fAbs(t.f(0) * R(2,2) - t.f(2) * R(0,2)) > ra + rb) then return false
  ' Test axis L = A2 x B0
  ra = a.e.f(0) * AbsR(1,0) + a.e.f(1) * AbsR(0,0)
  rb = b.e.f(1) * AbsR(2,2) + b.e.f(2) * AbsR(2,1)
  if (fAbs(t.f(1) * R(0,0) - t.f(0) * R(1,0)) > ra + rb) then return false
  ' Test axis L = A2 x B1
  ra = a.e.f(0) * AbsR(1,1) + a.e.f(1) * AbsR(0,1)
  rb = b.e.f(0) * AbsR(2,2) + b.e.f(2) * AbsR(2,0)
  if (fAbs(t.f(1) * R(0,1) - t.f(0) * R(1,1)) > ra + rb) then return false
  ' Test axis L = A2 x B2
  ra = a.e.f(0) * AbsR(1,2) + a.e.f(1) * AbsR(0,2)
  rb = b.e.f(0) * AbsR(2,1) + b.e.f(1) * AbsR(2,0)
  if (fAbs(t.f(1) * R(0,2) - t.f(0) * R(1,2)) > ra + rb) then return false
  ' Since no separating axis is found, the OBBs must be intersecting
  return true
end function


sub UpdateSphere(byref s as sphere, byref c as const vec3)
  s.c = c
end sub
function TestSphere_Sphere(byref a as const Sphere, _
                           byref b as const Sphere) as boolean
  dim as vec3   d = a.c - b.c
  dim as single dist2 = dot(d,d)
  dim as single sum2 = a.r + b.r : sum2 *= sum2
  return iif(dist2<sum2,true,false)
end function

' Computes closest points C1 and C2 of S1(s)=P1+s*(Q1-P1) and S2(t)=P2+t*(Q2-P2)
' returning s and t. Function result is squared distance between between S1(s) and S2(t)
function ClosestPtSegmentSegment(byref p1 as const vec3, byref q1 as const vec3, _
                                 byref p2 as const vec3, byref q2 as const vec3, _
                                 byref s as single, byref t as single, _
                                 byref c1 as vec3, byref c2 as vec3) as single

  dim as vec3 d1 = q1 - p1 ' Direction vector of segment S1
  dim as vec3 d2 = q2 - p2 ' Direction vector of segment S2
  dim as vec3 r = p1 - p2
  dim as single a = Dot(d1, d1) ' Squared length of segment S1, always nonnegative
  dim as single e = Dot(d2, d2) ' Squared length of segment S2, always nonnegative
  dim as single f = Dot(d2, r)
  ' Check if either or both segments degenerate into points
  if (a <= EPSILON andalso e <= EPSILON) then
    ' Both segments degenerate into points
    s = 0 : t = 0.0 : c1 = p1 : c2 = p2
    dim as vec3 c12 = c1 - c2
    return Dot(c12,c12)
  end if
  if (a <= EPSILON) then
    ' First segment degenerates into a point
    s = 0.0 : t = f / e : t = Clamp(t)
  else
    dim as single c = Dot(d1, r)
    if (e <= EPSILON) then
      ' Second segment degenerates into a point
      t = 0.0 : s = Clamp(-c / a)
    else
      ' The general nondegenerate case starts here
      dim as single b = Dot(d1, d2)
      dim as single denom = a*e - b*b ' Always nonnegative
      ' If segments not parallel, compute closest point on L1 to L2 and
      ' clamp to segment S1. Else pick arbitrary s (here 0)
      if (denom <> 0.0) then
        s =b*f
        s-=c*e
        s/=denom
        s = Clamp(s)
        's = Clamp((b*f - c*e) / denom) !!!
      else
        s = 0.0
      end if
      ' Compute point on L2 closest to S1(s) using
      ' t = Dot((P1 + D1*s) - P2,D2) / Dot(D2,D2) = (b*s + f) / e
      t = (b*s + f) / e
      ' If t in [0,1] done. Else clamp t, recompute s for the new value
      ' of t using s = Dot((P2 + D2*t) - P1,D1) / Dot(D1,D1)= (t*b - c) / a
      ' and clamp s to [0, 1]
      if (t < 0.0) then
        t = 0.0
        s = -c / a
        s = Clamp(s) ' !!!
        's = Clamp(-c / a)
      elseif (t > 1.0) then
        t = 1.0
        s = b - c
        s /= a
        s = Clamp(s)
        's = Clamp((b - c) / a) ' !!!
      end if
    end if
  end if
  c1 = p1 + d1 * s
  c2 = p2 + d2 * t
  c1 = c1 - c2
  return Dot(c1,c1)
end function

function SqDistPointSegment(byref a as const vec3, _
                            byref b as const vec3, _
                            byref c as const vec3) as single
  dim as vec3 ab = b - a
  dim as vec3 ac = c - a
  dim as vec3 bc = c - b
  dim as single e = dot(ac,ab)
  ' Handle cases where c projects outside ab
  if (e <= 0.0) then return dot(ac,ac)
  dim as single f = dot(ab,ab)
  if (e >= f) then return dot(bc,bc)
  ' Handle cases where c projects onto ab
  return dot(ac,ac) - e * e / f
end function

function TestSphereCapsule(byref s as const Sphere, _
                           byref c as const Capsule) as boolean
  ' Compute (squared) distance between sphere center and capsule line segment
  dim as single dist2 = SqDistPointSegment(c.a, c.b, s.c)
  ' If (squared) distance smaller than (squared) sum of radii, they collide
  dim as single rsum2 = s.r + c.r : rsum2*=rsum2
  return iif(dist2>rsum2,false,true)
end function

function TestCapsule_Capsule(byref c1 as const Capsule, _
                             byref c2 as const Capsule) as boolean
  ' Compute (squared) distance between the inner structures of the capsules
  dim as single s, t
  dim as vec3 s1, s2
  dim as single dist2 = ClosestPtSegmentSegment(c1.a, c1.b, c2.a, c2.b, s, t, s1, s2)
  ' If (squared) distance smaller than (squared) sum of radii, they collide
  dim as single rsum2 = c1.r + c2.r : rsum2*=rsum2
  return iif(dist2>rsum2,false,true)
end function


function TestKDOP_KDOP(byref a as const KDOP, _
                       byref b as const KDOP, _
										 	byval k as integer) as boolean
  ' Check if any intervals are non-overlapping, return if so
  k\=2
  for i as integer = 0 to k-1
    if (a.min(i) > b.max(i) or a.max(i) < b.min(i)) then return false
  next
  ' All intervals are overlapping, so k-DOPs must intersect
  return true
end function


function ClosestPtPointPlane_n_not_unit(byref q as const vec3, _
                                        byref p as const PLANE) as vec3
  dim as single t = (Dot(p.n, q) - p.d) / Dot(p.n, p.n)
  return q - t*p.n
end function

function ClosestPtPointPlane(byref q as const vec3, _
                             byref p as const PLANE) as vec3
  dim as single t = Dot(p.n, q) - p.d
  return q - t * p.n
end function

' Given segment ab and point c, computes closest point d on ab.
' Also returns t for the parametric position of d, d(t) = a + t*(b - a)
sub ClosestPtPointSegment(byref c as const vec3, _
                          byref a as const vec3, _
                          byref b as const vec3, _
                          byref t as single, _
                          byref d as vec3)
  dim as vec3 ab = b - a
  ' Project c onto ab, but deferring divide by Dot(ab, ab)
  t = Dot(c - a, ab)
  if (t <= 0.0) then
    ' c projects outside the [a,b] interval, on the a side; clamp to a
    t = 0.0 : d = a
  else
    dim as single denom = Dot(ab, ab) ' Always nonnegative since denom = ||ab||
    if (t >= denom) then
      ' c projects outside the [a,b] interval, on the b side; clamp to b
      t = 1.0 : d = b
    else
      ' c projects inside the [a,b] interval; must do deferred divide now
      t = t  / denom
      d = a + t*ab
    end if
  end if
end sub

' Given point p, return the point q on or in AABB b that is closest to p
sub ClosestPtPointAABB(byref p as const vec3, _
                       byref b as const AABB, _
                       byref q as vec3)
  ' For each coordinate axis, if the point coordinate value is
  ' outside box, clamp it to the box, else keep it as is
  for i as integer = 0 to 2
    dim as single v = p.f(i)
    if (v < b.min.f(i)) then v = b.min.f(i)
    if (v > b.max.f(i)) then v = b.max.f(i)
    q.f(i) = v
  next
end sub

' Computes the square distance between a point p and an AABB b
function SqDistPointAABB(byref p as const vec3, _
                         byref b as const AABB) as single
  dim as single sqDist
  for i as integer = 0 to 2
    ' For each axis count any excess distance outside box extents
    dim as single v = p.f(i)
    if (v < b.min.f(i)) then sqDist += (b.min.f(i) - v) * (b.min.f(i) - v)
    if (v > b.max.f(i)) then sqDist += (v - b.max.f(i)) * (v - b.max.f(i))
  next
  return sqDist
end function

' Given point p, return point q on (or in) OBB b, closest to p
sub ClosestPtPointOBB(byref p as const vec3, _
                      byref b as const OBB, _
                      byref q as vec3)
  dim as vec3 d = p - b.c
  ' Start result at center of box make steps from there
  q = b.c
  ' For each OBB axis...
  for i as integer = 0 to 2
    ' ...project d onto that axis to get the distance
    ' along the axis of d from the box center
    dim as single dist = Dot(d, b.u(i))
    ' If distance farther than the box extents, clamp to the box
    if (dist > b.e.f(i)) then dist = b.e.f(i)
    if (dist <-b.e.f(i)) then dist =-b.e.f(i)
    ' Step that distance along the axis to get world coordinate
    q += dist * b.u(i)
  next
end sub

' Computes the square distance between point p and OBB b and returns the closest
function SqDistClosestPointOBB overload(byref p as const vec3, _
                                        byref b as const OBB, _
                                        byref closest as vec3) as single
  ClosestPtPointOBB(p, b, closest)
  dim as vec3 dist = closest - p
  return Dot(dist,dist)
end function

' Computes the square distance between point p and OBB b
function SqDistPointOBB(byref p as const vec3, _
                        byref b as const OBB) as single
  dim as vec3 v = p - b.c
  dim as single sqDist
  for i as integer = 0 to 2
    ' Project vector from box center to p on each axis, getting the distance
    ' of p along that axis, and count any excess distance outside box extents
    dim as single  excess, d = Dot(v, b.u(i))
  if (d < -b.e.f(i)) then
    excess = d + b.e.f(i)
  elseif (d > b.e.f(i)) then
    excess = d - b.e.f(i)
  end if
  sqDist += excess * excess
  next
  return sqDist
end function

' Given point p, return point q on (or in) Rect r, closest to p
sub ClosestPtPointRect overload (byref p as const vec3, _
                                 byref r as const Rect, _
                                       q as vec3)
  dim as vec3 d = p - r.c
  ' Start result at center of rect; make steps from there
  q = r.c
  ' For each rect axis...
  for i as integer = 0 to 1
    ' ...project d onto that axis to get the distance
    ' along the axis of d from the rect center
    dim as single dist = Dot(d, r.u(i))
    ' If distance farther than the rect extents, clamp to the rect
    if (dist > r.e(i)) then dist = r.e(i)
    if (dist <-r.e(i)) then dist =-r.e(i)
    ' Step that distance along the axis to get world coordinate
    q += dist * r.u(i)
  next
end sub

' Return point q on (or in) rect (specified by a, b, and c), closest to given point p
sub ClosestPtPointRect(byref p as const vec3, _
                       byref a as const vec3, _
                       byref b as const vec3, _
                       byref c as const vec3, _
                       byref q as       vec3)
   dim as vec3 ab = b - a ' vector across rect
   dim as vec3 ac = c - a ' vector down rect
   dim as vec3 d = p - a
  ' Start result at top-left corner of rect; make steps from there
  q = a
  ' Clamp p' (projection of p to plane of r) to rectangle in the across direction
  dim as single dist = Dot(d, ab)
  dim as single maxdist = Dot(ab, ab)
  if (dist >= maxdist) then
    q += ab
  elseif (dist > 0.0) then
    q += (dist / maxdist) * ab
  end if
  ' Clamp p' (projection of p to plane of r) to rectangle in the down direction
  dist = Dot(d, ac)
  maxdist = Dot(ac, ac)
  if (dist >= maxdist) then
    q += ac
  elseif (dist > 0.0) then
    q += (dist / maxdist) * ac
  end if
end sub

' slower as ClosestPtPointTriangle() to many cross product's
function ClosestPtPointTriangle_(byref p as const vec3, _
                                byref a as const vec3, _
                                byref b as const vec3, _
                                byref c as const vec3) as vec3
  dim as vec3 ab = b - a
  dim as vec3 ac = c - a
  dim as vec3 bc = c - b
  ' Compute parametric position s for projection P' of P on AB,
  ' P' = A + s*AB, s = snom/(snom+sdenom)
  dim as single  snom = Dot(p - a, ab), sdenom = Dot(p - b, a - b)
  ' Compute parametric position t for projection P' of P on AC,
  ' P' = A + t*AC, s = tnom/(tnom+tdenom)
  dim as single tnom = Dot(p - a, ac), tdenom = Dot(p - c, a - c)
  if (snom <= 0.0 andalso tnom <= 0.0) then return a ' Vertex region early out
  ' Compute parametric position u for projection P' of P on BC,
  ' P' = B + u*BC, u = unom/(unom+udenom)
  dim as single unom = Dot(p - b, bc), udenom = Dot(p - c, b - c)
  if (sdenom <= 0.0 andalso unom   <= 0.0) then return b ' Vertex region early out
  if (tdenom <= 0.0 andalso udenom <= 0.0) then return c ' Vertex region early out
  ' P is outside (or on) AB if the triple scalar product [N PA PB] <= 0
  dim as vec3 n = Cross(b - a, c - a)
  dim as single vc = Dot(n, Cross(a - p, b - p))
  ' If P outside AB and within feature region of AB,
  ' return projection of P onto AB
  if (vc <= 0.0 andalso snom >= 0.0 andalso sdenom >= 0.0) then return a + snom / (snom + sdenom) * ab
  ' P is outside (or on) BC if the triple scalar product [N PB PC] <= 0
  dim as single va = Dot(n, Cross(b - p, c - p))
  ' If P outside BC and within feature region of BC,
  ' return projection of P onto BC
  if (va <= 0.0 andalso unom >= 0.0 andalso udenom >= 0.0) then return b + unom / (unom + udenom) * bc
  ' P is outside (or on) CA if the triple scalar product [N PC PA] <= 0
  dim as single vb = Dot(n, Cross(c - p, a - p))
  ' If P outside CA and within feature region of CA,
  ' return projection of P onto CA
  if (vb <= 0.0 andalso tnom >= 0.0 andalso tdenom >= 0.0) then return a + tnom / (tnom + tdenom) * ac
  ' P must project inside face region. Compute Q using barycentric coordinates
  dim as single u = va / (va + vb + vc)
  dim as single v = vb / (va + vb + vc)
  dim as single w = 1.0 - u - v ' = vc / (va + vb + vc)
  return u * a + v * b + w * c
end function


function ClosestPtPointTriangle(byref p as const vec3, _
                                byref a as const vec3, _
                                byref b as const vec3, _
                                byref c as const vec3) as vec3
  ' Check if P in vertex region outside A
  dim as vec3 ab = b - a
  dim as vec3 ac = c - a
  dim as vec3 ap = p - a
  dim as single d1 = Dot(ab, ap)
  dim as single d2 = Dot(ac, ap)
  if (d1 <= 0.0 andalso d2 <= 0.0) then return a ' barycentric coordinates (1,0,0)
  ' Check if P in vertex region outside B
  dim as vec3 bp = p - b
  dim as single d3 = Dot(ab, bp)
  dim as single d4 = Dot(ac, bp)
  if (d3 >= 0.0 andalso d4 <= d3) then return b ' barycentric coordinates (0,1,0)
  ' Check if P in edge region of AB, if so return projection of P onto AB
  dim as single vc = d1*d4 - d3*d2
  if (vc <= 0.0 andalso d1 >= 0.0 andalso d3 <= 0.0) then
    dim as single v = d1 / (d1 - d3)
    return a + v * ab ' barycentric coordinates (1-v,v,0)
  end if
  ' Check if P in vertex region outside C
  dim as vec3 cp = p - c
  dim as single d5 = Dot(ab, cp)
  dim as single d6 = Dot(ac, cp)
  if (d6 >= 0.0 andalso d5 <= d6) then return c ' barycentric coordinates (0,0,1)
  '// Check if P in edge region of AC, if so return projection of P onto AC
  dim as single vb = d5*d2 - d1*d6
  if (vb <= 0.0 andalso d2 >= 0.0 andalso d6 <= 0.0) then
    dim as single w = d2 / (d2 - d6)
    return a + w * ac ' barycentric coordinates (1-w,0,w)
  end if
  ' Check if P in edge region of BC, if so return projection of P onto BC
  dim as single va = d3*d6 - d5*d4
  if (va <= 0.0 andalso (d4 - d3) >= 0.0 andalso (d5 - d6) >= 0.0) then
    dim as single w = (d4 - d3) / ((d4 - d3) + (d5 - d6))
    return b + w * (c - b) ' barycentric coordinates (0,1-w,w)
  end if
  ' P inside face region. Compute Q through its barycentric coordinates (u,v,w)
  dim as single denom = 1.0 / (va + vb + vc)
  dim as single v = vb * denom
  dim as single w = vc * denom
  return a + ab * v + ac * w
end function

' Test if point p lies outside plane through abc
function PointOutsideOfPlane overload (byref p as const vec3, _
                                       byref a as const vec3, _
                                       byref b as const vec3, _
                                       byref c as const vec3) as boolean
  return iif(Dot(p-a, Cross(b-a,c-a))<0,false,true)
end function

' Test if point p and d lie on opposite sides of plane through abc
function PointOutsideOfPlane(byref p as const vec3, _
                             byref d as const vec3, _
                             byref a as const vec3, _
                             byref b as const vec3, _
                             byref c as const vec3) as boolean
  dim as vec3 n = Cross(b - a, c - a)
  dim as single signp = Dot(p-a, n)
  dim as single signd = Dot(d-a, n)
  ' Points on opposite sides if expression signs are opposite
  return iif( (signp * signd) < 0.0,true,false)
end function




function ClosestPtPointTetrahedron(byref p as const vec3, _
                                   byref a as const vec3, _
                                   byref b as const vec3, _
                                   byref c as const vec3, _
                                   byref d as const vec3) as vec3
#define _PointOutsideOfPlane(p_,a_,b_,c_) iif (Dot((p_)-(a_), Cross((b_) - (a_), (c_) - (a_))) >=0.0,true,false)                                   
  ' Start out assuming point inside all halfspaces, so closest to itself
  dim as vec3 qp,q,closestPt = p
  dim as single sqDist,bestSqDist = FLT_MAX
  ' If point outside face abc then compute closest point on abc
  if (_PointOutsideOfPlane(p, a, b, c)) then
    q = ClosestPtPointTriangle(p, a, b, c)
    qp=q-p : sqDist = Dot(qp, qp)
    ' Update best closest point if (squared) distance is less than current best
    if (sqDist < bestSqDist) then bestSqDist = sqDist : closestPt = q
  end if
  ' Repeat test for face acd
  if (_PointOutsideOfPlane(p, a, c, d)) then
    q = ClosestPtPointTriangle(p, a, c, d)
    qp=q-p : sqDist = Dot(qp, qp)
    if (sqDist < bestSqDist) then bestSqDist = sqDist : closestPt = q
  end if
  ' Repeat test for face adb
  if (_PointOutsideOfPlane(p, a, d, b)) then
    q = ClosestPtPointTriangle(p, a, d, b)
    qp=q-p : sqDist = Dot(q - p, q - p)
    if (sqDist < bestSqDist) then bestSqDist = sqDist : closestPt = q
  end if
  ' Repeat test for face bdc
  if (_PointOutsideOfPlane(p, b, d, c)) then
    q = ClosestPtPointTriangle(p, b, d, c)
    qp=q-p : sqDist = Dot(qp, qp)
    if (sqDist < bestSqDist) then bestSqDist = sqDist : closestPt = q
  end if
  return closestPt
#undef _PointOutsideOfPlane  
end function

' Test if segments ab and cd overlap. 
' If they do, compute and return intersection t value along ab and intersection position p
function Test2DSegment_Segment(byref a as const vec3, _
                               byref b as const vec3, _
                               byref c as const vec3, _
                               byref d as const vec3, _
                               byref t as single, _
                               byref p as vec3) as boolean
  ' Sign of areas correspond to which side of ab points c and d are
  dim as single a1 = SignedTriangle2DArea(a, b, d) ' Compute winding of abd (+ or -)
  dim as single a2 = SignedTriangle2DArea(a, b, c) ' To intersect, must have sign opposite of a1
  ' If c and d are on different sides of ab, areas have different signs
  if (a1 * a2 < 0.0) then
    ' Compute signs for a and b with respect to segment cd
    dim as single a3 = SignedTriangle2DArea(c, d, a) ' Compute winding of cda (+ or -)
    ' Since area is constant a1 - a2 = a3 - a4, or a4 = a3 + a2 - a1
    ' float a4 = Signed2DTriArea(c, d, b); // Must have opposite sign of a3
    dim as single a4 = a3 + a2 - a1
    ' Points a and b on different sides of cd if areas have different signs
    if (a3 * a4 < 0.0) then
      ' Segments intersect. Find intersection point along L(t) = a + t * (b - a).
      ' Given height h1 of an over cd and height h2 of b over cd,
      ' t = h1 / (h1 - h2) = (b*h1/2) / (b*h1/2 - b*h2/2) = a3 / (a3 - a4),
      ' where b (the base of the triangles cda and cdb, i.e., the length of cd) cancels out.
      t = a3 / (a3 - a4)
      p = a + t * (b - a)
      return true
    end if
  end if
  ' Segments not intersecting (or collinear)
  return false
end function

' Determine whether plane p intersects sphere s
function TestSphere_Plane(byref s as const Sphere, _
                          byref p as const Plane) as boolean
  ' For a normalized plane (|p.n| = 1), evaluating the plane equation
  ' for a point gives the signed distance of the point to the plane
  dim as single dist = fAbs(Dot(s.c, p.n) - p.d)
  ' If sphere center within +/-radius from plane, plane intersects sphere
  return iif(dist <= s.r,true,false)
end function

' Determine whether sphere s is fully behind (inside negative halfspace of) plane p
function InsideSphere_Plane(byref s as const Sphere, _
                           byref p as const Plane) as boolean
  dim as single dist = Dot(s.c, p.n) - p.d
  return iif(dist < -s.r,true,false)
end function

' Determine whether sphere s intersects negative halfspace of plane p
function TestSphere_Halfspace(byref s as const Sphere, _
                              byref p as const Plane) as boolean
  dim as single dist = Dot(s.c, p.n) - p.d
  return iif(dist>s.r,false,true)
end function


' Test if OBB b intersects plane p
function TestOBB_Plane(byref b as const OBB, _
                       byref p as const Plane) as boolean
  ' Compute the projection interval radius of b onto L(t) = b.c + t * p.n
  dim as single r = b.e.f(0)*fAbs(Dot(p.n, b.u(0))) _
                  + b.e.f(1)*fAbs(Dot(p.n, b.u(1))) _
                  + b.e.f(2)*fAbs(Dot(p.n, b.u(2)))
  ' Compute distance of box center from plane
  dim as single s = fAbs(Dot(p.n, b.c) - p.d)
  ' Intersection occurs when distance s falls within [-r,+r] interval
  return iif(s>r,false,true)
end function

' Test if AABB b intersects plane p
function TestAABB_Plane(byref b as const AABB, _
                        byref p as const Plane) as boolean
  ' !!! AABB b2(b.min - c, b.max - c) !!!  
  ' These two lines not necessary with a (center, extents) AABB representation
  dim as vec3 c = (b.max + b.min) * 0.5 ' Compute AABB center
  dim as vec3 e = b.max - c ' Compute positive extents
  ' Compute the projection interval radius of b onto L(t) = b.c + t * p.n
  dim as single r = e.x*fAbs(p.n.x) + e.y*fAbs(p.n.y) + e.z*fAbs(p.n.z)
  ' Compute distance of box center from plane
  dim as single s = fAbs(Dot(p.n, c) - p.d)
  'Intersection occurs when distance s falls within [-r,+r] interval
  return iif(s>r,false,true)
end function

' Returns true if sphere s intersects AABB b, false otherwise
function TestSphere_AABB overload (byref s as const Sphere, _
                                   byref b as const AABB) as boolean
  ' Compute squared distance between sphere center and AABB
  dim as single sqDist = SqDistPointAABB(s.c,b)
  ' Sphere and AABB intersect if the (squared) distance
  ' between them is less than the (squared) sphere radius
  return iif(sqDist>s.r * s.r,false,true)
end function

' Returns true if sphere s intersects AABB b, false otherwise.
' The point p on the AABB closest to the sphere center is also returned
function TestSphere_AABB(byref s as const Sphere, _
                         byref b as const AABB, _
                         byref p as       vec3) as boolean
  ' Find point p on AABB closest to sphere center
  ClosestPtPointAABB(s.c, b, p)
  ' if Sphere and AABB intersect if the (squared) distance from sphere
  '/ center to point p is less than the (squared) sphere radius
  dim as vec3 v = p - s.c
  return iif(Dot(v,v)>s.r * s.r,false,true)
end function

' Returns true if sphere s intersects OBB b, false otherwise.
' The point p on the OBB closest to the sphere center is also returned
function TestSphere_OBB(byref s as const Sphere, _
                        byref b as const OBB, _
                        byref p as       vec3) as boolean
  ' Find point p on OBB closest to sphere center
  ClosestPtPointOBB(s.c,b,p)
  ' Sphere and OBB intersect if the (squared) distance from sphere
  ' center to point p is less than the (squared) sphere radius
  dim as vec3 v = p - s.c
  return iif(Dot(v, v) > s.r * s.r,false,true)
end function

' Returns true if sphere s intersects triangle ABC, false otherwise.
' The point p on abc closest to the sphere center is also returned
function TestSphere_Triangle overload (byref s as const Sphere, _
                                       byref a as const vec3, _
                                       byref b as const vec3, _
                                       byref c as const vec3, _
                                       byref p as vec3) as boolean
  ' Find point P on triangle ABC closest to sphere center
  p = ClosestPtPointTriangle(s.c,a,b,c)
  ' Sphere and triangle intersect if the (squared) distance from sphere
  ' center to point p is less than the (squared) sphere radius
  dim as vec3 v = p - s.c
  return iif(Dot(v, v) > s.r * s.r,false,true)
end function
function TestSphere_Triangle(byref s as const Sphere, _
                             byref t as const Triangle, _
                             byref b as const vec3, _
                             byref p as vec3) as boolean
  ' Find point P on triangle ABC closest to sphere center
  p = ClosestPtPointTriangle(s.c,t.a,t.b,t.c)
  ' Sphere and triangle intersect if the (squared) distance from sphere
  ' center to point p is less than the (squared) sphere radius
  dim as vec3 v = p - s.c
  return iif(Dot(v, v) > s.r * s.r,false,true)
end function

function IntersectSegment_Plane(byref a as const vec3, _
                               byref b as const vec3, _
                               byref p as const Plane, _
                               byref t as single, _
                               byref q as vec3) as boolean
  ' Compute the t value for the directed line ab intersecting the plane
  dim as vec3 ab = b - a
  dim as single denom = Dot(p.n, ab)
  if denom=0 then return false
  t = (p.d - Dot(p.n, a)) / denom
  ' If t in [0..1] compute and return intersection point
  if t<0.0f then return false
  if t>1.0f then return false
  q = a + t * ab
  return true
end function

' Intersect segment ab against plane of triangle def. If intersecting,
' return t value and position q of intersection
function IntersectSegment_TrianglePlane(byref a as const vec3, _
                                       byref b as const vec3, _
                                       byref d as const vec3, _
                                       byref e as const vec3, _
                                       byref f as const vec3, _
                                       byref t as single, _
                                       byref q as vec3) as boolean
  return IntersectSegment_Plane(a,b,Plane(d,e,f),t,q)
end function


' Test if ray r = p + td intersects sphere s
function TestRay_Sphere(byref p as const vec3, _
                        byref d as const vec3, _
                        byref s as const Sphere) as boolean
  dim as vec3 m = p - s.c
  dim as single c = Dot(m, m) - s.r * s.r
  ' If there is definitely at least one real root, there must be an intersection
  if (c <= 0.0) then return true
  dim as single b = Dot(m, d)
  ' Early exit if ray origin outside sphere and ray pointing away from sphere
  if (b > 0.0) then return false
  dim as single disc = b*b - c
  ' A negative discriminant corresponds to ray missing sphere
  return iif(disc < 0.0,false,true)
end function

' Intersects ray r = p + t*d, |d| = 1, with sphere s and, if intersecting,
' returns t value of intersection and intersection point q
function IntersectRay_Sphere(byref p as const vec3, _
                             byref d as const vec3, _
                             byref s as const Sphere, _
                             byref t as single, _
                             byref q as vec3) as boolean
  dim as vec3 m = p - s.c
  dim as single b = Dot(m, d)
  dim as single c = Dot(m, m) - s.r * s.r
  ' Exit if ray's origin outside s phere (c > 0) and ray pointing away from sphere (b > 0)
  if (c > 0.0 andalso b > 0.0) then return false
  dim as single discr = b*b - c
  ' A negative discriminant corresponds to ray missing sphere
  if (discr < 0.0) then return false
  ' Ray now found to intersect sphere, compute smallest t value of intersection
  t = -b - Sqrtf(discr)
  ' If t is negative, ray started inside sphere
  if (t < 0.0) then return false
  q = p + t * d
  return true
end function


' Intersect ray R(t) = p + t*d against AABB a. 
' When intersecting, return intersection distance tmin and point q of intersection
function IntersectRay_AABB(byref p as const vec3, _
                           byref d as const vec3, _
                           byref a as const AABB, _
                           byref tmin as single, _
                           byref q as vec3) as boolean
  tmin = 0.0 ' set to -FLT_MAX to get first hit on line
  dim as single tmax = FLT_MAX ' set to max distance ray can travel (for segment)
  ' For all three slabs
  for i as integer = 0 to 2
    if (fAbs(d.f(i)) < EPSILON) then
      ' Ray is parallel to slab. No hit if origin not within slab
      if (p.f(i) < a.min.f(i) orelse p.f(i) > a.max.f(i)) then return false
    else
      ' Compute intersection t value of ray with near and far plane of slab
      dim as single ood = 1.0 / d.f(i)
      dim as single t1 = (a.min.f(i) - p.f(i)) * ood
      dim as single t2 = (a.max.f(i) - p.f(i)) * ood
      ' Make t1 be intersection with near plane, t2 with far plane
      if (t1 > t2) then Swap t1, t2
      ' Compute the intersection of slab intersection intervals
      if (t1 > tmin) then tmin = t1
      if (t2 > tmax) then tmax = t2
      ' Exit with no collision as soon as slab intersection becomes empty
      if (tmin > tmax) then return false
    end if
  next
  ' Ray intersects all 3 slabs. Return point (q) and intersection t value (tmin)
  q = p + d * tmin
  return true
end function

'  Test if segment specified by points p0 and p1 intersects AABB b
function  TestSegment_AABB(byref p0 as const vec3, _
                           byref p1 as const vec3, _
                           byref b  as const AABB) as boolean
  dim as vec3 c = (b.min + b.max) * 0.5' Box center-point
  dim as vec3 e = b.max - c ' Box halflength extents
  dim as vec3 m = (p0 + p1) * 0.5 ' Segment midpoint
  dim as vec3 d = p1 - m ' Segment halflength vector
  m = m - c ' Translate box and segment to origin
  ' Try world coordinate axes as separating axes
  dim as single adx = fAbs(d.x)
  if (fAbs(m.x) > e.x + adx) then return false
  dim as single ady = fAbs(d.y)
  if (fAbs(m.y) > e.y + ady) then return false
  dim as single adz = fAbs(d.z)
  if (fAbs(m.z) > e.z + adz) then return false
  ' Add in an epsilon term to counteract arithmetic errors when segment is
  ' (near) parallel to a coordinate axis (see text for detail)
  adx += EPSILON : ady += EPSILON : adz += EPSILON

  ' Try cross products of segment direction vector with coordinate axes
  if (fAbs(m.y * d.z - m.z * d.y) > e.y * adz + e.z * ady) then return false
  if (fAbs(m.z * d.x - m.x * d.z) > e.x * adz + e.z * adx) then return false
  if (fAbs(m.x * d.y - m.y * d.x) > e.x * ady + e.y * adx) then return false
  ' No separating axis found; segment must be overlapping AABB
  return true
end function

' Given line pq and ccw triangle abc, return whether line pierces triangle.
' If so, also return the barycentric coordinates (u,v,w) of the intersection point
function IntersectLine_Triangle overload(byref p as const vec3, _
                                byref q as const vec3, _
                                byref a as const vec3, _
                                byref b as const vec3, _
                                byref c as const vec3, _
                                byref u as single, _
                                byref v as single, _
                                byref w as single) as boolean
  dim as vec3 pq = q - p
  dim as vec3 pa = a - p
  dim as vec3 pb = b - p
  dim as vec3 pc = c - p
  ' Test if pq is inside the edges bc, ca and ab.
	' Done by testing that the signed tetrahedral volumes, 
	' computed using scalar triple products, are all positive
  u = ScalarTriple(pq, pc, pb)
  if (u < 0.0) then return false
  v = ScalarTriple(pq, pa, pc)
  if (v < 0.0) then return false
  w = ScalarTriple(pq, pb, pa)
  if (w < 0.0) then return false
  ' Compute the barycentric coordinates (u, v, w)
  ' determining the intersection point r, r = u*a + v*b + w*c
  dim as single denom = 1.0 / (u + v + w)
  u *= denom
  v *= denom
  w *= denom ' w = 1.0 - u - v
  return true
end function
function IntersectLine_Triangle(byref p as const vec3, _
                                byref q as const vec3, _
                                byref t as const TRIANGLE, _
                                byref b as const vec3, _
                                byref c as const vec3, _
                                byref u as single, _
                                byref v as single, _
                                byref w as single) as boolean
  dim as vec3 pq = q - p
  dim as vec3 pa = t.a - p
  dim as vec3 pb = t.b - p
  dim as vec3 pc = t.c - p
  ' Test if pq is inside the edges bc, ca and ab.
	' Done by testing that the signed tetrahedral volumes, 
	' computed using scalar triple products, are all positive
  u = ScalarTriple(pq, pc, pb)
  if (u < 0.0) then return false
  v = ScalarTriple(pq, pa, pc)
  if (v < 0.0) then return false
  w = ScalarTriple(pq, pb, pa)
  if (w < 0.0) then return false
  ' Compute the barycentric coordinates (u, v, w)
  ' determining the intersection point r, r = u*a + v*b + w*c
  dim as single denom = 1.0 / (u + v + w)
  u *= denom
  v *= denom
  w *= denom ' w = 1.0 - u - v
  return true
end function

' Given line pq and ccw quadrilateral abcd, return whether the line
' pierces the triangle. If so, also return the point r of intersection
function IntersectLine_Quad(byref p as const vec3, _
                            byref q as const vec3, _
                            byref a as const vec3, _
                            byref b as const vec3, _
                            byref c as const vec3, _
                            byref d as const vec3, _
                            byref r as vec3) as boolean
  dim as vec3 pq = q - p
  dim as vec3 pa = a - p
  dim as vec3 pb = b - p
  dim as vec3 pc = c - p
  ' Determine which triangle to test against by testing against diagonal first
  dim as vec3 m = cross(pc, pq)
  dim as single v = Dot(pa, m)
  if (v >= 0.0) then
    ' Test intersection against triangle abc
    dim as single u = -Dot(pb, m)
    if (u < 0.0) then return false
    dim as single w = ScalarTriple(pq, pb, pa)
    if (w < 0.0) then return false
    ' Compute r, r = u*a + v*b + w*c, from barycentric coordinates (u, v, w)
    dim as single denom = 1.0 / (u + v + w)
    u *= denom : v *= denom : w *= denom
    r = u*a + v*b + w*c
  else
    ' Test intersection against triangle dac
    dim as vec3 pd = d - p
    dim as single u = Dot(pd, m)
    if (u < 0.0) then return false
    dim as single w = ScalarTriple(pq, pa, pd)
    if (w < 0.0) then return false
    v = -v
    ' Compute r, r = u*a + v*d + w*c, from barycentric coordinates (u,v,w)
    dim as single denom = 1.0 / (u + v + w)
    u *= denom : v *= denom : w *= denom
    r = u*a + v*d + w*c
  end if
  return true
end function

' Given segment pq and triangle abc, returns whether segment intersects triangle
' and if so, also returns the barycentric coordinates (u,v,w) of the intersection point
function IntersectSegment_Triangle overload (byref p as const vec3, _
                                             byref q as const vec3, _
                                             byref a as const vec3, _
                                             byref b as const vec3, _
                                             byref c as const vec3, _
                                             byref u as single, _
                                             byref v as single, _
                                             byref w as single, _
                                             byref t as single) as boolean
  dim as vec3 ab = b - a
  dim as vec3 ac = c - a
  dim as vec3 qp = p - q
  ' Compute triangle normal. Can be precalculated or cached if
  ' intersecting multiple segments against the same triangle
  dim as vec3 n = Cross(ab, ac)
  ' Compute denominator d. If d <= 0, segment is parallel to or points away from triangle, so exit early
  dim as single d = Dot(qp, n)
  if (d <= 0.0) then return false
  ' Compute intersection t value of pq with plane of triangle.
  ' A ray intersects iff 0 <= t. Segment intersects iff 0 <= t <= 1. Delay
  ' dividing by d until intersection has been found to pierce triangle
  dim as vec3 ap = p - a
  t = Dot(ap, n)
  if (t < 0.0) then return false
  if (t > d  ) then return false ' For segment; exclude this code line for a ray test
  ' Compute barycentric coordinate components and test if within bounds
  dim as vec3 e = cross(qp, ap)
  v = Dot(ac, e)
  if (v < 0.0 orelse v > d) then return false
  w = -Dot(ab, e)
  if (w < 0.0 orelse (v + w) > d) then return false
  ' Segment/ray intersects triangle.
	' Perform delayed division and compute the last barycentric coordinate component
  dim as single ood = 1.0 / d
  t *= ood : v *= ood : w *= ood
  u = 1.0 - v - w
  return true
end function
function IntersectSegment_Triangle(byref p as const vec3, _
                                   byref q as const vec3, _
                                   byref tri as const TRIANGLE, _
                                   byref b as const vec3, _
                                   byref c as const vec3, _
                                   byref u as single, _
                                   byref v as single, _
                                   byref w as single, _
                                   byref t as single) as boolean
  dim as vec3 ab = tri.b - tri.a
  dim as vec3 ac = tri.c - tri.a
  dim as vec3 qp = p - q
  ' Compute triangle normal. Can be precalculated or cached if
  ' intersecting multiple segments against the same triangle
  'dim as vec3 n = Cross(ab, ac)
  ' Compute denominator d. If d <= 0, segment is parallel to or points away from triangle, so exit early
  dim as single d = Dot(qp, tri.n)
  if (d <= 0.0) then return false
  ' Compute intersection t value of pq with plane of triangle.
  ' A ray intersects iff 0 <= t. Segment intersects iff 0 <= t <= 1. Delay
  ' dividing by d until intersection has been found to pierce triangle
  dim as vec3 ap = p - tri.a
  t = Dot(ap, tri.n)
  if (t < 0.0) then return false
  if (t > d  ) then return false ' For segment; exclude this code line for a ray test
  ' Compute barycentric coordinate components and test if within bounds
  dim as vec3 e = cross(qp, ap)
  v = Dot(ac, e)
  if (v < 0.0 orelse v > d) then return false
  w = -Dot(ab, e)
  if (w < 0.0 orelse (v + w) > d) then return false
  ' Segment/ray intersects triangle.
	' Perform delayed division and compute the last barycentric coordinate component
  dim as single ood = 1.0 / d
  t *= ood : v *= ood : w *= ood
  u = 1.0 - v - w
  return true
end function
' Given segment pq and precomputed plane triangle, returns whether segment intersects triangle.
' If so, also returns the barycentric coordinates (u,v,w) of the intersection point s,
' and the parameterized intersection t value
function IntersectSegment_Triangle(byref p as const vec3, _
                                   byref q as const vec3, _
                                   byref tri as const PLANETRIANGLE, _
                                   byref u as single, _
                                   byref v as single, _
                                   byref w as single, _
                                   byref t as single, _
                                   byref s as vec3) as boolean
  '  Compute distance of p to triangle plane. Exit if p lies behind plane
  dim as single distp = Dot(p, tri.p.n) - tri.p.d
  if (distp < 0.0) then return false
  ' Compute distance of q to triangle plane. Exit if q lies in front of plane
  dim as single distq = Dot(q, tri.p.n) - tri.p.d
  if (distq >= 0.0) then return false
  ' Compute t value and point s of intersection with triangle plane
  dim as single denom = distp - distq
  t = distp / denom
  s = p + t * (q - p)
  ' Compute the barycentric coordinate u; exit if outside 0..1 range
  u = Dot(s, tri.edgeBC.n) - tri.edgeBC.d
  if (u < 0.0 or u > 1.0) then return false
  ' Compute the barycentric coordinate v; exit if negative
  v = Dot(s, tri.edgeCA.n) - tri.edgeCA.d
  if (v < 0.0) then return false
  ' Compute the barycentric coordinate w; exit if negative
  w = 1.0 - u - v
  if (w < 0.0) then return false
  ' Segment intersects tri at distance t in position s (s = u*A + v*B + w*C)
  return true
end function

' Intersect segment S(t)=sa+t(sb-sa), 0<=t<=1 against cylinder specified by p, q and r
function IntersectSegment_Cylinder(byref sa as const vec3, _
                                   byref sb as const vec3, _
                                   byref p  as const vec3, _
                                   byref q  as const vec3, _
                                   byval r  as single, _
                                   byref t  as single) as boolean
  dim as vec3 d = q - p, m = sa - p, n = sb - sa
  dim as single md = Dot(m, d)
  dim as single nd = Dot(n, d)
  dim as single dd = Dot(d, d)
  ' Test if segment fully outside either endcap of cylinder
  if (md < 0.0 andalso (md + nd) < 0.0) then return false ' Segment outside 'p' side of cylinder
  if (md > dd  andalso (md + nd) >  dd) then return false ' Segment outside 'q' side of cylinder
  dim as single nn = Dot(n, n)
  dim as single mn = Dot(m, n)
  dim as single a = dd * nn - nd * nd
  dim as single k = Dot(m, m) - r * r
  dim as single c = dd * k - md * md
  if (fAbs(a) < EPSILON) then
    ' Segment runs parallel to cylinder axis
    if (c > 0.0) then return false ' a and thus the segment lie outside cylinder
    ' Now known that segment intersects cylinder; figure out how it intersects
    if (md < 0.0f) then
       t = -mn / nn       ' Intersect segment against 'p' endcap
    elseif (md > dd) then
       t = (nd - mn) / nn ' Intersect segment against 'q' endcap
    else
       t = 0.0             ' sa lies inside cylinder
    end if
    return true
  end if
  dim as single b = dd * mn - nd * md
  dim as single discr = b * b - a * c
  if (discr < 0.0) then return false ' No real roots; no intersection
  t = (-b - Sqrt(discr)) / a
  if (t < 0.0 or t > 1.0) then return false ' Intersection lies outside segment
  if (md + t * nd  < 0.0) then
    ' Intersection outside cylinder on p side
    if (nd <= 0.0) then return false ' Segment pointing away from endcap
    t = -md / nd
     ' !!! fixed (k + 2*t*(mn + t * nn))
    return iif( (k + t*(2.0f*mn + t*nn)) >0.0,false,true)
  elseif (md + t * nd > dd) then
    ' Intersection outside cylinder on q side
    if (nd >= 0.0) then return false ' Segment pointing away from endcap
    t = (dd - md) / nd
    return iif( (k + dd - 2.0f * md + t * (2.0f * (mn - nd) + t * nn)) > 0.0f,false,true)
  end if
  ' Segment intersects cylinder between the endcaps t is correct
  return true
end function

' Intersect segment S(t)=A+t(B-A), 0<=t<=1 against convex polyhedron
' specified by the n halfspaces defined by the planes p[].
' On exit tfirst and tlast define the intersection, if any
function IntersectSegment_Polyhedron(byref a as const vec3, _
                                     byref b as const vec3, _
                                           p() as PLANE, _
                                     byval n      as integer, _
                                     byref tfirst as single, _
                                     byref tlast  as single) as boolean
  ' Compute direction vector for the segment
  dim as vec3 d = b - a
  ' Set initial interval to being the whole segment.
	' For a ray, tlast should be set to +FLT_MAX.
	' For a line, additionally tfirst should be set to –FLT_MAX
  tfirst = 0.0 : tlast  = 1.0
  ' Intersect segment against each plane
  for i as integer = 0 to n-1
    dim as single denom = Dot(p(i).n, d)
    dim as single dist  = p(i).d - Dot(p(i).n, a)
    ' Test if segment runs parallel to the plane
   if (denom = 0.0) then
     ' If so, return “no intersection” if segment lies outside plane
     if (dist > 0.0) then return false
   else
     ' Compute parameterized t value for intersection with current plane
     dim as single  t = dist / denom
     if (denom < 0.0) then
       ' When entering halfspace, update tfirst if t is larger
       if (t > tfirst) then tfirst = t
     else
       ' When exiting halfspace, update tlast if t is smaller
       if (t < tlast) then tlast = t
     end if
     ' Exit with “no intersection” if intersection becomes empty
      if (tfirst > tlast) then return false
    end if
  next
  ' A nonzero logical intersection, so the segment intersects the polyhedron
  return true
end function

' Test if point p lies inside ccw-specified convex n-gon given by vertices v[]
function PointInConvexPolygon(byref p as const vec3, _
                              byref n as const integer, _
                              v() as vec3) as boolean
  ' Do binary search over polygon vertices to find the fan triangle
  ' (v[0], v[low], v[high]) the point p lies within the near sides of
  dim as integer low, high = n
  if n<1 then return false
  do
    dim as integer mid_ = (low + high)
    mid_ shr=1
    if TriangleIsCCW(v(0), v(mid_), p) then
      low  = mid_
    else
      high = mid_
    end if
  loop while (low + 1 < high)
  ' If point outside last (or first) edge, then it is not inside the n-gon
  if (low = 0 orelse high = n) then return false
  ' p is inside the polygon if it is left of
  ' the directed edge from v(low) to v(high)
  return TriangleIsCCW(v(low), v(high), p)
end function

' Test if point p inside polyhedron given as the intersection volume of n halfspaces
function TestPoint_Polyhedron(byref p as const vec3, _
                              byref halfSpaces as Plane ptr, _
                              byref n as const integer) as boolean
  if n<1 then return false
  for i as integer = 0 to n-1
    ' Exit with 'containment' if p ever found outside a halfspace
    if (halfSpaces[i].getDistance(p) > 0.0) then return false
  next
  ' p inside all halfspaces, so p must be inside intersection volume
  return true
end function

' Given planes p1 and p2, compute line L = p+t*d of their intersection.
' Return false if no such line exists
function IntersectPlanes overload(byref p1 as const PLANE, _
                                  byref p2 as const PLANE, _
                                  byref p as vec3, _
                                  byref d as vec3) as boolean
  ' Compute direction of intersection line
  d = cross(p1.n, p2.n)
  ' If d is (near) zero, the planes are parallel (and separated)
  ' or coincident, so they're not considered intersecting
  dim as single denom = Dot(d,d)
  if (denom < EPSILON) then return false
  ' Compute point on intersection line
  p = cross(p1.d*p2.n - p2.d*p1.n, d) / denom
  return true
end function

' Compute the point p at which the three planes p1, p2 and p3 intersect (if at all)
function IntersectPlanes(byref p1 as const PLANE, _
                         byref p2 as const PLANE, _
                         byref p3 as const PLANE, _
                         byref p as vec3) as boolean
  dim as vec3 u = cross(p2.n, p3.n)
  dim as single denom = Dot(p1.n, u)
  if (fAbs(denom) < EPSILON) then return false ' Planes do not intersect in a point
  p = (p1.d * u + cross(p1.n, p3.d * p2.n - p2.d * p3.n)) / denom
  return true
end function

' Computes the AABB a of the AABB's a0 and a1
sub AABBEnclosingAABBs(byref a as AABB, _
                       byref a0 as const AABB, _
                       byref a1 as const AABB)
  if a0.min.x<a1.min.x then a.min.x=a0.min.x else a.min.x=a1.min.x
  if a0.min.y<a1.min.y then a.min.y=a0.min.y else a.min.y=a1.min.y
  if a0.min.z<a1.min.z then a.min.z=a0.min.z else a.min.z=a1.min.z
 
  if a0.max.x>a1.max.x then a.max.x=a0.max.x else a.max.x=a1.max.x
  if a0.max.y>a1.max.y then a.max.y=a0.max.y else a.max.y=a1.max.y
  if a0.max.z>a1.max.z then a.max.z=a0.max.z else a.max.z=a1.max.z
end sub

' Computes the bounding sphere s of spheres s0 and s1
sub SphereEnclosingSpheres(byref s as Sphere, _
                           byref s0 as const Sphere, _
                           byref s1 as const Sphere)
  ' Compute the squared distance between the sphere centers
  dim as vec3 d = s1.c - s0.c
  dim as single dist2 = Dot(d, d)
  if (Sqrtf(s1.r - s0.r) >= dist2) then
    ' The sphere with the larger radius encloses the other;
    ' just set s to be the larger of the two spheres
    if (s1.r >= s0.r) then
      s = s1
    else
      s = s0
    end if
  else
    ' Spheres partially overlapping or disjoint
    dim as single dist = sqrtf(dist2)
    s.r = (dist + s0.r + s1.r) * 0.5
    s.c = s0.c
    if (dist > EPSILON) then  s.c += ((s.r - s0.r) / dist) * d
  end if
end sub
