class StudentsController < ApplicationController


    def index
        students = Student.all
        render json: students
    end

    def show
        student = Student.find_by(id: params[:id])
        render json: student
    end

    def create
        student = Student.create(student_params)
        render json: student, status: :created
    end

    def destroy
        student = Student.find_by(id: params[:id])
        if student
            student.destroy
            head :no_content
        else
            render json: { error: "Student not found." }
        end
    end

    def update
        student = Student.find_by(id: params[:id])
        if student
            student.update(student_params)
            render json: student
        else
            render json: { error: "Student not found." }, status: :not_found
        end
    end

    private

    def student_params
        params.permit(:first_name, :last_name, :address, :phone)
    end
end
