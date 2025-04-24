require_relative './string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "with empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "with single number" do
      it "returns the number" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "with two numbers" do
      it "returns the sum" do
        expect(StringCalculator.add("1,5")).to eq(6)
      end
    end

    context "with multiple numbers" do
      it "returns the sum" do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end
    end

    context "with newline delimiters" do
      it "returns the sum" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context "with custom delimiter" do
      it "returns the sum" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context "with negative numbers" do
      it "throws an exception" do
        expect { StringCalculator.add("-1,2") }.to raise_error("negative numbers not allowed: -1")
      end

      it "shows all negative numbers in exception" do
        expect { StringCalculator.add("2,-4,3,-5") }.to raise_error("negative numbers not allowed: -4,-5")
      end
    end
  end
end