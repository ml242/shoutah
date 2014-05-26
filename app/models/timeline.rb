class Timeline

  extend ActiveModel::Naming

  def initialize user
    @user = user
  end

  def shouts
    # @user.shouts
    # @user.shouts + Shout.where(user_id: @user.followed_user.id)
    Shout.where(user_id: shout_user_ids)
  end

  private

  def shout_user_ids
    [@user.id] + @user.followed_user_ids
  end

end