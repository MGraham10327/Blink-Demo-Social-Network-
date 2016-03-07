class Friendshipp < ActiveRecord::Base
	belongs_to :user
	belongs_to :friend, class_name: "User"

	def accept_friendship
		self.update_attributes(state: "active", friended_at: Time.now)
		
	end

	def deny_friendship
		self.destroy
	end

	def cancel_friendship
		self.destroy
	end

	def request_friendship(user_2)
		self.friendships.create(friend: user_2)
	end

	def active_friends
		self.friendships.where(state: "active").map(&:friend) + self.inverse_friendships.where(state: "active").map(&:user)
	end

	def pending_friend_request_from
		self.inverse_friendships.where(state: "pending")
	end

	def pending_friend_request_to
		self.friendships.where(state: "pending")
	end

	def friendship_status(user_2)
		friendship = Friendshipp.where(user_id: [self.id,user_2.id], friend_id: [self.id,user_2.id])
		if friendship.any? == false
			return "not_friends"
		elsif friendship.first.state == "active"
			return "friends"
		elsif friendship.first.user == self
			return "pending"
		elsif friendship.first.friend == self
			return "requested"
		end
	end

	def friendship_relation(user_2)
		Friendship.where(user_id: [self.id, user_2.id], friend_id: [self.id, user_2.id]).first		
	end
end