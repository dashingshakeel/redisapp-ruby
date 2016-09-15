class LetterRedisRepository
  def self.top
    
    list= redis.zrevrange "top_letters",0,9
    if list.empty?
      letters=Letter.limit(10).order(scroe: :desc)
      letters.each do |letter|
        redis.zadd "top_letters",letter.scroe,letter.id
      end
      return letters.map(&:id)
    else
      return list
    
    end
  end
  def self.increament letter 
    redis.zincrby "top_letters",1, letter.id
  end  
  def self.decreament letter 
    redis.zincrby "top_letters",1, letter.id
    
  end
  def self.redis
    @redis ||=Redis.new
  end
end