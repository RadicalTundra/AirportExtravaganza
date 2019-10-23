package edu.wctc.mvcforms.airplane;

import java.util.ArrayList;

public enum AirplaneSpecialRequirements {
    REWARDS("Rewards Member"),
    WHEELCHAIR("Wheelchair"),
    UNACCOMPANIED("Unaccompanied Minor");

    private String type;

    AirplaneSpecialRequirements(String type)
    {
        this.type = type;
    }

    public String getType(){
        return type;
    }
}
