function printPath(parentt:Array, j:int):void{
	
	if(j==-1){
		return;
	}
	
	printPath(parentt,parentt[j]);
	
	trace(j);
	path.push(j);
	switch(j){
		case 0:
		r00.transform.colorTransform = active;
		routerColor[0] = active;
		break;
		case 1:
		r01.transform.colorTransform = active;
		routerColor[1] = active;
		break;
		case 2:
		r02.transform.colorTransform = active;
		routerColor[2] = active;
		break;
		case 3:
		r03.transform.colorTransform = active;
		routerColor[3] = active;
		break;
		case 4:
		r04.transform.colorTransform = active;
		routerColor[4] = active;
		break;
		case 5:
		r05.transform.colorTransform = active;
		routerColor[5] = active;
		break;
		case 6:
		r06.transform.colorTransform = active;
		routerColor[6] = active;
		break;
		case 7:
		r07.transform.colorTransform = active;
		routerColor[7] = active;
		break;
		case 8:
		r08.transform.colorTransform = active;
		routerColor[8] = active;
		break;
		case 9:
		r09.transform.colorTransform = active;
		routerColor[9] = active;
		break;
		case 10:
		r10.transform.colorTransform = active;
		routerColor[10] = active;
		break;
		case 11:
		r11.transform.colorTransform = active;
		routerColor[11] = active;
		break;
		case 12:
		r12.transform.colorTransform = active;
		routerColor[12] = active;
		break;
		default:
		trace("hii");
	}
	trace(path);
	highlightPath();
	
}

function highlightPath(){
	for(var i = 0;i<path.length-1;i++){
		switch(path[i]){
			case 0:
			switch(path[i+1]){
				case 4:
				l0004.transform.colorTransform = up;
				break;
			}
			break;
			case 1:
			switch(path[i+1]){
				case 5:
				l0105.transform.colorTransform = up;
				break;
				case 6:
				l0106.transform.colorTransform = up;
				break;
				
			}
			break;
			case 2:
			switch(path[i+1]){
				case 7:
				l0207.transform.colorTransform = up;
				break;
				case 12:
				l0212.transform.colorTransform = up;
				break;
			}
			break;
			case 4:
			switch(path[i+1]){
				case 5:
				l0405.transform.colorTransform = up;
				break;
				case 6:
				l0406.transform.colorTransform = up;
				break;
				case 9:
				l0409.transform.colorTransform = up;
				break;
			}
			break;
			case 5:
			switch(path[i+1]){
				case 1:
				l0105.transform.colorTransform = up;
				break;
				case 4:
				l0405.transform.colorTransform = up;
				break;
				case 6:
				l0506.transform.colorTransform = up;
				break;
			}
			break;
			case 6:
			switch(path[i+1]){
				case 1:
				l0106.transform.colorTransform = up;
				break;
				case 4:
				l0406.transform.colorTransform = up;
				break;
				case 5:
				l0506.transform.colorTransform = up;
				break;
				case 7:
				l0607.transform.colorTransform = up;
				break;
				case 8:
				l0608.transform.colorTransform = up;
				break;
			}
			break;
			case 7:
			switch(path[i+1]){
				case 2:
				l0207.transform.colorTransform = up;
				break;
				case 6:
				l0607.transform.colorTransform = up;
				break;
				case 8:
				l0708.transform.colorTransform = up;
				break;
				case 11:
				l0711.transform.colorTransform = up;
				break;
			}
			break;
			case 8:
			switch(path[i+1]){
				case 6:
				l0608.transform.colorTransform = up;
				break;
				case 7:
				l0708.transform.colorTransform = up;
				break;
				case 9:
				l0809.transform.colorTransform = up;
				break;
				case 10:
				l0810.transform.colorTransform = up;
				break;
			}
			break;
			case 9:
			switch(path[i+1]){
				case 4:
				l0409.transform.colorTransform = up;
				break;
				case 8:
				l0809.transform.colorTransform = up;
				break;
				case 10:
				l0910.transform.colorTransform = up;
				break;
			}
			break;
			case 10:
			switch(path[i+1]){
				case 3:
				l0310.transform.colorTransform = up;
				break;
				case 8:
				l0810.transform.colorTransform = up;
				break;
				case 9:
				l0910.transform.colorTransform = up;
				break;
				case 11:
				l1011.transform.colorTransform = up;
				break;
			}
			break;
			case 11:
			switch(path[i+1]){
				case 7:
				l0711.transform.colorTransform = up;
				break;
				case 10:
				l1011.transform.colorTransform = up;
				break;
				case 12:
				l1112.transform.colorTransform = up;
				break;
			}
			break;
			case 12:
			switch(path[i+1]){
				case 2:
				l0212.transform.colorTransform = up;
				break;
				case 11:
				l1112.transform.colorTransform = up;
				break;
			}
			break;
		}
	}
}