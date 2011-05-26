#ifndef SERVERSIDEPLAYER_H
#define SERVERSIDEPLAYER_H

#include "../player/player.h"



//Ogre headers
#include "Ogre.h"
using namespace Ogre;

class OgreShape;
class Client;

class ServerSidePlayer : public Player
{

public:

ServerSidePlayer(Client* client, std::string name, Vector3D* position, Ogre::SceneManager* mSceneMgr, std::string mesh);
~ServerSidePlayer();

//movement
void processTick();
void calculateVelocity(Command *command, float frametime);
void setKeyDirection();



};

#endif

