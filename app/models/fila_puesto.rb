class FilaPuesto < ApplicationRecord

  belongs_to :fila, counter_cache: true
  belongs_to :puesto, optional: true

  validates :estado, inclusion: { in: %w(Espera Proceso Atendido Nulo), message: "%{value} es un estado inválido" }

  after_initialize do |fp|
    if fp.fecha.nil? then
    	fp.fecha = Date.today
    	fp.hora = Time.now
    	fp.estado = "Espera"
    	fp.hora_estado = Time.now
	   end
  end

  after_validation :numera, on: :create
 
  private
    def numera
      f = self.fila
      if f.fe_ult_num == Date.today
        f.ult_num += 1
      else
        f.ult_num = 1
      end
      f.fe_ult_num = Date.today
      self.numero = f.ult_num
      f.save
    end
end
