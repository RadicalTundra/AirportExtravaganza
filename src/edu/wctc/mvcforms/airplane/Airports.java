package edu.wctc.mvcforms.airplane;

import java.util.LinkedHashMap;
import java.util.Map;

public class Airports {
    private Map<String, String> airportOptions;

    public Airports(){
        airportOptions = new LinkedHashMap<>();
        airportOptions.put("Los Angeles","Los Angeles International");
        airportOptions.put("O'Hare","O'Hare International");
        airportOptions.put("Dallas/Fort Worth","Dallas/Fort Worth International");
        airportOptions.put("John F. Kennedy","John F. Kennedy International");
    }

    public Map<String, String> getAirportOptions() {
        return airportOptions;
    }
}
