require 'active_interaction'
require 'byebug'

# class Square < ActiveInteraction::Base
#   float :x
#   string :name

#   validates :name,
#     presence: true


#   def execute
#     x**2
#   end
# end


# byebug
# outcome = Square.run(x: 'two point one')
# outcome.valid?
# # => nil
# outcome.errors.messages
# # => {:x=>["is not a valid float"]}

# outcome = Square.run(x: 2.1)
# outcome.valid?
# # => true
# outcome.result
# # => 4.41


# class Cow
#     def moo
#       'Moo!'
#     end
#   end
  
  class ObjectInteraction < ActiveInteraction::Base
  
    hash :params,
    default: {} do
      string :name,
        default: nil
    end

    def execute
      puts params
      puts params[:a]
      puts params[:b]
    end
  end
  
  byebug
  res=ObjectInteraction.run(params: {a: 4})
