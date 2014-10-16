require 'lib/complejo'
require 'test/unit'

Class TestConjunto < Test::Unit::TestCase
   

 	p=Complejo.new(4.0,2.0)
	n=Complejo.new(5.0,4.0)
        q=p+n
	r=p-n
	s=p*p
	t=p/n
	u=p*(3)

    def test_suma
       assert_equal(q.a, 9.0)

	end

    def test_resta
	assert_equal(r.a, -1.0)	  
	end


    def test_producto_escalar
        assert_equal(s.a, 12.0)

	end


    def test_division
	assert_equal("0.682926829", t.a.to_s )	
	end	

end
