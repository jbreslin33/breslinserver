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
				//biggest buffer that network can handle...
                byte[] buf = new byte[1400];

                // receive request
                DatagramPacket packet = new DatagramPacket(buf, buf.length);
                System.out.println("Waiting for client to send message...");
                socket.receive(packet);

				parsePacket(packet);


/*
                String bufferToClientsString = new String(bufferToClientsByteArray);

				// send the response to the client at "address" and "port"
                InetAddress address = packet.getAddress();
                int port = packet.getPort();
                packet = new DatagramPacket(bufferToClientsByteArray, bufferToClientsByteArray.length, address, port);

				System.out.println("data" + bufferToClientsString);

                System.out.println("got request from" + address.toString());

                socket.send(packet);
*/
            } catch (IOException e) {
                e.printStackTrace();
				serverOn = false;
            }
        }
        socket.close();
    }

void parsePacket(DatagramPacket packet)
{
	byte[] buf = packet.getData();

	//let's first see if it's a move or administrative task...
	if (buf[0] == 'j')
	{
		System.out.println("Join game");
		byte[] buffer = new byte[1];
		DatagramPacket p = new DatagramPacket(buffer,buffer.length,packet.getAddress(),packet.getPort());
		try
		{
			socket.send(p);
		}
        catch (IOException e)
        {
        	e.printStackTrace();
        }


	}
	else if (buf[0] == 'q')
	{
		System.out.println("Quit game");
	}
	else if (buf[0] == 'm')
	{
		System.out.println("Making a move");
	}
}

void sendJoinGame()
{

}



}