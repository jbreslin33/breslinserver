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
                byte[] buf = new byte[256];

                    // receive request
                DatagramPacket packet = new DatagramPacket(buf, buf.length);

                System.out.println("Waiting for client to send message...");

                socket.receive(packet);

                byte[] bufferToClients = packet.getData();

			    // send the response to the client at "address" and "port"
                InetAddress address = packet.getAddress();
                int port = packet.getPort();
                packet = new DatagramPacket(bufferToClients, bufferToClients.length, address, port);

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