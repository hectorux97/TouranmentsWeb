
package beans;

import java.util.ArrayList;


public class GlobalInfo {
    
    private ArrayList<Juego> juegos;
    private int myPanel;
    
    public GlobalInfo(){
        
    }
    
    public int getMyPanel() {
        return myPanel;
    }

    public void setMyPanel(int myPanel) {
        this.myPanel = myPanel;
    }

    public ArrayList<Juego> getJuegos() {
        return juegos;
    }

    public void setJuegos(ArrayList<Juego> juegos) {
        this.juegos = juegos;
    }
    
}
