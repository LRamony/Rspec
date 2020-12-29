require 'calculator'
#rspec ./spec/calculator/calculatorSubject_spec.rb:23 < para executar o teste apenas de uma linhda determinada

#Usamos o subject para não precisar ficar instanciando varias
#Primeira forma de fazer "SubjectImplicito"
describe Calculator, "Sobre calculadora" do
    context "#sum" do       
        it {
            #calc = Calculator.new
            result = subject.sum(5,7)
            expect(result).to eq(12)
        }

        it {
            #calc = Calculator.new
            result = subject.sum(-5,7)
            expect(result).to eq(2) #Que seja
            expect(result).not_to eq(1) #Que não seja
        }
    end
end

#O describe mais interno vence
describe Calculator, "ClassePai" do
    describe Calculator, "ClassFilha" do
        context "#sum" do       
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
end

#Segunda forma de fazer "SubjectExplicito"
describe 'Classe Calculadora 3' do
    subject(:calc) { Calculator.new() } #classe reservada. Caso sua classe receba parametros lembre de passar

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

