package com.ss.texturerender.effect.vr.director.sensordirector;

import com.ss.texturerender.math.Vector3d;
/* loaded from: classes6.dex */
public class GyroBiasEstimator {
    private static final float ACCEL_DIFF_STATIC_THRESHOLD = 0.5f;
    private static final float ACCEL_LOWPASS_FREQ = 1.0f;
    private static final float GYRO_BIAS_LOWPASS_FREQ = 0.15f;
    private static final float GYRO_DIFF_STATIC_THRESHOLD = 0.008f;
    private static final float GYRO_FOR_BIAS_THRESHOLD = 0.3f;
    private static final float GYRO_LOWPASS_FREQ = 10.0f;
    private static final int IS_STATIC_NUM_FRAMES_THRESHOLD = 10;
    private static final int NUM_GYRO_BIAS_SAMPLES_INITIAL_SMOOTHING = 100;
    private static final int NUM_GYRO_BIAS_SAMPLES_THRESHOLD = 30;
    private LowPassFilter accelLowPass;
    private LowPassFilter gyroBiasLowPass;
    private LowPassFilter gyroLowPass;
    private IsStaticCounter isAccelStatic;
    private IsStaticCounter isGyroStatic;
    private Vector3d smoothedAccelDiff;
    private Vector3d smoothedGyroDiff;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class IsStaticCounter {
        private int consecutiveIsStatic;
        private final int minStaticFrames;

        IsStaticCounter(int i10) {
            this.minStaticFrames = i10;
        }

        void appendFrame(boolean z10) {
            if (!z10) {
                this.consecutiveIsStatic = 0;
            } else {
                this.consecutiveIsStatic++;
            }
        }

        boolean isRecentlyStatic() {
            if (this.consecutiveIsStatic >= this.minStaticFrames) {
                return true;
            }
            return false;
        }
    }

    public GyroBiasEstimator() {
        reset();
    }

    private void updateGyroBias(Vector3d vector3d, long j10) {
        double length = vector3d.length();
        if (length < 0.30000001192092896d) {
            double max = Math.max(0.0d, 1.0d - (length / 0.30000001192092896d));
            this.gyroBiasLowPass.addWeightedSample(this.gyroLowPass.getFilteredData(), j10, max * max);
        }
    }

    public void getGyroBias(Vector3d vector3d) {
        if (this.gyroBiasLowPass.getNumSamples() < 30) {
            vector3d.setZero();
            return;
        }
        vector3d.set(this.gyroBiasLowPass.getFilteredData());
        vector3d.scale(Math.min(1.0d, (this.gyroBiasLowPass.getNumSamples() - 30) / 100.0d));
    }

    public void processAccelerometer(Vector3d vector3d, long j10) {
        boolean z10;
        this.accelLowPass.addSample(vector3d, j10);
        Vector3d.sub(vector3d, this.accelLowPass.getFilteredData(), this.smoothedAccelDiff);
        IsStaticCounter isStaticCounter = this.isAccelStatic;
        if (this.smoothedAccelDiff.length() < 0.5d) {
            z10 = true;
        } else {
            z10 = false;
        }
        isStaticCounter.appendFrame(z10);
    }

    public void processGyroscope(Vector3d vector3d, long j10) {
        boolean z10;
        this.gyroLowPass.addSample(vector3d, j10);
        Vector3d.sub(vector3d, this.gyroLowPass.getFilteredData(), this.smoothedGyroDiff);
        IsStaticCounter isStaticCounter = this.isGyroStatic;
        if (this.smoothedGyroDiff.length() < 0.00800000037997961d) {
            z10 = true;
        } else {
            z10 = false;
        }
        isStaticCounter.appendFrame(z10);
        if (this.isGyroStatic.isRecentlyStatic() && this.isAccelStatic.isRecentlyStatic()) {
            updateGyroBias(vector3d, j10);
        }
    }

    public void reset() {
        this.smoothedGyroDiff = new Vector3d();
        this.smoothedAccelDiff = new Vector3d();
        this.accelLowPass = new LowPassFilter(1.0d);
        this.gyroLowPass = new LowPassFilter(10.0d);
        this.gyroBiasLowPass = new LowPassFilter(0.15000000596046448d);
        this.isAccelStatic = new IsStaticCounter(10);
        this.isGyroStatic = new IsStaticCounter(10);
    }
}
