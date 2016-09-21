require 'rspec'
require 'tdd'

describe Array do
  describe "#my_uniq" do
    it "removes any duplicates from an array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do
    it "returns indices of any two elements that sum to 0" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "transposes matrices" do
      rows = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
      cols = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]

      expect(rows.my_transpose).to eq(cols)
      expect(cols.my_transpose).to eq(rows)
    end
  end

end

describe "#stock_picker" do
  it "picks the most profitable buying point and selling point" do
    prices = [100, 40, 90, 140, 100]

    expect(stock_picker(prices)).to eq([1,3])
  end

  it "mitigates the losses" do
    another_stock = [100, 90, 80, 70]
    
    expect(stock_picker(another_stock))
  end
end
