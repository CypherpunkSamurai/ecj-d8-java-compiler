echo ....
rm -fr *.dex *.class

if [ -z "$(ls *.jar)" ]; then
	echo Compiling java....
	ecj hello_world.java
	dx --dex --output="classes.dex" hello_world.class
else
	echo Compiling java and libraries...
	ecj -cp "$(ls *.jar)" hello_world.java
	dx --dex --output="classes.dex" "$(ls *.jar)" "$(ls *.class)"
fi


clear

# to run
dalvikvm -cp classes.dex hello_world


# for d8

# echo Compiling libraries....
# dx --dex --output="libs.dex" $(ls *.jar)
# echo Compiling into classes.dex....
# dx --dex --output="classes.dex" code.dex libs.dex


