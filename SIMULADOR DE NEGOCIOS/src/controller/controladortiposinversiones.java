package controller;

import include.tiposinversiones;
import modelos.modelotiposinversiones;
import java.util.ArrayList;


public class controladortiposinversiones {
    public boolean agregartiposinversiones(tiposinversiones tiposinversiones){
        modelotiposinversiones tiposinversiones1 = new modelotiposinversiones();
        return tiposinversiones1.creartiposinversiones(tiposinversiones);
    }

    public ArrayList<tiposinversiones> obtenertiposinversioness(){
        modelotiposinversiones modelotiposinversiones = new modelotiposinversiones();
        return modelotiposinversiones.obtenertiposinversioness();
    }

    public ArrayList<tiposinversiones> obtenertiposinversiones(int idtiposInversiones){
        modelotiposinversiones tiposinversiones = new modelotiposinversiones();
        return tiposinversiones.obtenertiposinversiones(idtiposInversiones);
    }
    public boolean actualizartiposinversiones(tiposinversiones tiposinversiones){
        modelotiposinversiones tiposinversiones1= new modelotiposinversiones();
        return tiposinversiones1.actualizartiposinversiones(tiposinversiones);
    }

    public boolean eliminartiposinversiones(int idtiposInversiones){
        modelotiposinversiones tiposinversiones1 = new modelotiposinversiones();
        return tiposinversiones1.borrartiposinversiones(idtiposInversiones);
    }


    public static void  main(String[] args) {
        controladortiposinversiones cc = new controladortiposinversiones();
        //agregar una nueva tiposinversiones
       // System.out.print(cc.agregartiposinversiones(new tiposinversiones(2, "fib")));

        //YA JALA
        //listar todos los elementos de la tabla
       // ArrayList<tiposinversiones> tiposinversioness = new ArrayList<>();
       // tiposinversioness = cc.obtenertiposinversioness();
        //for (int a = 0; a < tiposinversioness.size(); a++) {
          //  System.out.print("idtiposInversiones : " + tiposinversioness.get(a).getIdtiposInversiones());
            //System.out.print("concepto : " + tiposinversioness.get(a).getConcepto());
            //System.out.println();
        //}


        //YA JALA
        // listar un elemento por su llave primaria

        ArrayList<tiposinversiones> tiposinversiones = new ArrayList<>();
        tiposinversiones = cc.obtenertiposinversiones(4);

        for (int b = 0; b < tiposinversiones.size(); b++) {
            System.out.print("idtiposInversiones: " + tiposinversiones.get(b).getIdtiposInversiones());
            System.out.print("concepto: " + tiposinversiones.get(b).getConcepto());
            System.out.println();


            //modificar un elemento
            System.out.print(cc.actualizartiposinversiones(new tiposinversiones(4, "beto")));


            //YA JALA
            //eliminar un elemento
            System.out.print(cc.eliminartiposinversiones(2));
        }


    }
}





