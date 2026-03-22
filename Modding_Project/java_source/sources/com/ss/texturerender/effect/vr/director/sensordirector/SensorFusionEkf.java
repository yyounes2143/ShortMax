package com.ss.texturerender.effect.vr.director.sensordirector;

import android.hardware.SensorEvent;
import android.view.MotionEvent;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.math.Matrix3x3d;
import com.ss.texturerender.math.Quaternion;
import com.ss.texturerender.math.Vector3d;
/* loaded from: classes6.dex */
public class SensorFusionEkf {
    private static final double DEFAULT_GYRO_TIME = 0.009999999776482582d;
    private static final double EPSILON = 1.0E-15d;
    private static final double INITIAL_STATE_COVARIANCE = 25.0d;
    private static final double KMinAccelNoiseSigma = 0.75d;
    private static final String LOG_TAG = "TR_SensorFusionEkf";
    private static final double MAX_ACC_NORM_CHANGE = 0.15d;
    private static final double NANO_TO_SEC = 9.999999717180685E-10d;
    private static final double kMaxAccelNoiseSigma = 7.0d;
    private Matrix3x3d mAccMeasureCovariance;
    private Matrix3x3d mAccMeasureJacobian;
    private double mAverageAccNormChange;
    private GyroBiasEstimator mBiasEstimator;
    private int mDisplayRotation;
    private Quaternion mEkfToHeadTracker;
    private Vector3d mGyroBias;
    private Vector3d mGyroSample;
    private TimeFilter mGyroTimeFilter;
    private Vector3d mInnovation;
    private Matrix3x3d mInnovationCovariance;
    private boolean mIsAlignedGravity;
    private Matrix3x3d mKalmanGain;
    private Quaternion mLastRotationFromStart;
    private double mPreviousAccNorm;
    private Matrix3x3d mProcessCovariance;
    private Quaternion mRotationFromStart;
    private int mSensorStartPos;
    private Vector3d mStartDirection;
    private Matrix3x3d mStateCovariance;
    private int mTexType;
    private long mGyroTimeStamp = -1;
    private double MAX_GYRO_DELAY = 0.03999999910593033d;
    private boolean mGyroEnableSmoother = false;
    private double mGyroSmoothFactor = 1.0d;
    private Quaternion mPreviousRotation = null;
    private long mAccTimeStamp = -1;
    private Vector3d mAccSample = new Vector3d();
    private boolean mIsDisableZrotation = false;
    private Vector3d mTestZrot = null;
    private double mRadius = 800.0d;

    public SensorFusionEkf(int i10) {
        this.mTexType = i10;
        reset();
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new SensorFusionEkf");
    }

    private Vector3d computeInnovation(Quaternion quaternion) {
        Quaternion rotateInto = Quaternion.rotateInto(Quaternion.applyToVector(this.mStartDirection, quaternion), this.mAccSample);
        Vector3d axis = rotateInto.getAxis();
        axis.scale(rotateInto.getAngle());
        return axis;
    }

    private void computeMeasurementJacobian() {
        Quaternion fromAxisAndAngle;
        for (int i10 = 0; i10 < 3; i10++) {
            Vector3d vector3d = new Vector3d(0.0d, 0.0d, 0.0d);
            vector3d.setComponent(i10, 1.0E-7d);
            double length = vector3d.length();
            if (length < EPSILON) {
                fromAxisAndAngle = new Quaternion();
            } else {
                vector3d.normalize();
                fromAxisAndAngle = Quaternion.fromAxisAndAngle(vector3d, length);
            }
            Vector3d.sub(this.mInnovation, computeInnovation(fromAxisAndAngle.times(this.mRotationFromStart)), vector3d);
            vector3d.devide(1.0E-7d);
            this.mAccMeasureJacobian.set(0, i10, vector3d.f37047x);
            this.mAccMeasureJacobian.set(1, i10, vector3d.f37048y);
            this.mAccMeasureJacobian.set(2, i10, vector3d.f37049z);
        }
    }

    private Quaternion getRotationFromGyro(Vector3d vector3d, double d10) {
        double length = vector3d.length();
        if (length < EPSILON) {
            return new Quaternion();
        }
        return Quaternion.fromAxisAndAngle(vector3d.devide(length), (-d10) * length);
    }

    private Quaternion rotationFromVector(Vector3d vector3d) {
        double length = vector3d.length();
        if (length < EPSILON) {
            return new Quaternion();
        }
        vector3d.normalize();
        return Quaternion.fromAxisAndAngle(vector3d, length);
    }

    private Quaternion slerp(Quaternion quaternion, Quaternion quaternion2, double d10) {
        double x02 = quaternion.getX0();
        double x12 = quaternion.getX1();
        double x22 = quaternion.getX2();
        double x32 = quaternion.getX3();
        double x03 = quaternion2.getX0();
        double x13 = quaternion2.getX1();
        double x23 = quaternion2.getX2();
        double x33 = quaternion2.getX3();
        double d11 = (x32 * x33) + (x02 * x03) + (x12 * x13) + (x22 * x23);
        if (Math.abs(d11) >= 1.0d) {
            return new Quaternion(x02, x12, x22, x32);
        }
        double acos = Math.acos(d11);
        double sqrt = Math.sqrt(1.0d - (d11 * d11));
        if (Math.abs(sqrt) < 0.001d) {
            return new Quaternion((x02 * 0.5d) + (x03 * 0.5d), (x12 * 0.5d) + (x13 * 0.5d), (x22 * 0.5d) + (x23 * 0.5d), (x32 * 0.5d) + (x33 * 0.5d));
        }
        double sin = Math.sin((1.0d - d10) * acos) / sqrt;
        double sin2 = Math.sin(acos * d10) / sqrt;
        return new Quaternion((x02 * sin) + (x03 * sin2), (x12 * sin) + (x13 * sin2), (x22 * sin) + (x23 * sin2), (x32 * sin) + (x33 * sin2));
    }

    private void updateMeasurementCovariance() {
        double length = this.mAccSample.length();
        double abs = Math.abs(length - this.mPreviousAccNorm);
        this.mPreviousAccNorm = length;
        double d10 = (this.mAverageAccNormChange + abs) / 2.0d;
        this.mAverageAccNormChange = d10;
        double min = Math.min(7.0d, ((d10 / MAX_ACC_NORM_CHANGE) * 6.25d) + KMinAccelNoiseSigma);
        this.mAccMeasureCovariance.setIdentity();
        this.mAccMeasureCovariance.scale(min * min);
    }

    private void updateStateCovariance(Matrix3x3d matrix3x3d) {
        this.mStateCovariance = Matrix3x3d.mult(Matrix3x3d.mult(matrix3x3d, this.mStateCovariance), matrix3x3d.transpose());
    }

    public int getDisplayRotation() {
        return this.mDisplayRotation;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00e7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ss.texturerender.math.Quaternion getRotation() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.effect.vr.director.sensordirector.SensorFusionEkf.getRotation():com.ss.texturerender.math.Quaternion");
    }

    public boolean isAlignedGravity() {
        return this.mIsAlignedGravity;
    }

    public synchronized void processAcc(SensorEvent sensorEvent) {
        try {
            if (this.mAccTimeStamp > sensorEvent.timestamp) {
                return;
            }
            Vector3d vector3d = this.mAccSample;
            float[] fArr = sensorEvent.values;
            vector3d.set(fArr[0], fArr[1], fArr[2]);
            long j10 = sensorEvent.timestamp;
            this.mAccTimeStamp = j10;
            this.mBiasEstimator.processAccelerometer(this.mAccSample, j10);
            if (!this.mIsAlignedGravity) {
                this.mIsAlignedGravity = true;
                if (this.mSensorStartPos == 2) {
                    this.mStartDirection = new Vector3d(this.mAccSample);
                } else {
                    int i10 = this.mDisplayRotation;
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 == 3) {
                                    this.mStartDirection = new Vector3d(-1.0d, 0.0d, 0.0d);
                                }
                            } else {
                                this.mStartDirection = new Vector3d(0.0d, -1.0d, 0.0d);
                            }
                        } else {
                            this.mStartDirection = new Vector3d(1.0d, 0.0d, 0.0d);
                        }
                    } else {
                        this.mStartDirection = new Vector3d(0.0d, 1.0d, 0.0d);
                    }
                }
                this.mRotationFromStart = Quaternion.rotateInto(this.mStartDirection, this.mAccSample);
                int i11 = this.mTexType;
                TextureRenderLog.i(i11, LOG_TAG, "rotation start:" + this.mRotationFromStart + ";acc:" + this.mAccSample.toString());
                this.mPreviousAccNorm = this.mAccSample.length();
                return;
            }
            updateMeasurementCovariance();
            this.mInnovation = computeInnovation(this.mRotationFromStart);
            computeMeasurementJacobian();
            Matrix3x3d transpose = this.mAccMeasureJacobian.transpose();
            Matrix3x3d.mult(this.mAccMeasureJacobian, this.mStateCovariance, this.mInnovationCovariance);
            Matrix3x3d matrix3x3d = this.mInnovationCovariance;
            Matrix3x3d.mult(matrix3x3d, transpose, matrix3x3d);
            Matrix3x3d matrix3x3d2 = this.mInnovationCovariance;
            Matrix3x3d.add(matrix3x3d2, this.mAccMeasureCovariance, matrix3x3d2);
            Matrix3x3d matrix3x3d3 = new Matrix3x3d();
            this.mInnovationCovariance.invert(matrix3x3d3);
            Matrix3x3d.mult(this.mStateCovariance, transpose, this.mKalmanGain);
            Matrix3x3d matrix3x3d4 = this.mKalmanGain;
            Matrix3x3d.mult(matrix3x3d4, matrix3x3d3, matrix3x3d4);
            Vector3d vector3d2 = new Vector3d();
            Matrix3x3d.mult(this.mKalmanGain, this.mInnovation, vector3d2);
            Matrix3x3d matrix3x3d5 = new Matrix3x3d();
            Matrix3x3d.mult(this.mKalmanGain, this.mAccMeasureJacobian, matrix3x3d5);
            Matrix3x3d matrix3x3d6 = new Matrix3x3d();
            matrix3x3d6.setIdentity();
            matrix3x3d6.minusEquals(matrix3x3d5);
            Matrix3x3d matrix3x3d7 = this.mStateCovariance;
            Matrix3x3d.mult(matrix3x3d6, matrix3x3d7, matrix3x3d7);
            Quaternion rotationFromVector = rotationFromVector(vector3d2);
            this.mRotationFromStart = rotationFromVector.times(this.mRotationFromStart);
            updateStateCovariance(Matrix3x3d.rotationMatrix3x3(rotationFromVector));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void processGyro(SensorEvent sensorEvent) {
        long j10 = this.mGyroTimeStamp;
        long j11 = sensorEvent.timestamp;
        if (j10 > j11) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "lastTime > curTime, return");
            return;
        }
        if (j10 > 0) {
            double d10 = (j11 - j10) * NANO_TO_SEC;
            if (this.mGyroTimeFilter == null) {
                this.mGyroTimeFilter = new TimeFilter();
            }
            if (d10 > this.MAX_GYRO_DELAY) {
                if (this.mGyroTimeFilter.isFilterValid()) {
                    d10 = this.mGyroTimeFilter.getFilteredTime();
                } else {
                    d10 = DEFAULT_GYRO_TIME;
                }
            } else {
                this.mGyroTimeFilter.addSample(d10);
            }
            Vector3d vector3d = this.mGyroSample;
            float[] fArr = sensorEvent.values;
            vector3d.set(fArr[0], fArr[1], fArr[2]);
            this.mBiasEstimator.processGyroscope(this.mGyroSample, sensorEvent.timestamp);
            this.mBiasEstimator.getGyroBias(this.mGyroBias);
            if (this.mIsAlignedGravity) {
                Quaternion rotationFromGyro = getRotationFromGyro(this.mGyroSample.sub(this.mGyroBias), d10);
                this.mRotationFromStart = rotationFromGyro.times(this.mRotationFromStart);
                updateStateCovariance(Matrix3x3d.rotationMatrix3x3(rotationFromGyro));
                this.mStateCovariance.plusEquals(this.mProcessCovariance.mult(d10 * d10));
            }
        }
        this.mGyroTimeStamp = sensorEvent.timestamp;
    }

    public boolean processScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.mRotationFromStart = Quaternion.rotateInto(new Vector3d(0.0d, 0.0d, -this.mRadius), new Vector3d(-f10, f11, -this.mRadius)).times(this.mRotationFromStart);
        return true;
    }

    public void reset() {
        this.mGyroTimeFilter = new TimeFilter();
        this.mBiasEstimator = new GyroBiasEstimator();
        this.mRotationFromStart = new Quaternion();
        Matrix3x3d matrix3x3d = new Matrix3x3d();
        this.mStateCovariance = matrix3x3d;
        matrix3x3d.setIdentity();
        this.mStateCovariance.scale(INITIAL_STATE_COVARIANCE);
        this.mGyroSample = new Vector3d();
        this.mGyroBias = new Vector3d();
        Matrix3x3d matrix3x3d2 = new Matrix3x3d();
        this.mProcessCovariance = matrix3x3d2;
        matrix3x3d2.setIdentity();
        this.mIsAlignedGravity = false;
        this.mAccMeasureCovariance = new Matrix3x3d();
        this.mAccMeasureJacobian = new Matrix3x3d();
        this.mKalmanGain = new Matrix3x3d();
        this.mInnovationCovariance = new Matrix3x3d();
        this.mEkfToHeadTracker = null;
        this.mDisplayRotation = 0;
        this.mPreviousRotation = null;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "ekf reset");
    }

    public void setDisplayRotation(int i10) {
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "display rotation:" + i10);
        if (this.mDisplayRotation != i10) {
            this.mPreviousRotation = null;
        }
        this.mDisplayRotation = i10;
    }

    public void setGyroSmootherParam(boolean z10, double d10) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "enable smoother:" + z10 + ",factor:" + d10);
        this.mGyroEnableSmoother = z10;
        this.mGyroSmoothFactor = d10;
    }

    public void setIsDisableZrotation(boolean z10) {
        this.mIsDisableZrotation = z10;
    }

    public void setRotationFromStart(Quaternion quaternion) {
        this.mLastRotationFromStart = quaternion;
        this.mPreviousRotation = null;
    }

    public void setSensorStartPos(int i10) {
        this.mSensorStartPos = i10;
    }
}
