require 'calculator'

# describe Calculator do
#     it 'vou querer um testa para o metodo sun' do
#         calc = Calculator.new
#         result = calc.sum(5,7)
#         expect(result).to eq(12)
#     end

#     it 'subtraindo numero' do
#         calc = Calculator.new
#         result = calc.sum(-5,7)
#         expect(result).to eq(2)
#     end

describe Calculator do
    context "vou querer um testa para o metodo sun" do       
        it {
            calc = Calculator.new
            result = calc.sum(5,7)
            expect(result).to eq(12)
        }

        it {
            calc = Calculator.new
            result = calc.sum(-5,7)
            expect(result).to eq(2)
        }
    end

end
