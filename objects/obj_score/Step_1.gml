var deltaTimeMax = 500;
var deltatTimeMin = 1000 / game_get_speed(gamespeed_fps); //Basically the target frametime
var deltaTimeMs = clamp(delta_time / 1000, deltatTimeMin, deltaTimeMax);
var deltaTimeNorm = norm(0, deltatTimeMin, deltaTimeMs);
var deltaTimeNormRounded = floor_decimals(deltaTimeNorm, 1);

global.deltaTime = deltaTimeNormRounded;
