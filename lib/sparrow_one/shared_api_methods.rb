module SparrowOne
  module SharedAPIMethods

    def refund(params)
      with_error_handling do
        validate(params, requires: [:amount, :transid])
        post("refund", params)
      end
    end

    def void(params)
      with_error_handling do
        validate(params, requires: [:transid])
        post("void", params)
      end
    end

    def chargeback(params)
      with_error_handling do
        validate(params, requires: [:transid, :reason])
        post("chargeback", params)
      end
    end

    def decrypt(params)
      with_error_handling do
        validate(params, requires: [:fieldname, :token])
        post("decrypt", params)
      end
    end

    def add_customer(params)
      with_error_handling do
        validate(params, requires: [:firstname, :lastname, :paytype_1, :cardnum_1, :cardexp_1])
        post("addcustomer", params)
      end
    end
    alias_method :addcustomer, :add_customer

    def update_customer(params)
      with_error_handling do
        validate(params, requires: [:token])
        post("updatecustomer", params)
      end
    end
    alias_method :updatecustomer, :update_customer

    def delete_payment_type(params)
      with_error_handling do
        validate(params, requires: [:token, :token_1])
        post("updatecustomer", params.merge(operationtype_1: 'deletepaytype'))
      end
    end
    alias_method :deletepaymenttype, :delete_payment_type

    def delete_customer(params)
      with_error_handling do
        validate(params, requires: [:token])
        post("deletecustomer", params)
      end
    end
    alias_method :deletecustomer, :delete_customer

    def add_plan(params)
      with_error_handling do
        validate(params, requires: [:planname, :plandesc, :startdate])
        post("addplan", params)
      end
    end
    alias_method :addplan, :add_plan

    def update_plan(params)
      with_error_handling do
        validate(params, requires: [:token])
        post("updateplan", params)
      end
    end
    alias_method :updateplan, :update_plan

    def delete_plan(params)
      with_error_handling do
        validate(params, requires: [:token])
        post("deleteplan", params)
      end
    end
    alias_method :delteplan, :delete_plan

    def assign_plan(params)
      with_error_handling do
        validate(params, requires: [:customertoken, :plantoken, :paymenttoken])
        post("assignplan", params)
      end
    end
    alias_method :assignplan, :assign_plan

    def update_assignment(params)
      with_error_handling do
        validate(params, requires: [:assignmenttoken])
        post("updateassignment", params)
      end
    end
    alias_method :updateassignment, :update_assignment
    alias_method :updateplanassignment, :update_assignment
    alias_method :update_plan_assignment, :update_assignment

    def cancel_assignment(params)
      with_error_handling do
        validate(params, requires: [:assignmenttoken])
        post("cancelassignment", params)
      end
    end
    alias_method :cancelassignment, :cancel_assignment
    alias_method :cancelplanassignment, :cancel_assignment
    alias_method :cancel_plan_assignment, :cancel_assignment
  end
end