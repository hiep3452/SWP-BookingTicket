/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Vehicle {
    private int vehicleId;
    private String type;
    private String image;
    private String license;
    private int capacity;
    private String status;
    
    public Vehicle(){}

    public Vehicle(int vehicleId, String type, String image, String license, int capacity, String status) {
        this.vehicleId = vehicleId;
        this.type = type;
        this.image = image;
        this.license = license;
        this.capacity = capacity;
        this.status = status;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Vehicle{" + "vehicleId=" + vehicleId + ", type=" + type + ", image=" + image + ", license=" + license + ", capacity=" + capacity + ", status=" + status + '}';
    }
    
    
}
