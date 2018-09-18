class Floor < ActiveRecord::Base
    def poster
        "#{photo_url}"
    end

    def details
        "#{description}"
    end

    def cart_action(current_user_id)
        if $redis.sismember "cart#{current_user_id}", id
          "Remove from"
        else
          "Add to"
        end
    end
end
