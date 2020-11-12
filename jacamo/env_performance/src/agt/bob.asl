!make_counter.
!start_inc. // Give some time for artifact initialization

+!start_inc
	<-
	.wait(1000);
	!!inc;
.
+!make_counter :
    .my_name(NAME) &
    .concat("counter_",NAME,Art)
    <-
    makeArtifact(Art,"tools.Counter",[0],ArtId);
    focusWhenAvailable(Art);
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

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
