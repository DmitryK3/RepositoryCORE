class Anno
    attr_accessor :name, :sadLife, :sadSalary, :sadWife
def initialize (name, options)
self.name= name
self.sadLife = options[:sadLife]
self.sadSalary= options[:sadSalary]
self.sadWife= options[:sadWife]
end    end
anno = Anno.new("Elin", {:sadLife => 96,  :sadSalary => '112 euro', :sadWife =>"i am it"})
p anno
