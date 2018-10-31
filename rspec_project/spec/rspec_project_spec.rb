require "rspec_project"

RSpec.describe do
  describe "#remove_dups" do
    it "removes duplicates" do
      removed_dup_array = removed_dups([1,2,3,3,3])
      expect(removed_dup_array).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    it "returns pair of indcies whose elements sum to 0" do
      zero_pairs = [[0, 4], [2, 3]]
      expect(two_sum([-1, 0, 2, -2, 1])).to eq(zero_pairs)
    end
  end

  describe "#my_transpose" do
    it "transposes an array" do
      transposed_arr = [[1, 3], [2, 4]]
      expect(my_transpose([[1, 2], [3, 4]])).to eq(transposed_arr)
    end
  end

  describe "#stock_picker" do
    it "Picks the best days to buy/sell a stock for the most profit"  do
      best_days = stock_picker([1,2,10,9,2,7])
      expect(best_days).to eq([0,2])
    end
  end
end
