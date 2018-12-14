package controller;

import include.tipogastooperativo;
import modelos.modelotipogastooperativo;
import java.util.ArrayList;

public class controladortipogastooperativo {

    public boolean agregartipogastooperativo(tipogastooperativo tipogastooperativo){
        modelotipogastooperativo tipogastooperativo1 = new modelotipogastooperativo();
        return tipogastooperativo1.creartipogastooperativo(tipogastooperativo);
    }

    public ArrayList<tipogastooperativo> obtenertipogastooperativo(){
        modelotipogastooperativo tipogastooperativo = new modelotipogastooperativo();
        return tipogastooperativo.obtenertipogastooperativos();
    }

    public ArrayList<tipogastooperativo> obtenertipogastooperativo(int idtipoGasto){
        modelotipogastooperativo tipogastooperativo = new modelotipogastooperativo();
        return tipogastooperativo.obtenertipogastooperativo(idtipoGasto);
    }
    public boolean actualizartipogastooperativo(tipogastooperativo tipogastooperativo){
        modelotipogastooperativo tipogastooperativo1= new modelotipogastooperativo();
        return tipogastooperativo1.actualizartipogastooperativo(tipogastooperativo);
    }

    public boolean eliminartipogastooperaivo(int idtipoGasto){
        modelotipogastooperativo tipogastooperativo1 = new modelotipogastooperativo();
        return tipogastooperativo1.borrartipogastooperativo(idtipoGasto);
    }


    public static void  main(String[] args) {
        controladortipogastooperativo cc = new controladortipogastooperativo();
        //agregar una nuevo tipo gasto operativo
        //System.out.print(cc.agregartipogastooperativo(new tipogastooperativo(1, "cobros")));

        //YA JALA
        //listar todos los elementos de la tabla
      //  ArrayList<tipogastooperativo> tipogastooperativos = new ArrayList<tipogastooperativo>();
        //tipogastooperativos = cc.obtenertipogastooperativo();
       // for (int a = 0; a < tipogastooperativos.size(); a++) {
         //   System.out.print("idtipoGasto : " + tipogastooperativos.get(a).getIdtipoGasto());
           // System.out.print("concepto : " + tipogastooperativos.get(a).getConcepto());
            //System.out.println();

        //}

        //YA JALA
        //listar un elemento por su llave primaria

       // ArrayList<tipogastooperativo> tipogastooperativo = new ArrayList<>();
        //tipogastooperativo = cc.obtenertipogastooperativo(1);

        //for (int b = 0; b < tipogastooperativo.size(); b++) {
          //  System.out.print("idtipoGasto: " + tipogastooperativo.get(b).getIdtipoGasto());
           // System.out.print("concepto: " + tipogastooperativo.get(b).getConcepto());
           // System.out.println();
        //}

        //modificar un elemento
        //System.out.print(cc.actualizartipogastooperativo(new tipogastooperativo(2,"nada")));


        //YA JALA
        //eliminar un elemento
        //System.out.print(cc.eliminartipogastooperaivo(1));
    }
}



