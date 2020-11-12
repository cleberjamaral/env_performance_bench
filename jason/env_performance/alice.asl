!start_inc. // Give some time for artifact initialization

+!start_inc
	<-
	.wait(1000);
	!!inc;
.

+!inc:
	not status(stop)
	<-
	.wait(1);
	inc;
	!inc;
.
+!inc:
	count(C)
	<-
	.send(manager,tell,count(C));
.
+!inc.
