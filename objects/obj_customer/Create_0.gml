chair = instance_find(obj_chair, irandom(instance_number(obj_chair) - 1));
while(chair.occupied == true){
	chair = instance_find(obj_chair, irandom(instance_number(obj_chair) - 1));
}
with(chair){
	occupied = true;
}
pedido = false;
food = -1;
hsp = 0;
vsp = 0;
walksp = 2;
sitting_chair = undefined;
served = false;
food_prompt = undefined;
time = 0;
maxtime = 15;
dontdraw = true;
pacience = false;