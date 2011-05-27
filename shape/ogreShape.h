#ifndef OGRESHAPE_H
#define OGRESHAPE_H

#include "shape.h"
#include "../animation/ogreAnimation.h"

//Ogre headers
#include "Ogre.h"
using namespace Ogre;

class OgreShape : public Shape, public OgreAnimation
{

public:
OgreShape(std::string name, Vector3D* position, Ogre::SceneManager* mSceneMgr, std::string mesh, bool clientSide);
~OgreShape();

SceneNode* getSceneNode() { return mChildSceneNode; }

//ogre scene stuff
std::string         mMeshName;
Entity*             mEntity;
Ogre::SceneManager* mSceneManager;
SceneNode*          mChildSceneNode;
bool mClientSide;
};

#endif

