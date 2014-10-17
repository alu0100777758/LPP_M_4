require 'lib/complex.rb'
require 'test/unit'

class TestComplejo < Test::Unit::TestCase
  def setup
    @origen = Complejo.new(0,0)
    @unidad = Complejo.new(1,1)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(0)", @origen.to_s)
    assert_equal("(5+5i)", (@unidad*5).to_s)
    assert_equal("(5+5i)", (@unidad+Complejo.new(4,4)).to_s)
    assert_equal("(-1-1i)",(@unidad-Complejo.new(2,2)).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Complejo.new('1','1')}
  end
  def test_failure
    assert_equal("(5+5i)", (@origen * 5).to_s, "Producto escalar")
  end
end
