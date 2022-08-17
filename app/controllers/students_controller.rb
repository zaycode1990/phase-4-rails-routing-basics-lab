class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grade_order = Student.order(grade: :desc)
        render json: grade_order
    end

    def highest_grade
        best_student = Student.order(grade: :desc)
        render json: best_student.first
    end

end
