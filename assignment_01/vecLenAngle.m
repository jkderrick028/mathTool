function [length1, length2, angle] = vecLenAngle(vec1, vec2)
length1 = norm(vec1);
length2 = norm(vec2);
if length1==0 || length2==0
   warning('zero vectors!');
   angle = -100;
   return;
end
angle = acosd(dot(vec1, vec2)/(length1*length2));
