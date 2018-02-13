class CompanyDetector
  def initialize(company_names)
    @company_names = company_names

    raise ArgumentError if @company_names.empty?
  end

  def run(text)
    @company_names.select do |company_name|
      text.downcase.include?(company_name)
    end
  end
end
