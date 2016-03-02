module SubjectsHelper
  def createSubjects
    asignaturas = %w[ "Ingles" "Matematicas" "Lenguaje" "Ciencias naturales" "Humanidades" "Ciencias sociales" "Artes" ]
    for i in 0...asignaturas.length
      nueva_asignatura = Subject.new(:name => asignaturas[i], :code => String(100 + i))
      nueva_asignatura.save
    end
  end
end
