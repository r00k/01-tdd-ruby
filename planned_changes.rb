RSpec.describe CompanyDetector do
  describe "run" do
    it "finds companies in the text" do
      company_names = %w(apple amazon dell)
      text = "i think we should buy apple and maybe amazon"
      result = CompanyDetector.new(company_names).run(text)

      expect(result).to eq(%w(apple amazon))
    end

    it "searches without regard to case" do
      company_names = %w(apple amazon dell)
      text = "i think we should buy Apple and maybe Amazon"

      result = CompanyDetector.new(company_names).run(text)

      expect(result).to eq(%w(apple amazon))
    end
  end

  describe "#initialize" do
    it "raises an exception if no company names are provided" do
      expect { CompanyDetector.new([]) }.to raise_error(ArgumentError)
    end
  end
end
