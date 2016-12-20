/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pinton.matteo.com;

import java.util.ArrayList;

public class Lista
{

    private ArrayList<String> lista;

    public Lista()
    {
        lista = new ArrayList<>();
    }
    
    public void addElemento(String s)
    {
        lista.add(s);
    }

    public ArrayList<String> getLista()
    {
        return lista;
    }

    public void setLista(ArrayList<String> l)
    {
        this.lista = l;
    }
    
    public boolean elimina(int posVoce) 
    {
      if (posVoce >= 0 && posVoce < lista.size()) 
      {
          lista.remove(posVoce);
          return true;
      }
      return false;
    }
  
}

