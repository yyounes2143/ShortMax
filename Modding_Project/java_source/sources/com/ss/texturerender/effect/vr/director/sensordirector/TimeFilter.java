package com.ss.texturerender.effect.vr.director.sensordirector;
/* loaded from: classes6.dex */
public class TimeFilter {
    private static final double FILTER_COEFF = 0.949999988079071d;
    private static final int MIN_TIME_SAMPLE = 10;
    private double mFilteredTime;
    private int mSampleCount;
    private boolean mIsInit = false;
    private boolean isFilterValid = false;

    public void addSample(double d10) {
        if (!this.mIsInit) {
            this.mFilteredTime = d10;
            this.mIsInit = true;
            this.mSampleCount = 1;
            return;
        }
        this.mFilteredTime = (this.mFilteredTime * FILTER_COEFF) + (d10 * 0.050000011920928955d);
        int i10 = this.mSampleCount + 1;
        this.mSampleCount = i10;
        if (i10 > 10) {
            this.isFilterValid = true;
        }
    }

    public double getFilteredTime() {
        return this.mFilteredTime;
    }

    public boolean isFilterValid() {
        return this.isFilterValid;
    }
}
