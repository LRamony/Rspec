describe 'Matchers de Comparação' do
    it "#equal - Testa se o objeto é o mesmo" do #Comparação
        x = "ruby"
        y = "ruby"
        expect(x).not_to equal(y) #Não é o mesmo objeto
        expect(x).to equal(x) #É o mesmo objeto
    end

    it "#equal = be - Testa se o objeto é o mesmo" do #be = seja
        x = "ruby"
        y = "ruby"
        expect(x).not_to be(y) #Não é o mesmo objeto
        expect(x).to be(x) #É o mesmo objeto
    end

    it "#eql = eq - Testa o valor" do #be = seja
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y) #Testa se a string é igual
end
end