package com.ss.texturerender.effect.vr.director.sensordirector;

import com.ss.texturerender.math.Vector3d;
/* loaded from: classes6.dex */
public class LowPassFilter {
    private static final double MAX_TIME_STEP = 1.0d;
    private static final double MIN_TIME_STEP = 0.001d;
    private static final double NANOS_TO_SECONDS = 1.0E-9d;
    private long mLastTimestampNs;
    private int mNumSamples;
    private final double mTimeConstantSecs;
    private final Vector3d filteredData = new Vector3d();
    private final Vector3d temp = new Vector3d();
    private boolean mIsInit = false;

    public LowPassFilter(double d10) {
        this.mTimeConstantSecs = 1.0d / (d10 * 6.283185307179586d);
    }

    public void addSample(Vector3d vector3d, long j10) {
        addWeightedSample(vector3d, j10, 1.0d);
    }

    public void addWeightedSample(Vector3d vector3d, long j10, double d10) {
        long j11;
        this.mNumSamples++;
        if (!this.mIsInit) {
            this.filteredData.set(vector3d);
            this.mLastTimestampNs = j10;
            this.mIsInit = true;
            return;
        }
        if (j10 < this.mLastTimestampNs) {
            this.mLastTimestampNs = j10;
            return;
        }
        double d11 = d10 * (j10 - j11) * NANOS_TO_SECONDS;
        if (d11 >= MIN_TIME_STEP && d11 <= 1.0d) {
            double d12 = d11 / (this.mTimeConstantSecs + d11);
            this.filteredData.scale(1.0d - d12);
            this.temp.set(vector3d);
            this.temp.scale(d12);
            Vector3d vector3d2 = this.temp;
            Vector3d vector3d3 = this.filteredData;
            Vector3d.add(vector3d2, vector3d3, vector3d3);
            this.mLastTimestampNs = j10;
            return;
        }
        this.mLastTimestampNs = j10;
    }

    public Vector3d getFilteredData() {
        return this.filteredData;
    }

    public int getNumSamples() {
        return this.mNumSamples;
    }

    public long getRecentTime() {
        return this.mLastTimestampNs;
    }

    public boolean isIsInit() {
        return this.mIsInit;
    }
}
