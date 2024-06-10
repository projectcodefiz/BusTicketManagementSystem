package busticketmanagement;

import java.sql.Date;

/**
 *
 * @author Created by 22343017_Abdul Hafiz
 */

public class busData {
    
    private Integer busId;
    private String location;
    private String status;
    private Double price;
    private Date date;
    
    public busData(Integer busId, String location, String status, Double price, Date date){
        this.busId = busId;
        this.location = location;
        this.status = status;
        this.price = price;
        this.date = date;
    }
    
    public Integer getBusId(){
        return busId;
    }
    public String getLocation(){
        return location;
    }
    public String getStatus(){
        return status;
    }
    public Double getPrice(){
        return price;
    }
    public Date getDate(){
        return date;
    }
}
