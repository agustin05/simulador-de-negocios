package modelos;

import include.tipogastooperativo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class modelotipogastooperativo extends conexion {

    public boolean creartipogastooperativo(tipogastooperativo tipogastooperativo) {
        PreparedStatement pst = null;
        boolean flag = false;

        try {
            String consulta = "INSERT INTO tipogastooperativo (idtipoGasto,concepto) VALUES(?, ?)";

            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1, tipogastooperativo.getIdtipoGasto());
            pst.setString(2, tipogastooperativo.getConcepto());

            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            System.out.print(ex.getMessage());
        } finally {
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }

    public ArrayList<tipogastooperativo> obtenertipogastooperativos() {
        ArrayList<tipogastooperativo> tipogastooperativos = new ArrayList<tipogastooperativo>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idtipoGasto, concepto FROM tipogastooperativo";
            pst = getConnection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                tipogastooperativos.add(new tipogastooperativo(rs.getInt("idtipoGasto"),
                        rs.getString("concepto")));
            }
        } catch (Exception e) {
        } finally {
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
            }

        }
        return tipogastooperativos;
    }

    public ArrayList<tipogastooperativo> obtenertipogastooperativo(int idtipoGasto) {
        ArrayList<tipogastooperativo> tipogastooperativo = new ArrayList<tipogastooperativo>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idtipoGasto, concepto FROM tipogastooperativo WHERE idtipoGasto =?";
            pst = getConnection().prepareCall(consulta);
            pst.setInt(1, idtipoGasto);
            rs = pst.executeQuery();
            while (rs.next()) {
                tipogastooperativo.add(new tipogastooperativo(rs.getInt("idtipoGasto"),
                        rs.getString("concepto")));
            }
        } catch (Exception e) {
            System.out.print(e.getMessage());
        } finally {
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
        }
        return tipogastooperativo;
    }

    public boolean actualizartipogastooperativo(tipogastooperativo tipogastooperativo) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "UPDATE tipogastooperativo SET idtipoGasto = ?, concepto =? WHERE idtipoGasto =? ";
            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1, tipogastooperativo.getIdtipoGasto());
            pst.setString(2, tipogastooperativo.getConcepto());
            pst.setInt(3, tipogastooperativo.getIdtipoGasto());

            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null) pst.close();
            } catch (Exception a) {
                System.out.println(a.getMessage());
            }
        }
        return flag;
    }

    public boolean borrartipogastooperativo(int idtipoGasto){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta  = "DELETE FROM tipogastooperativo WHERE idtipoGasto = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1,idtipoGasto);

            if (pst.executeUpdate() == 1){
                flag = true;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }finally {
            try {
                if (getConnection() !=null) getConnection().close();
                if (pst !=null) pst.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }
}


