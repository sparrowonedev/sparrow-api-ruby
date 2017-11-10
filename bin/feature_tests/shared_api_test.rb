class SharedAPITest < SparrowOne::TestRunner
  def api
    @api ||= SparrowOne::CardAPI.new(TEST_KEYS[:credit_card])
  end

  def run
    card_customer = specify(:addcustomer, { firstname: "Dude", lastname: "Fella", paytype_1: 'creditcard', cardnum_1: "4111111111111111", cardexp_1: '1019' })
    ach_customer = specify(:addcustomer, { firstname: "Captain", lastname: "Kangaroo", paytype_1: 'ach', bankname_1: 'Hypothetical S&L', achaccounttype_1: 'checking', achaccountsubtype_1: 'personal', routing_1: '123456789', account_1: '987654321' })
    generic_customer = specify(:addcustomer, { firstname: "Rhubarb", lastname: "McGillicutty" })

    update_customer = specify(:updatecustomer, { token: ach_customer['customertoken'], firstname: "Admiral", secret_knock: "shave-anda-haircut" })
    added_paytype = specify(:add_payment_type, { token: ach_customer['customertoken'], operationtype_1: "updatepaytype", token_1: ach_customer['paymenttoken_1'], achaccounttype_1: 'savings' })
    missing_param_updated_paytype = specify(:add_payment_type, { token: ach_customer['customertoken'], operationtype_1: "updatepaytype", achaccounttype_1: 'savings' }, /must have.+token/)

    get_customer = specify(:get_customer, { token: ach_customer['customertoken'] })

    decrypt = fault("No way to specify custom encrypted fields", :decrypt, { token: ach_customer['customertoken'], fieldname: "account_1" })

    deleted_paytype = specify(:delete_payment_type, { token: ach_customer['customertoken'], operationtype_1: "deletepaytype", token_1: ach_customer['paymenttoken_1'], achaccounttype_1: 'savings' })

    delete_customer = specify(:delete_customer, { token: ach_customer['customertoken'] })

    missing_customer = specify(:getcustomer, { token: ach_customer['customertoken'] })

    plan = specify(:add_plan, { planname: "Lease program", plandesc: "Kinda like rent-to-own but better", startdate: "01/01/2019" })
    sequencable_plan = specify(:add_plan, { planname: "Lease program", plandesc: "Kinda like rent-to-own but better", startdate: "01/01/2019" })

    updated_plan = specify(:updateplan, { token: plan['plantoken'], plandesc: "You get to have it while you're still buying it" })

    sequenced_plan = specify(:add_sequence, {
      token: sequencable_plan['plantoken'],
      operationtype_1: "addsequence",
      operationtype_2: "addsequence",
      sequence_1: '1',
      sequence_2: '2',
      amount_1: '50',
      amount_2: '100',
      scheduletype_1: 'custom',
      scheduletype_2: 'monthly',
      scheduleday_1: '7',
      scheduleday_2: '1',
      duration_1: '52',
      duration_2: '26',
      productid_1: 'abc',
      productid_2: 'def',
      description_1: 'Bi-weekly',
      description_2: 'Monthly',
    })

    deleted_plan = specify(:delete_plan, { token: plan['plantoken'] })

    customer_for_plan = specify(:addcustomer, { firstname: "Dude", lastname: "Fella", paytype_1: 'creditcard', cardnum_1: "4111111111111111", cardexp_1: '1019' })
    assigned_plan = fault("Internal processing error", :assign_plan, { customertoken: customer_for_plan['customertoken'], plantoken: sequenced_plan['plantoken'], paymenttoken: customer_for_plan['paymenttoken_1'], amount: "800.00"  })

    invoice = specify(:create_invoice, { invoicedate: "10/15/2018", currency: "USD", invoiceamount: "212.95", invoicestatus: "draft" })
    cancelable_invoice = specify(:create_invoice, { invoicedate: "10/15/2018", currency: "USD", invoiceamount: "101.95", invoicestatus: "active" })
    retrieved_invoice = specify(:get_invoice, { invoicenumber: invoice['invoicenumber'] })

    updated_invoice = specify(:update_invoice, { invoicenumber: invoice['invoicenumber'], invoicestatus: "active" })
    paid_invoice = specify(:pay_invoice, { invoicenumber: invoice['invoicenumber'], cardnum: "4111111111111111", cardexp: '1019' })
    canceled_invoice = specify(:cancel_invoice, { invoicenumber: cancelable_invoice['invoicenumber'], invoicestatusreason: "Allergic to product" })
  end
end
