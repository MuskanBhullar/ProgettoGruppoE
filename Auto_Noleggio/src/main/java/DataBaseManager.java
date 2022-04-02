
import java.sql.*;

/*
    TUTORIAL MYSQL:
    - Scaricare dal sito il driver connector
    - Copiare il jar dentro alla cartella /lib sotto WEB-INF
    - Aggiungere la dipendenza nella cartella Dependencies:
        - Group ID: mysql
        - Artifact ID: mysql-connector-java
        - Version: 8.0.28 (o quella scaricata)
        - Scope: compiler
    - Tasto destro sulla dipendenza appena raggiunta e fare 
    "Manually install artifact"
    - Scegliere il file mysql-connector-java.jar
    - Fare Clean & Build Project
*/

public class DataBaseManager {
    private final String db_url="jdbc:mysql//localhost:";
    private final int db_port=3306;
    private final String db_name="/noleggio_auto";
    private final String user="root";
    private final String pwd="";
    private static DataBaseManager dbManager = null;
    
    private DataBaseManager(){ }
    
    public static DataBaseManager generaIstanza(){
        if(dbManager==null){
            dbManager=new DataBaseManager();
        }
        return dbManager;
    }
    public Connection connetti() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        
        return DriverManager.getConnection(db_url + db_port + db_name, user, pwd);
    }
}
