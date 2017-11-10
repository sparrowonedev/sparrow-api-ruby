class StarcardAPITest < SparrowOne::TestRunner
  def api
    @api ||= SparrowOne::StarcardAPI.new(TEST_KEYS[:star_card])
  end

  def run
    puts "\nStar Card Sales:"

    sale_one = specify(:sale, { cardnum: '6019440000011111', cardexp: '1019', amount: '5.25', cvv: '999', CID: '52347800001' })

    sale_two = specify(:sale, { state: "NV", cardnum: '6019440000011111', cardexp: '1019', amount: '5.25', cvv: '999', CID: '52347800001' })

  end
end
