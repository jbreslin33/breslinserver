#ifndef PLAYER_H
#define PLAYER_H

#include <string>

#define COMMAND_HISTORY_SIZE		64

//Ogre headers
#include "Ogre.h"
using namespace Ogre;

#include "../client/client.h"
#include "../move/move.h"
#include "../rotation/rotation.h"
#include "../shape/ogreShape.h"

#include "../command/command.h"

class Player : public Move, public Rotation, public OgreShape
{

public:

Player(Client* client, std::string name, Vector3D* position, Ogre::SceneManager* mSceneMgr, std::string mesh, bool clientSide);
~Player();

//id
int			mIndex;
std::string mName;

Command mFrame[64];
Command	mServerFrame;					// the latest frame from server
Command	mCommand;						// current frame's commands

//ticks
void processTick    ();
void interpolateTick    (float renderTime);
void calculateVelocity(Command *command, float frametime);
void setKeyDirection();

long mProcessedFrame;

Player* mServerPlayer;

Client* mClient;

//keys
Vector3 mKeyDirection;

Vector3 mGoalDirection;

};

#endif

