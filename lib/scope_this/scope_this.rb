module ScopeThis
  class ScopeThis
    def self.rescope(method, args)
      ->{ args.inject(all) { |result, arg| result = result.send(method, arg) } }
    end
  end

end
