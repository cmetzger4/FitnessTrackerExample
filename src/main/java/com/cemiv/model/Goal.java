package com.cemiv.model;

import org.hibernate.validator.constraints.Range;

/**
 * Created on: 3/21/2016
 * Author    :
 */
public class Goal {

    @Range(min = 1, max = 120)
    private int minutes;

    public int getMinutes() {
        return minutes;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }



}
