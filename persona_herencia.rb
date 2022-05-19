# ------Inicio Codigo Base------

# class Person
#     def initialize(first, last, age, type)
#         @first_name = first
#         @last_name = last
#         @age = age
#         @type = type
#     end

#     def birthday
#         @age += 1
#     end

#     def talk
#         if @type == "Student"
#             puts "Aquí es la clase de programación con Ruby?"
#         elsif @type == "Teacher"
#             puts "Bienvenidos a la clase de programación con Ruby!"
#         elsif @type == "Parent"
#             puts "Aquí es la reunión de apoderados?"
#         end
#     end

#     def introduce
#         if @type == "Student"
#             puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Teacher"
#             puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Parent"
#             puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
#         end
#     end
# end
# ------ Fin Codigo Base------

# Inicio Refactorización

# Se define clase Person

# Inicio class Person
class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end
end
# Fin class Person

# Se define clase Teacher
# Inicio class Teacher
class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end
# Fin class Teacher


# Se define class Parent
# Inicio class Parent
class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end
# Fin class Parent

# Se define class Student
# Inicio class Student
class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end
# Fin class Student

profesor = Teacher.new('Juanito', 'Perez', '30', 'Teacher')
profesor.introduce
profesor.talk

alumno = Student.new('Pedrito', 'Gonzales', '15', 'Student')
alumno.introduce
alumno.talk

padre = Parent.new('Jose', 'gonzales', '50', 'Parent')
padre.introduce
padre.talk