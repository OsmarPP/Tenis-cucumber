require './bin/marcadorTenis.rb'

describe MarcadorTenis do
     before(:each) do
        @marcador = MarcadorTenis.new()
     end

    it "should show 0-0" do
        expect(@marcador.getMarcador).to eq("0-0")
    end

    it "should show 15-0" do
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("15-0")
    end

    it "should show 30-0" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("30-0")
    end

    it "should show 40-0" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("40-0")
    end

    it "should show 'Juego para jugador 1'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Juego para jugador 1")
    end

    it "should show 0-15" do
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("0-15")
    end

    it "should show 0-30" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("0-30")
    end

    it "should show 0-40" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("0-40")
    end

    it "should show 'Juego para jugador 2'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Juego para jugador 2")
    end
    
    it "should show 15-Igual" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("15-Igual")
    end

    it "should show 30-15" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("30-15")
    end

    it "should show 30-Igual" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("30-Igual")
    end

    it "should show 40-30" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("40-30")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 1'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 1")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 2'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 2")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 1'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 1")
    end

    it "should show 'Juego para jugador 1'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Juego para jugador 1")
    end

    it "should show 15-Igual" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("15-Igual")
    end

    it "should show 15-30" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("15-30")
    end

    it "should show 30-Igual" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("30-Igual")
    end

    it "should show 30-40" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("30-40")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 2'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 2")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 1'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 1")
    end

    it "should show Deuce" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Deuce")
    end

    it "should show 'Ventaja de jugador 2'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Ventaja de jugador 2")
    end

    it "should show 'Juego para jugador 2'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Juego para jugador 2")
    end
    
    it "should show 40-15" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("40-15")
    end

    it "should show 'Juego para jugador 1'" do
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(1)
        expect(@marcador.getMarcador).to eq("Juego para jugador 1")
    end

    it "should show 15-40" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("15-40")
    end

    it "should show 'Juego para jugador 2'" do
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(1)
        @marcador.punto_para_jugador(2)
        @marcador.punto_para_jugador(2)
        expect(@marcador.getMarcador).to eq("Juego para jugador 2")
    end
end