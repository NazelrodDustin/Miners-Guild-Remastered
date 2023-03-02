/// @func adjust_full(value)
/// @desc returns a value adjusted by both delta_time and gamespeed
/// @param {real} value
function adjust_full(value){
	return (value * global.deltaTime) * global.gameSpeed;
}

/// @func adjust_for_delta_time(value)
/// @desc returns a value adjusted by delta_time only
/// @param {real} value
function adjust_for_delta_time(value){
	return (value * global.deltaTime);
}

/// @func adjust_for_gamespeed(value)
/// @desc returns a value adjusted by gamespeed only
/// @param {real} value
function adjust_for_gamespeed(value){
	return (value * global.gameSpeed);
}

//Random math functions that may get used frequently or maybe not so. Seems to vary.

#region round_decimals

/// @func round_decimals(number, decimalPlaces)
/// @desc Rounds a number to the given amount of decimal places
/// @param {real} number
///	The number you want to round
/// @param {real} decimalPlaces
/// The number of decimal places you want to round to

function round_decimals(number, decimalPlaces){
	var factorOfTen = power(10, decimalPlaces);
	var roundedNumber = round(number * factorOfTen) / factorOfTen;
	
	return  roundedNumber;
}

#endregion

#region floor_decimals

/// @func floor_decimals(number, decimalPlaces)
/// @desc Floors a number to the given amount of decimal places
/// @param {real} number
///	The number you want to round
/// @param {real} decimalPlaces
/// The number of decimal places you want to floor to

function floor_decimals(number, decimalPlaces){
	var factorOfTen = power(10, decimalPlaces);
	var flooredNumber = floor(number * factorOfTen) / factorOfTen;
	
	return  flooredNumber;
}

#endregion

#region ceil_decimals

/// @func ceil_decimals(number, decimalPlaces)
/// @desc Ceils a number to the given amount of decimal places
/// @param {real} number
///	The number you want to round
/// @param {real} decimalPlaces
/// The number of decimal places you want to ceil to

function ceil_decimals(number, decimalPlaces){
	var factorOfTen = power(10, decimalPlaces);
	var ceiledNumber = ceil(number * factorOfTen) / factorOfTen;
	
	return  ceiledNumber;
}

#endregion

#region difference

/// @func difference(val1,val2)
/// @desc finds the absolute difference between 2 values
/// @param val1
/// @param val2

function difference(val1, val2) {
	return abs(val1 - val2);
}

#endregion

#region wrap

/// @func wrap_value(value,min,max)
/// @desc returns the value wrapped.If it is above or below the threshold it will wrap around
/// @param value
/// @param min
/// @param max

function wrap_value(_val, _max, _min) {
	if(_val mod 1 == 0){
	    while(_val > _max || _val < _min){
	        if(_val > _max){
	            _val = _min + _val - _max - 1
	        }else if (_val < _min){
	            _val=_max + _val - _min + 1;
	        }else{
	            _val=_val;
			}
	    }
	    
		return(_val);
	}else{
	    var _old = argument[0]+1;
	    
		while(_val != _old){
	        _old=_val;
	       
		   if(_val<_min){
	            _val=_max-(_min-_val);
		   }else if(_val >_max){
	            _val=_min+(_val-_max);
		   }else{
	            _val=_val;
		   }
	    }
	    
		return(_val);
	}
}

#endregion

#region norm

/// @func norm(min, max, value)
/// @param {real} min
/// @param {real} max
/// @param {real} value
/// @desc Returns a normalized value for the given min and max based on the value given
function norm(min, max, value){
	return (value - min) / (max - min);
}

#endregion

#region lerp_clamped

/// @func lerp_clamped(val1, val2, amount)
/// @desc performs a lerp but locks the returned value between val1 and 2.
/// @param {real} val1
/// @param {real} val2
/// @param {real} amount

function lerp_clamped(val1, val2, amount) {
	var _min = min(val1, val2);
	var _max = max(val1, val2);

	return(clamp(lerp(val1, val2, amount), _min, _max));
}

#endregion

#region value_is_between
/// @func value_is_between(val1, val2, checkValue)
/// @desc checks to see if the checkValue is between val1 and val2 and if so, returns true, else false
/// @param {real} val1
/// @param {real} val2
/// @param {real} checkValue

function value_is_between(val1, val2, checkValue){
	var _min = min(val1, val2);
	var _max = max(val1, val2);
	
	return ((checkValue > _min)	&& (checkValue < _max));
}

#endregion

#region seconds

function seconds_to_frames(numberOfSeconds){
	return numberOfSeconds * 60;
}
	
#endregion


