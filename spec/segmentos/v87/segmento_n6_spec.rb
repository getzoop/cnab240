require 'spec_helper'

include Cnab240::V87

describe Cnab240::V87::SegmentoN6 do

  it "deve instanciar segmento" do
    segmento = Cnab240::V87::SegmentoN6.new
    expect(segmento).to be_an_instance_of(Cnab240::V87::SegmentoN6)
  end

  it "deve conter campos" do
    segmento = Cnab240::V87::SegmentoN6.new

    expect(segmento).to respond_to(:receita)
    expect(segmento).to respond_to(:tipo_identificacao_contribuinte)
    expect(segmento).to respond_to(:identificacao_contribuinte)
    expect(segmento).to respond_to(:identificacao_tributo)

    expect(segmento).to respond_to(:exercicio)
    expect(segmento).to respond_to(:renavam)
    expect(segmento).to respond_to(:uf)
    expect(segmento).to respond_to(:municipio)
    expect(segmento).to respond_to(:placa)
    expect(segmento).to respond_to(:opcao_pagamento)

    expect(segmento).to respond_to(:cnab)
  end

  it "deve ter 120 caracteres" do
    segmento = Cnab240::V87::SegmentoN6.new
    expect(segmento.linha.length).to be(120)
  end

  it "deve manter coesao" do
    c = Cnab240::V87::SegmentoN6
    obj = c.new
    linha1 = obj.linha
    obj2 = c.read(linha1)
    linha2 = obj2.linha
    expect(linha1).to eq linha2
  end

end