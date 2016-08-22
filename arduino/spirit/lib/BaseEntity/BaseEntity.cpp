#include "BaseEntity.h"
#include <assert.h>

int BaseEntity::mNextValidID = 0;

void BaseEntity::setID(int val)
{
 // assert ( (val >= mNextValidID) && "<BaseEntity::setID>: invalid ID");

  mID = val;
    
  mNextValidID = mID + 1;
}
