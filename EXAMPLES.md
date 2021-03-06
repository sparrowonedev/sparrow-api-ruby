### ach/advanced-echeck-sale.md: Echeck Advanced Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  amount: '9.95',
  bankname: 'BankofAmerica',
  routing: '110000000',
  account: '1234567890123',
  achaccounttype: 'checking',
  achaccountsubtype: 'business',
  company: 'CompanyName',
  firstname: 'Henry',
  lastname: 'Johnson',
  address1: 'Main Street 45',
  city: 'Scottsdale',
  zip: '12345',
  country: 'US',
  state: 'AZ',
  phone: '8526547896',
  email: 'hjohnson@test.com',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '00'
result.textresponse # => 'SUCCESS'
result.transid # => '11037948'
result.xref # => '3877926406'
result.authcode # => '123456'
result.type # => 'sale'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### ach/advanced-sale.md: ACH Advanced Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  bankname: 'First Test Bank',
  routing: '110000000',
  account: '1234567890123',
  achaccounttype: 'checking',
  achaccountsubtype: 'personal',
  amount: '9.95',
  orderdesc: 'Order Description',
  orderid: '11111',
  firstname: 'John',
  lastname: 'Doe',
  company: 'Sparrow One',
  address1: '16100 N 71st Street',
  address2: 'Suite 170',
  city: 'Scottsdale',
  state: 'AZ',
  zip: '85254',
  country: 'US',
  phone: '7025551234',
  email: 'john@norepy.com',
  shipaddress1: '16100 N 72nd Street',
  shipaddress2: 'Suite 171',
  shipcity: 'Pheonix',
  shipstate: 'AZ',
  shipzip: '85004',
  shipcountry: 'US',
  shipphone: '6025551234',
  shipemail: 'jane@noreply.com',
  saveclient: 'true',
  updateclient: 'true',
  opt_amount_type_1: 'surcharge',
  opt_amount_value_1: '1.01',
  opt_amount_percentage_1: '18',
  birthdate: '01/31/2000',
  checknumber: '123',
  driverlicensenumber: '1234567890',
  driverlicensecountry: 'US',
  driverlicensestate: 'AZ',
  sendtransreceipttobillemail: 'true',
  sendtransreceipttoshipemail: 'true',
  paymentdescriptor: 'Custom Payment Descriptor',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '00'
result.textresponse # => 'SUCCESS, Customer with token 'LS8W4RO5S7SZKZCN' successfully updated, Payment transaction successfully assigned to the customer with token 'LS8W4RO5S7SZKZCN''
result.transid # => '11037939'
result.xref # => '3877926149'
result.authcode # => '123456'
result.orderid # => '11111'
result.type # => 'sale'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'
result.token # => 'LS8W4RO5S7SZKZCN'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### ach/simple-ach.md: ACH Simple Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  bankname: 'First Test Bank',
  routing: '110000000',
  account: '1234567890123',
  achaccounttype: 'checking',
  achaccountsubtype: 'personal',
  amount: '9.95',
  firstname: 'John',
  lastname: 'Doe"',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '00'
result.textresponse # => 'SUCCESS'
result.transid # => '11037938'
result.xref # => '3877926141'
result.authcode # => '123456'
result.type # => 'sale'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### ach/simple-echeck.md: Echeck Simple Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  amount: '9.95',
  bankname: 'BankofAmerica',
  routing: '110000000',
  account: '1234567890123',
  achaccounttype: 'checking',
  achaccountsubtype: 'business',
  company: 'CompanyName',
  firstname: 'Henry',
  lastname: 'Johnson',
  address1: 'Main Street 45',
  city: 'Scottsdale',
  zip: '12345',
  country: 'US',
  state: 'AZ',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '00'
result.textresponse # => 'SUCCESS'
result.transid # => '11037947'
result.xref # => '3877926400'
result.authcode # => '123456'
result.type # => 'sale'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### airline-passenger-sale/passenger-sale.md: Card Airline Passenger Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.passenger_sale({
  cardnum: '4111111111111111',
  cardexp: '1019',
  amount: '9.95',
  cvv: '999',
  passengername: 'John Doe',
  stopovercode1: 'O',
  airportcode1: 'LAS',
  airportcode2: 'CDG',
  airportcode3: 'IAD',
  airportcode4: 'CPH',
  carriercoupon4: 'AA;BB',
  airlinecodenumber: 'AA0',
  ticketnumber: '1234567890',
  classofservicecoupon4: '00;AA',
  flightdatecoupon1: '01/31/2017',
  flightdeparturetimecoupon1: '23:59',
  addressverificationcode: 'A',
  approvalcode: '123456',
  transactionid: '1234567890',
  authcharindicator: 'A',
  referencenumber: '123456789012',
  validationcode: '1234',
  authresponsecode: 'AB',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10750803'
result.xref # => '3829708653'
result.authcode # => '123456'
result.orderid # => ''
result.type # => 'sale'
result.avsresponse # => ''
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### cc-verification/card-verification.md: Card Verification


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.balance({
  cardnum: '4111111111111111',
  cardexp: '1019',
  amount: '9.95',
  cvv: '999',
  zip: '85254"',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10750787'
result.xref # => '3829708536'
result.authcode # => '123456'
result.orderid # => ''
result.type # => 'auth'
result.avsresponse # => 'N'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### chargeback/mark-chargeback.md: Card Chargeback


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.chargeback({
  transid: '10934104',
  reason: 'Card reported lost',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Card reported lost'
result.transid # => '10934104'
result.xref # => '3865091326'
result.authcode # => '123456'
result.type # => 'chargeback'
result.cvvresponse # => 'M'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### creating-a-credit/simple-credit.md: Card Simple Credit


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.credit({
  cardnum: '4111111111111111',
  cardexp: '1019',
  amount: '7.25',
  cvv: '999',
  authcode: '123456',
  authdate: '01/31/2017',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037945'
result.xref # => '3877926268'
result.type # => 'credit'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### creating-a-sale/advanced-sale.md: Card Advanced Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  amount: '57.85',
  cardnum: '4111111111111111',
  cardexp: '1010',
  cvv: '999',
  skunumber_1: '5558779',
  description_1: 'menssweaterblue',
  amount_1: '50.00',
  quantity_1: '1',
  tax: '2.85',
  shipamount: '5.00',
  firstname: 'John',
  lastname: 'Smith',
  address1: '888 test address',
  city: 'Los Angeles',
  country: 'US',
  state: 'CA',
  phone: '222-444-2938',
  shipfirstname: 'John',
  shiplastname: 'Smith',
  shipaddress1: '888 test address',
  shipcity: 'Los Angeles',
  shipstate: 'CA',
  shipphone: '2224442938',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037942'
result.xref # => '3877926187'
result.authcode # => '123456'
result.type # => 'sale'
result.avsresponse # => 'A'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### creating-a-sale/simple-sale.md: Card Simple Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  amount: '9.95',
  cardnum: '4111111111111111',
  cardexp: '1010',
  cvv: '999',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037941'
result.xref # => '3877926163'
result.authcode # => '123456'
result.type # => 'sale'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/adding-a-customer.md: Data Vault Advanced Add Customer


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.addcustomer({
  firstname: 'John',
  lastname: 'Doe',
  note: 'Customer Note',
  address1: '16100 N 71st Street',
  address2: 'Suite 170',
  city: 'Scottsdale',
  state: 'AZ',
  zip: '85254',
  country: 'US',
  email: 'john@norepy.com',
  shipfirstname: 'Jane',
  shiplastname: 'Doe',
  shipcompany: 'Sparrow Two',
  shipaddress1: '16100 N 72nd Street',
  shipaddress2: 'Suite 171',
  shipcity: 'Pheonix',
  shipstate: 'AZ',
  shipzip: '85004',
  shipcountry: 'US',
  shipphone: '6025551234',
  shipemail: 'jane@noreply.com',
  username: 'JohnDoe17101717530877',
  password: 'Password123',
  clientuseremail: 'john@norepy.com',
  paytype_1: 'creditcard',
  paytype_2: 'check',
  firstname_1: 'John',
  firstname_2: 'John',
  lastname_1: 'Doe',
  lastname_2: 'Doe',
  address1_1: '123 Main Street',
  address1_2: '321 1st Street',
  address2_1: 'Suite 1',
  address2_2: 'Suite 2',
  city_1: 'Pheonix',
  city_2: 'Scottsdale',
  state_1: 'AZ',
  state_2: 'AZ',
  zip_1: '85111',
  zip_2: '85222',
  country_1: 'US',
  country_2: 'US',
  phone_1: '6025551234',
  phone_2: '6025554321',
  email_1: 'john@norepy.com',
  email_2: 'jane@noreploy.com',
  cardnum_1: '4111111111111111',
  cardnum_2: '4111111111111111',
  cardexp_1: '1019',
  cardexp_2: '1019',
  bankname_1: '',
  bankname_2: 'First Test Bank',
  routing_1: '',
  routing_2: '110000000',
  account_1: '',
  account_2: '1234567890123',
  achaccounttype_1: '',
  achaccounttype_2: 'personal',
  payno_1: '1',
  payno_2: '2',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'User with this name already exists. Please choose another name.'
result.type # => 'addcustomer'
result.customertoken # => 'F6OE0IN0I5HSV6AJ'
result.paymenttoken_1 # => '8XDQPZ8B6AH5D9LB'
result.paymenttoken_2 # => '28NEJVU5V0R11ZRR'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/adding-a-customer.md: Data Vault Simple Add Customer (With Card)


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.addcustomer({
  firstname: 'John',
  lastname: 'Doe',
  paytype_1: 'creditcard',
  cardnum_1: '4111111111111111',
  cardexp_1: '0220',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'IQ6YUYON6ELUAIWH' successfully created'
result.type # => 'addcustomer'
result.customertoken # => 'IQ6YUYON6ELUAIWH'
result.paymenttoken_1 # => 'UZKI8XHOI6UHBSWH'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/adding-a-customer.md: Data Vault Simple Add Customer (With Ewallet)


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.addcustomer({
  firstname: 'John',
  lastname: 'Doe',
  paytype_1: 'ewallet',
  ewallettype_1: 'paypal',
  ewalletaccount_1: 'email@email.com',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'W5ISW01Q58S61WB1' successfully created'
result.type # => 'addcustomer'
result.customertoken # => 'W5ISW01Q58S61WB1'
result.paymenttoken_1 # => 'XYHW75NVJRPXEHMO'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/adding-a-customer.md: Data Vault Simple Add Customer (With Star Card)


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.addcustomer({
  firstname: 'John',
  lastname: 'Doe',
  paytype_1: 'starcard',
  cardnum_1: '6019440000011111',
  CID: '52347800001',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'LDX59BK4441R46J7' successfully created'
result.type # => 'addcustomer'
result.customertoken # => 'LDX59BK4441R46J7'
result.paymenttoken_1 # => 'I5ZVHNONDI5YIGKG'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/assign-plan.md: Data Vault Assign Payment Plan


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.assign_plan({
  customertoken: 'LFC0KIYV18APRLCH',
  plantoken: 'FJMPACHB9K61LIDM',
  paymenttoken: 'QQ8TR7J8P0IQ9TOL',
  amount: '100.00',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Success'
result.type # => 'assignplan'
result.assignmenttoken # => 'SD8E9DU373N9ELXW'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/delete-customer.md: Data Vault Delete Customer


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.delete_customer({
  token: 'LFC0KIYV18APRLCH',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.type # => 'deletecustomer'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/delete-payment-type.md: Data Vault Delete Payment Type


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.delete_payment_type({
  token: 'LFC0KIYV18APRLCH',
  operationtype_1: 'deletepaytype',
  token_1: 'QQ8TR7J8P0IQ9TOL',
  achaccounttype_1: 'savings',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'LFC0KIYV18APRLCH' successfully updated'
result.type # => 'updatecustomer'
result.customertoken # => 'LFC0KIYV18APRLCH'
result.paymenttoken_1 # => 'QQ8TR7J8P0IQ9TOL'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/delete-plan.md: Data Vault Delete Payment Plan


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.delete_plan({
  token: 'FJMPACHB9K61LIDM',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.type # => 'deleteplan'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/get-customer.md: Data Vault Get Customer


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.get_customer({
  token: 'LFC0KIYV18APRLCH',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Processed'
result.customertoken # => 'LFC0KIYV18APRLCH'
result.CustomerStatus # => 'Active'
result.firstname # => 'Dude'
result.lastname # => 'Fella'
result.paytype_1 # => 'CreditCard'
result.payno_1 # => '1'
result.cardexp_1 # => '1019'
result.account_1 # => '411111******1111'
result.useAccountUpdater_1 # => 'False'
result.token_1 # => 'QQ8TR7J8P0IQ9TOL'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/get-payment-type.md: Data Vault Get Payment Type


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.get_payment_type({
  token: 'QQ8TR7J8P0IQ9TOL',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Processed'
result.paytype # => 'CreditCard'
result.payno # => '1'
result.cardexp # => '1019'
result.account # => '411111******1111'
result.useAccountUpdater # => 'False'
result.token # => 'QQ8TR7J8P0IQ9TOL'
result.customertoken # => 'LFC0KIYV18APRLCH'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### datavault/update-payment-type.md: Data Vault Update Customer


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.updatecustomer({
  token: 'B31388EA20ABF2776C93',
  address1: '939 St. Winnie’s st.',
  city: 'Forest City',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'O3BEZTT2UHCS7USA' successfully updated'
result.type # => 'updatecustomer'
result.customertoken # => 'O3BEZTT2UHCS7USA'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### ewallet/ewallet-credit.md: Ewallet Simple Credit


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.credit({
  ewalletaccount: 'user@example.com',
  ewallet_type: 'PayPal',
  amount: '9.95',
  currency: 'USD',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Successful'
result.transid # => '11037949'
result.xref # => '3RBFE4Q3T5XBJ'
result.type # => 'credit'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### fiserv/fiserv-advanced.md: Fiserv Advanced Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  cardnum: '4111111111111111',
  cardexp: '1019',
  amount: '9.95',
  cvv: '999',
  currency: 'USD',
  firstname: 'John',
  lastname: 'Doe',
  skunumber_1: '123',
  skunumber_2: '456',
  description_1: 'Blue widget',
  description_2: 'Brown widget',
  amount_1: '1.99',
  amount_2: '2.99',
  quantity_1: '1',
  quantity_2: '2',
  orderdesc: 'Order Description',
  orderid: '11111',
  cardipaddress: '8.8.8.8',
  tax: '0.25',
  shipamount: '1.25',
  ponumber: '22222',
  company: 'Sparrow One',
  address1: '16100 N 71st Street',
  address2: 'Suite 170',
  city: 'Scottsdale',
  state: 'AZ',
  zip: '85254',
  country: 'US',
  email: 'john@norepy.com',
  shipfirstname: 'Jane',
  shiplastname: 'Doe',
  shipcompany: 'Sparrow Two',
  shipaddress1: '16100 N 72nd Street',
  shipaddress2: 'Suite 171',
  shipcity: 'Pheonix',
  shipstate: 'AZ',
  shipzip: '85004',
  shipcountry: 'US',
  shipphone: '6025551234',
  shipemail: 'jane@noreply.com',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037951'
result.xref # => '3877926535'
result.authcode # => '123456'
result.orderid # => '11111'
result.type # => 'sale'
result.avsresponse # => 'N'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### fiserv/fiserv-simple.md: Fiserv Simple Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  cardnum: '4111111111111111',
  cardexp: '1019',
  amount: '9.95',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037950'
result.xref # => '3877926499'
result.authcode # => '123456'
result.type # => 'sale'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### invoicing/cancel-invoice.md: Data Vault Cancel Invoice


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.cancel_invoice({
  invoicenumber: 'Inv-39745',
  invoicestatusreason: 'Customer allergic to product',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.textresponse # => 'invoice has been successfully canceled'
result.invoicenumber # => 'Inv-39745'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### invoicing/create-merchant-invoice.md: Data Vault Create Invoice


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.create_invoice({
  invoicedate: '10/15/2018',
  currency: 'USD',
  invoiceamount: '212.95',
  invoicestatus: 'draft',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.textresponse # => 'invoice has been successfully created'
result.invoicenumber # => 'Inv-39746'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### invoicing/get-invoice.md: Data Vault Get Invoice


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.get_invoice({
  invoicenumber: 'Inv-39744',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.textresponse # => 'Success'
result.invoicenumber # => 'Inv-39744'
result.invoiceamount # => '212.9500'
result.currency # => 'USD'
result.invoicedate # => '10/15/2018'
result.invoicestatus # => 'Draft'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### invoicing/pay-invoice.md: Data Vault Pay Invoice


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.pay_invoice({
  invoicenumber: 'Inv-39744',
  cardnum: '4111111111111111',
  cardexp: '1019',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.textresponse # => 'Invoice has been successfully paid'
result.transid # => '11037946'
result.invoicenumber # => 'Inv-39744'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### invoicing/update-invoice.md: Data Vault Update Invoice


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.update_invoice({
  invoicenumber: 'Inv-39744',
  invoicestatus: 'active',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.textresponse # => 'Invoice has been successfully updated'
result.invoicenumber # => 'Inv-39744'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### issuing-a-refund/advanced-refund.md: Card Advanced Refund


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.refund({
  transid: '10750789',
  amount: '9.95',
  sendtransreceipttobillemail: 'true',
  sendtransreceipttoshipemail: 'true',
  sendtransreceipttoemails: 'email@email.com',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10750789'
result.xref # => '3829708545'
result.authcode # => '123456'
result.orderid # => ''
result.type # => 'refund'
result.avsresponse # => ''
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### issuing-a-refund/simple-refund.md: Card Simple Refund


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.refund({
  transid: '10933995',
  amount: '1.25',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10933995'
result.xref # => '3865034307'
result.authcode # => '123456'
result.type # => 'refund'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### issuing-a-void/simple-void.md: Card Simple Void


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.void({
  transid: '12345678',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Transaction Void Successful'
result.transid # => '10750790'
result.xref # => '3829708544'
result.authcode # => '123456'
result.orderid # => ''
result.type # => 'void'
result.avsresponse # => ''
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### payment-plans/add-payment-plan.md :Data Vault Add Payment Plan


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.add_plan({
  planname: 'Example Plan Name',
  plandesc: 'Example Plan Description',
  startdate: '01/01/2019',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.type # => 'addplan'
result.plantoken # => 'SZU9MPC0XTKP4DAY'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### payment-plans/add-payment-type.md: Data Vault Add Payment Type


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.add_payment_type({
  token: 'LFC0KIYV18APRLCH',
  operationtype_1: 'updatepaytype',
  token_1: 'QQ8TR7J8P0IQ9TOL',
  achaccounttype_1: 'savings',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'LFC0KIYV18APRLCH' successfully updated'
result.type # => 'updatecustomer'
result.customertoken # => 'LFC0KIYV18APRLCH'
result.paymenttoken_1 # => 'QQ8TR7J8P0IQ9TOL'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### payment-plans/add-sequence.md: Data Vault Add Payment Plan Sequence


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.add_sequence({
  token: 'FJMPACHB9K61LIDM',
  operationtype_1: 'addsequence',
  sequence_1: '1',
  amount_1: '50.00',
  scheduletype_1: 'monthly',
  scheduleday_1: '7',
  duration_1: '12',
  description_1: 'Bi-weekly',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.type # => 'updateplan'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### payment-plans/update-payment-plan.md: Data Vault Update Payment Plan


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.updateplan({
  token: 'FJMPACHB9K61LIDM',
  plandesc: 'Example Plan Description',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.type # => 'updateplan'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### payment-plans/update-payment-type.md: Data Vault Update Payment Type


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.update_payment_type({
  token: 'LFC0KIYV18APRLCH',
  operationtype_1: 'updatepaytype',
  token_1: 'QQ8TR7J8P0IQ9TOL',
  achaccounttype_1: 'checking',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'Customer with token 'LFC0KIYV18APRLCH' successfully updated'
result.type # => 'updatecustomer'
result.customertoken # => 'LFC0KIYV18APRLCH'
result.paymenttoken_1 # => 'QQ8TR7J8P0IQ9TOL'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### separate-auth-capture/advanced-capture.md: Card Advanced Capture


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.capture({
  amount: '9.95',
  transid: '123456',
  sendtransreceipttobillemail: 'true',
  orderid: '54321',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '123456'
result.xref # => '3865035008'
result.authcode # => '654321'
result.type # => 'capture'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### separate-auth-capture/offline-capture.md: Card Simple Offline Capture


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.offline({
  amount: '9.95',
  cardnum: '4111111111111111',
  cardexp: '1010',
  cvv: '999',
  authcode: '987654',
  authdate: '03/25/2016',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037944'
result.xref # => '3877926242'
result.authcode # => '987654'
result.type # => 'offline'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### separate-auth-capture/simple-auth.md: Card Simple Auth


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.auth({
  amount: '9.95',
  cardnum: '4111111111111111',
  cardexp: '1010',
  cvv: '999',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '11037943'
result.xref # => '3877926217'
result.authcode # => '123456'
result.type # => 'auth'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### separate-auth-capture/simple-capture.md: Card Simple Capture


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.capture({
  transid: '10934003',
  amount: '9.25',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10934003'
result.xref # => '3865034963'
result.authcode # => '123456'
result.type # => 'capture'
result.cvvresponse # => 'M'
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### starcard/starcard-advanced.md: Star Card Advanced Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  amount: '57.85',
  cardnum: '6019440000011111',
  CID: '12345678911',
  cardexp: '1010',
  cvv: '999',
  skunumber_1: '5558779',
  description_1: 'menssweaterblue',
  amount_1: '50.00',
  quantity_1: '1',
  tax: '2.85',
  shipamount: '5.00',
  firstname: 'John',
  lastname: 'Smith',
  address1: '888 test address',
  city: 'Los Angeles',
  country: 'US',
  state: 'CA',
  phone: '222-444-2938',
  shipfirstname: 'John',
  shiplastname: 'Smith',
  shipaddress1: '888 test address',
  shipcity: 'Los Angeles',
  shipstate: 'CA',
  shipphone: '2224442938',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10750808'
result.xref # => '3829708587'
result.authcode # => '123456'
result.orderid # => '11111'
result.type # => 'sale'
result.avsresponse # => 'N'
result.cvvresponse # => ''
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### starcard/starcard-simple.md: Star Card Simple Sale


CODE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

api.sale({
  cardnum: '6019440000011111',
  amount: '20.00',
  CID: '52347800001',
})

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RESULT:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


result.response # => '1'
result.textresponse # => 'SUCCESS'
result.transid # => '10750791'
result.xref # => '3829708548'
result.authcode # => '123456'
result.orderid # => ''
result.type # => 'sale'
result.avsresponse # => ''
result.cvvresponse # => ''
result.coderesponse # => '100'
result.codedescription # => 'Transaction was Approved'
result.status # => '200'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

