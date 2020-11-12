!start.

+!start
	<-
	.at("now +5 s", {+!ask_to_stop});
.

+!ask_to_stop
	<-
	.broadcast(tell,status(stop));
	.wait(1000);
	!check_statistics;
.


+!check_statistics:
	.findall(C,count(C),L)
	<-
	MEAN = math.average(L);
	STDD = math.std_dev(L);
	.print("Mean: ",MEAN);
	.print("StdD: ",STDD);
.
