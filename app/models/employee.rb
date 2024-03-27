class Employee < ApplicationRecord
    def self.search(query)
        if query
            employee = Employee.find_by(employee_name: query)
        else
            @employees = Employee.all
        end
    end
end
