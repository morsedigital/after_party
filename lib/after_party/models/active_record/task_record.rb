module AfterParty
  # Task Record is a persisted object recorded when a taks is run.
  class TaskRecord < ActiveRecord::Base
    attr_accessible :version if ::Rails::VERSION::MAJOR.to_i < 5

    def self.completed_task?(version)
      all.any? { |t| t.version == version }
    end
  end
end
