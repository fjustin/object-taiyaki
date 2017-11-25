require 'minitest/autorun'

class Taiyaki
  attr_reader :anko

  # 初期状態でたい焼きにあんこを持たせる
  def initialize(anko)
    @anko = anko
  end
end


# putsで確認すると面倒なのでテストを書きながら確認
class TaiyakiTest < MiniTest::Test
  def test_taiyaki
    taiyaki_1 = Taiyaki.new('あずき')
    assert_equal 'あずき', taiyaki_1.anko

    taiyaki_2 = Taiyaki.new('白あん')
    assert_equal '白あん', taiyaki_2.anko
  end
end

