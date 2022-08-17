class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grade_order= Student.order(grade: :desc)
        render json: grade_order
    end

end
