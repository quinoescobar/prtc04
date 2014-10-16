class Complejo
   attr_reader :a, :b
   def initialize(a,b)
      @a, @b = a, b
   end
   def to_s
      "(#{@a},#{@b})"
   end
   def -(other)
      Complejo.new(@a-other.a, @b-other.b)
   end
   def +(other)
      Complejo.new(@a+other.a, @b+other.b)
   end
   def *(other)
      return Complejo.new(@a*other, @b*other) if other.is_a? Numeric

      r=@a*other.a
      s=@b*other.b
      t=@a*other.b
      v=@b*other.a
      Complejo.new(r-s, t+v)
   end
   def /(other)
      r=@a*other.a
      s=@b*other.b
      t=@b*other.a
      v=@a*other.b
      y=other.a**2
      x=other.b**2
      z=y+x
      Complejo.new((r+s)/z, (t-v)/z)
   end
end

