require 'calculator'

#Usamos o subject para não precisar ficar instanciando varias
#Primeira forma de fazer
describe Calculator do
    context "vou querer um testa para o metodo sun" do       
        it {
            #calc = Calculator.new
            result = subject.sum(5,7)
            expect(result).to eq(12)
        }

        it {
            #calc = Calculator.new
            result = subject.sum(-5,7)
            expect(result).to eq(2)
        }
    end
end

#Segunda forma de fazer
describe 'Classe Calculadora 3' do
    subject(:calc) { Calculator.new() } #classe reservada

    context '#sum' do       
        it {
            result = calc.sum(5,7)
            expect(result).to eq(12)
        }

        it {
            result = calc.sum(-5,7)
            expect(result).to eq(2)
        }
    end
end

