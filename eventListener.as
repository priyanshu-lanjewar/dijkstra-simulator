import flash.events.MouseEvent;



function mouseOverHandler(router:int):Function
{
	return function(e:MouseEvent):void {
    this.chn = snd.play(0);
	if(desti==router) return;
	switch(router){
		case 1:
		r01.transform.colorTransform = hover;
		break;
		case 2:
		r02.transform.colorTransform = hover;
		break;
		case 3:
		r03.transform.colorTransform = hover;
		break;
		case 4:
		r04.transform.colorTransform = hover;
		break;
		case 5:
		r05.transform.colorTransform = hover;
		break;
		case 6:
		r06.transform.colorTransform = hover;
		break;
		case 7:
		r07.transform.colorTransform = hover;
		break;
		case 8:
		r08.transform.colorTransform = hover;
		break;
		case 9:
		r09.transform.colorTransform = hover;
		break;
		case 10:
		r10.transform.colorTransform = hover;
		break;
		case 11:
		r11.transform.colorTransform = hover;
		break;
		case 12:
		r12.transform.colorTransform = hover;
		break;
		default:
		trace("Dd");
	}
	};
	
}
 
function mouseOutHandler(router:int):Function
{
	return function(e:MouseEvent):void {
    SoundMixer.stopAll();
	if(desti==router)
	return;
	switch(router){
		case 1:
		r01.transform.colorTransform = routerColor[1];
		break;
		case 2:
		r02.transform.colorTransform = routerColor[2];
		break;
		case 3:
		r03.transform.colorTransform = routerColor[3];
		break;
		case 4:
		r04.transform.colorTransform = routerColor[4];
		break;
		case 5:
		r05.transform.colorTransform = routerColor[5];
		break;
		case 6:
		r06.transform.colorTransform = routerColor[6];
		break;
		case 7:
		r07.transform.colorTransform = routerColor[7];
		break;
		case 8:
		r08.transform.colorTransform = routerColor[8];
		break;
		case 9:
		r09.transform.colorTransform = routerColor[9];
		break;
		case 10:
		r10.transform.colorTransform = routerColor[10];
		break;
		case 11:
		r11.transform.colorTransform = routerColor[11];
		break;
		case 12:
		r12.transform.colorTransform = routerColor[12];
		break;
		default:
		trace("Dd");
	}
	};

}
newWt.addEventListener(MouseEvent.CLICK,newWeight);
function newWeight(event:MouseEvent){
		graphInit();
		updateText();
		resetColor();

}
function run(){
	if(realtime.selected == true || firstRun){
	graphInit();
	updateText();
	firstRun =false;
	}
	resetColor();
	dijkstra(distt,0);
	
}
r01.addEventListener(MouseEvent.CLICK, clickHandler01);
function clickHandler01(event:MouseEvent)
{
	
	desti=1;
	run();

}
r02.addEventListener(MouseEvent.CLICK, clickHandler02);
function clickHandler02(event:MouseEvent)
{
	desti=2;
    run();
}
r03.addEventListener(MouseEvent.CLICK, clickHandler03);
function clickHandler03(event:MouseEvent)
{
	desti=3;
    run();
}
r04.addEventListener(MouseEvent.CLICK, clickHandler04);
function clickHandler04(event:MouseEvent)
{
	desti=4;
    run();
}
r05.addEventListener(MouseEvent.CLICK, clickHandler05);
function clickHandler05(event:MouseEvent)
{
	desti=5;
   run();
}
r06.addEventListener(MouseEvent.CLICK, clickHandler06);
function clickHandler06(event:MouseEvent)
{
	desti=6;
   run();;
}
r07.addEventListener(MouseEvent.CLICK, clickHandler07);
function clickHandler07(event:MouseEvent)
{
	desti=7;
    run();
}
r08.addEventListener(MouseEvent.CLICK, clickHandler08);
function clickHandler08(event:MouseEvent)
{
	desti=8;
    run();
}
r09.addEventListener(MouseEvent.CLICK, clickHandler09);
function clickHandler09(event:MouseEvent)
{
	desti=9;
    run();
}
r10.addEventListener(MouseEvent.CLICK, clickHandler10);
function clickHandler10(event:MouseEvent)
{
	desti=10;
    run();
}
r11.addEventListener(MouseEvent.CLICK, clickHandler11);
function clickHandler11(event:MouseEvent)
{
	desti=11;
    run();
}
r12.addEventListener(MouseEvent.CLICK, clickHandler12);
function clickHandler12(event:MouseEvent)
{
	desti=12;
    run();
}

r01.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(1));
r01.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(1));

r02.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(2));
r02.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(2));

r03.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(3));
r03.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(3));

r04.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(4));
r04.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(4));

r05.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(5));
r05.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(5));

r06.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(6));
r06.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(6));

r07.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(7));
r07.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(7));

r08.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(8));
r08.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(8));

r09.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(9));
r09.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(9));

r10.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(10));
r10.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(10));

r11.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(11));
r11.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(11));

r12.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler(12));
r12.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler(12));


function 	resetColor(){
	r00.transform.colorTransform = active;
	r01.transform.colorTransform = inactive;
	r02.transform.colorTransform = inactive;
	r03.transform.colorTransform = inactive;
	r04.transform.colorTransform = inactive;
	r05.transform.colorTransform = inactive;
	r06.transform.colorTransform = inactive;
	r07.transform.colorTransform = inactive;
	r08.transform.colorTransform = inactive;
	r09.transform.colorTransform = inactive;
	r10.transform.colorTransform = inactive;
	r11.transform.colorTransform = inactive;
	r12.transform.colorTransform = inactive;
	setRouterColor();
	resetPath()
}
function setRouterColor(){
	 routerColor[0] = inactive;
	 routerColor[1] = inactive;
	 routerColor[2] = inactive;
	 routerColor[3] = inactive;
	 routerColor[4] = inactive;
	 routerColor[5] = inactive;
	 routerColor[6] = inactive;
	 routerColor[7] = inactive;
	 routerColor[8] = inactive;
	 routerColor[9] = inactive;
	routerColor[10] = inactive;
	routerColor[11] = inactive;
	routerColor[12] = inactive;
}
function resetPath(){
	while(path.pop()!=0){
	}
	//path.push(0);
	l0004.transform.colorTransform = down;
	l0409.transform.colorTransform = down;
	l0405.transform.colorTransform = down;
	l0105.transform.colorTransform = down;
	l0506.transform.colorTransform = down;
	l0406.transform.colorTransform = down;
	l0809.transform.colorTransform = down;
	l0910.transform.colorTransform = down;
	l0106.transform.colorTransform = down;
	l0608.transform.colorTransform = down;
	l0810.transform.colorTransform = down;
	l0310.transform.colorTransform = down;
	l0607.transform.colorTransform = down;
	l0708.transform.colorTransform = down;
	l1011.transform.colorTransform = down;
	l0711.transform.colorTransform = down;
	l1112.transform.colorTransform = down;
	l0212.transform.colorTransform = down;
	l0207.transform.colorTransform = down;
	
	
	
}
setRouterColor();
function updateText(){
	
	t0409.text = distt[9][4];
	t0405.text = distt[5][4];
	t0105.text = distt[1][5];
	t0506.text = distt[5][6];
	t0106.text = distt[1][6];
	t0607.text = distt[6][7];
	t0406.text = distt[4][6];
	t0809.text = distt[8][9];
	t0910.text = distt[9][10];
	t0310.text = distt[3][10];
	t0810.text = distt[8][10];
	t1011.text = distt[10][11];
	t0212.text = distt[02][12];
	t1112.text = distt[11][12];
	t0207.text = distt[2][7];
	t0708.text = distt[7][8];
	t0711.text = distt[7][11];
	t0608.text = distt[6][8];
	t0004.text = distt[0][4];
	trace(desti);
}
