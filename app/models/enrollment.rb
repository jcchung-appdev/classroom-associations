# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ApplicationRecord
    validates :student_id, uniqueness: {
        scope: :course_id,
        message: "can only enroll in each course once"
    }
end
