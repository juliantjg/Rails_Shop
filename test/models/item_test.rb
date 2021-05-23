require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = Item.create(name: 'Winter Vibes', price: 30, description: 'Cold and Brilliant start', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
  end

  test "item should be valid" do
    assert @item.valid?
  end
end
