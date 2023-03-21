class SecretDiary
  def initialize(diary) 
    @locked = true
    @diary = diary
  end

  def read
    if @locked != true
      return @diary.read
    else 
      return "Go away!"
    end
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end