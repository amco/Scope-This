module ScopeThis
  include ActiveRecord::Base

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

    def inject_scope(method, args)
      { args.inject(all) { |result, arg| result = result.send(method, arg) } }
    end

  end
end
