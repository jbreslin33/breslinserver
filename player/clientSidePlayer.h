#ifndef CLIENTSIDEPLAYER_H
#define CLIENTSIDEPLAYER_H

#include "player.h"

class ClientSidePlayer : public Player
{

public:

ClientSidePlayer(Client* client, std::string name, Vector3D* position, Ogre::SceneManager* mSceneMgr, std::string mesh);
~ClientSidePlayer();

//ticks
void processTick    ();
void interpolateTick    (float renderTime);



};

#endif

