package com.ss.texturerender.effect.vr.director.sensordirector;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.effect.vr.director.IDirector;
import com.ss.texturerender.effect.vr.director.IDirectorEventListener;
import com.ss.texturerender.math.Matrix3x3d;
import com.ss.texturerender.math.Quaternion;
/* loaded from: classes6.dex */
public class SensorDirector extends GestureDetector.SimpleOnGestureListener implements IDirector, SensorEventListener {
    private static final String LOG_TAG = "TR_SensorDirector";
    private IDirectorEventListener mDirectorEventListener;
    private Display mDisplay;
    private SensorFusionEkf mFusionEkf;
    private SensorHelper mSensorEventProvider;
    private boolean mSensorResetPosKeepFix;
    private int mSensorStartPos;
    private int mTexType;
    private volatile boolean tracking;
    private int mDirectMode = 1;
    private Quaternion mLastRotation = new Quaternion();
    private boolean resetSensorAfterDisplayRotationChange = false;

    public SensorDirector(Context context, Display display, int i10, int i11, int i12, int i13, double d10, IDirectorEventListener iDirectorEventListener) {
        boolean z10;
        this.mDirectorEventListener = null;
        this.mTexType = i12;
        this.mSensorEventProvider = new SensorHelper((SensorManager) context.getSystemService("sensor"));
        this.mDisplay = display;
        SensorFusionEkf sensorFusionEkf = new SensorFusionEkf(this.mTexType);
        this.mFusionEkf = sensorFusionEkf;
        if (i13 == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        sensorFusionEkf.setGyroSmootherParam(z10, d10);
        this.mFusionEkf.setSensorStartPos(i10);
        this.mFusionEkf.setDisplayRotation(this.mDisplay.getRotation());
        this.mSensorStartPos = i10;
        this.mSensorResetPosKeepFix = i11 == 1;
        this.mDirectorEventListener = iDirectorEventListener;
    }

    private void testRotationChange(boolean z10) {
        int rotation = this.mDisplay.getRotation();
        if (rotation != this.mFusionEkf.getDisplayRotation()) {
            if (z10) {
                this.mFusionEkf.reset();
            }
            this.mFusionEkf.setDisplayRotation(rotation);
            this.mFusionEkf.setSensorStartPos(this.mSensorStartPos);
            IDirectorEventListener iDirectorEventListener = this.mDirectorEventListener;
            if (iDirectorEventListener != null) {
                iDirectorEventListener.onDisplayRotationChanged(rotation, z10);
            }
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void getView(float[] fArr, int i10) {
        testRotationChange(this.resetSensorAfterDisplayRotationChange);
        if (this.mFusionEkf.isAlignedGravity()) {
            this.mLastRotation = this.mFusionEkf.getRotation();
        }
        Matrix3x3d.matrixToColumnArray(Matrix3x3d.rotationMatrix3x3(this.mLastRotation), fArr);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        if (this.mDirectMode == 1) {
            return false;
        }
        return this.mFusionEkf.processScroll(motionEvent, motionEvent2, f10, f11);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 1) {
            this.mFusionEkf.processAcc(sensorEvent);
        } else if (sensorEvent.sensor.getType() == 4 || sensorEvent.sensor.getType() == 16) {
            this.mFusionEkf.processGyro(sensorEvent);
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void reset() {
        this.mLastRotation = new Quaternion();
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void setParam(Bundle bundle) {
        boolean z10;
        if (bundle != null) {
            SensorFusionEkf sensorFusionEkf = this.mFusionEkf;
            if (sensorFusionEkf != null) {
                if (bundle.getInt(TextureRenderKeys.KEY_IS_INT_DISABLE_AXIS) == 3) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                sensorFusionEkf.setIsDisableZrotation(z10);
            }
            if (this.mSensorEventProvider != null && bundle.containsKey(TextureRenderKeys.KEY_IS_CERT)) {
                this.mSensorEventProvider.setCert(bundle.getSerializable(TextureRenderKeys.KEY_IS_CERT));
            }
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void start() {
        if (!this.tracking) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "start");
            this.mSensorEventProvider.registerListener(this);
            this.mSensorEventProvider.start();
            SensorFusionEkf sensorFusionEkf = this.mFusionEkf;
            if (sensorFusionEkf != null) {
                if (!sensorFusionEkf.isAlignedGravity()) {
                    this.mFusionEkf.reset();
                } else {
                    this.mFusionEkf.reset();
                    if (!this.mSensorResetPosKeepFix || this.mSensorStartPos != 1) {
                        this.mFusionEkf.setSensorStartPos(2);
                        this.mFusionEkf.setRotationFromStart(this.mLastRotation);
                    }
                }
                testRotationChange(true);
            }
            this.tracking = true;
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void stop() {
        if (this.tracking) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "stop");
            this.mSensorEventProvider.unregisterListener(this);
            this.mSensorEventProvider.stop();
            this.tracking = false;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
