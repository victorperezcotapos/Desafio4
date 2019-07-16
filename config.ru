# config.ru
require'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] =='/'
      [202, { 'Content-Type'=>'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] =='/index'
      [200, { 'Content-Type'=>'text/html' }, ['<h1> Estas en el Index! </h1>']]
    elsif env['REQUEST_PATH'] =='/otro'
      [200, { 'Content-Type'=>'text/html' }, ['<h1> Estas en otro landing! </h1>']]
    else
      [404, { 'Content-Type'=>'text/html' }, ['<h1> No se ha encontrado la pagina </h1>']]

    end
  end
end
run MiPrimeraWebApp.new
