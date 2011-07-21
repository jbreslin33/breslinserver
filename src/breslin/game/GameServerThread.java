package breslin.game;

import java.io.*;
import java.net.*;
import java.util.*;

public class GameServerThread extends Thread {

    protected DatagramSocket socket = null;
    protected BufferedReader in = null;
    protected boolean serverOn = true;

    public GameServerThread() throws IOException {
	this("GameServerThread");
    }

    public GameServerThread(String name) throws IOException {
        super(name);
        socket = new DatagramSocket(4445);

    }

    public void run() {

        while (serverOn) {
            try {
                byte[] buf = new byte[1400];

                // receive request

                DatagramPacket packet = new DatagramPacket(buf, buf.length);


                System.out.println("Waiting for client to send message...");

                socket.receive(packet);

                byte[] bufferToClientsByteArray = packet.getData();


				//let sim a loop where you'll read packet
				for (int i = 0; i < 1; i++)
				{
					if (bufferToClientsByteArray[i] == 'W')
					{
						System.out.println("Move forward");
					}
				}

                String bufferToClientsString = new String(bufferToClientsByteArray);

				// send the response to the client at "address" and "port"
                InetAddress address = packet.getAddress();
                int port = packet.getPort();
                packet = new DatagramPacket(bufferToClientsByteArray, bufferToClientsByteArray.length, address, port);

				System.out.println("data" + bufferToClientsString);

                System.out.println("got request from" + address.toString());

                socket.send(packet);
            } catch (IOException e) {
                e.printStackTrace();
				serverOn = false;
            }
        }
        socket.close();
    }
}