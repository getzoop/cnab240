require 'spec_helper'

include Cnab240::V86

describe Cnab240::V86::SegmentoO do

  it "deve instanciar segmento" do
    segmento = Cnab240::V86::SegmentoO.new
    expect(segmento).to be_an_instance_of(Cnab240::V86::SegmentoO)
  end

  it "deve conter campos" do
    segmento = Cnab240::V86::SegmentoO.new

    expect(segmento).to respond_to(:controle_banco)
    expect(segmento).to respond_to(:controle_lote)
    expect(segmento).to respond_to(:controle_registro)

    expect(segmento).to respond_to(:servico_numero_registro)
    expect(segmento).to respond_to(:servico_codigo_segmento)
    expect(segmento).to respond_to(:servico_tipo_movimento)
    expect(segmento).to respond_to(:servico_codigo_movimento)

    expect(segmento).to respond_to(:codigo_barras)
    expect(segmento).to respond_to(:nome_concessionaria)
    expect(segmento).to respond_to(:data_vencimento)
    expect(segmento).to respond_to(:data_pagamento)
    expect(segmento).to respond_to(:valor_pagamento)
    expect(segmento).to respond_to(:seu_numero)
    expect(segmento).to respond_to(:nosso_numero)

    expect(segmento).to respond_to(:cnab_g004_1)
    expect(segmento).to respond_to(:ocorrencias)
  end

  it "deve ter 240 caracteres" do
    segmento = Cnab240::V86::SegmentoO.new
    expect(segmento.linha.length).to be(240)
  end

  it "deve manter coesao" do
    c = Cnab240::V86::SegmentoO
    obj = c.new
    linha1 = obj.linha
    obj2 = c.read(linha1)
    linha2 = obj2.linha
    expect(linha1).to eq linha2
  end

end