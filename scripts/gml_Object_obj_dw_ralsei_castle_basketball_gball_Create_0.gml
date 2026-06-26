kick = 0;
autodepth = 1;
fakey = 0;
fakevsp = 0;
grav = 1;
_angle = 0;
solidcheck = 1;
fakeinit = 0;
depth = 90000;
spd = 0;
direction = 0;

solidMeeting = function(arg0, arg1)
{
    if (!solidcheck)
        return false;
    
    return place_meeting(arg0, arg1, obj_solidblock) || place_meeting(arg0, arg1, obj_solidenemy);
};
