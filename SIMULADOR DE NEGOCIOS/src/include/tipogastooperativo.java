package include;

public class tipogastooperativo {
    private int idtipoGasto;
    private String concepto;

    public tipogastooperativo(int idtipoGasto, String concepto) {
        this.idtipoGasto = idtipoGasto;
        this.concepto = concepto;
    }

    public int getIdtipoGasto() {
        return idtipoGasto;
    }

    public void setIdtipoGasto(int idtipoGasto) {
        this.idtipoGasto = idtipoGasto;
    }

    public String getConcepto() {
        return concepto;
    }

    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }
}
