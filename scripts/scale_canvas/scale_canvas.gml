/// scale_canvas(base width, base height, current width, current height, center);
//argument0 = base width;
//argument1 = base height;
//argument2 = current width
//argument3 = current height
//argument4 = center window (true, false);

var aspect = (argument0 / argument1);

var _size  = 960;

if ((argument2 / aspect) > argument3)
    {
    window_set_size(_size, _size);
    }
else
    {
    window_set_size(_size, _size);
    }

if (argument4) window_center();

surface_resize(application_surface, _size, _size);