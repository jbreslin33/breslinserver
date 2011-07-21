mkdir build
javac src/breslin/game/message/Message.java
javac -d build -cp "lib/jME3-lwjgl-natives.jar;lib/jMonkeyEngine3.jar;lib/lwjgl.jar;." src/breslin/game/*.java