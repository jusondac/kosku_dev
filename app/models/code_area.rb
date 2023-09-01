class CodeArea < ApplicationRecord
    belongs_to :province, class_name: 'CodeArea', optional: true
    has_many :regencies, class_name: 'CodeArea', foreign_key: :province_id
end
