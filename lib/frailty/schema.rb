module Frailty
  def self.setup_schema
    Sequel::Model.db.instance_eval do
      create_table! :project do
        primary_key :id
        varchar     :name
        varchar     :milestone
        varchar     :description
      end
      
      create_table! :milestone do
        primary_key :id
        int         :project_id
        varchar     :name
        varchar     :feature
        datetime    :created_at
        datetime    :completed_at
        datetime    :due_at
      end
      
      create_table! :feature do
        primary_key :id
        int         :project_id
        int         :milestone_id
        varchar     :name
        varchar     :body # 140 chars, baby
        #varchar     :state # pass fail pending from form
        #varchar     :comment #if fail comment required if pass or pending optional
      end
    end
  end
end