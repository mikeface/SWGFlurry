
#ifndef REMOVEPETSFROMGROUPTASK_H_
#define REMOVEPETSFROMGROUPTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/objects/player/PlayerObject.h"

class RemovePetsFromGroupTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<GroupObject*> group;
public:
	RemovePetsFromGroupTask(CreatureObject* creo, GroupObject* grp) :
		player(creo), group(grp) {

	}

	void run() {
		Locker locker(player);

		Locker clocker(group, player);

		Reference<PlayerObject*> ghost = player->getPlayerObject();

		for (int i = 0; i < ghost->getActivePetsSize(); i++) {
			ManagedReference<AiAgent*> pet = ghost->getActivePet(i);

			if (pet == nullptr)
				continue;

			if (group->hasMember(pet)) {
				group->removeMember(pet);

				Locker locker(pet, player);

				pet->updateGroup(nullptr);
			}
		}

		if (group->getGroupSize() < 2) {
			group->disband();
			return;
		}

		ManagedReference<CreatureObject*> leader = group->getLeader();

		// Make sure new leader isn't a pet
		if (leader == nullptr || !leader->isPlayerCreature()) {
			for (int i = 1; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> member = group->getGroupMember(i);

				if (member->isPlayerCreature()) {
					group->makeLeader(member);
					break;
				}
			}
		}

		leader = group->getLeader();

		// Disband if only pets remain
		if (leader == nullptr || !leader->isPlayerCreature()) {
			group->disband();
		}
	}
};



#endif /* REMOVEPETSFROMGROUPTASK_H_ */
