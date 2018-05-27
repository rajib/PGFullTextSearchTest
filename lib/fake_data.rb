require 'faker'

class FakeData
  def self.populate
    10000.times do
      n = Faker::Name.name
      indent = Indent.new(
        warehouse: Faker::Company.bs,
        no: "INDDM#{Faker::Number.number(10)}",
        grp: Faker::Commerce.material,
        item: Faker::Commerce.product_name,
        make: Faker::Commerce.promotion_code(digits = 2),
        uom: "No",
        qt_p: Faker::Number.between(1, 100),
        dt: Faker::Date.backward(114).strftime("%d/%m"),
        rq: Faker::Date.backward(154).strftime("%d/%m"),
        cc: "None",
        remarks: nil,
        details: Faker::Lorem.sentence,
        pr_po: Faker::Company.catch_phrase,
        by: n.split(' ').first,
        status: "RFQ/#{Faker::Number.between(1, 60)}",
        date: Faker::Date.backward(114).strftime("%d/%m"),
        person: n
      )
      indent.save
    end
  end
end