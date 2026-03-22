package com.ss.ttm.player;

import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
@Keep
/* loaded from: classes6.dex */
public class SensorData {
    protected static final int Sensor_ACC_Data = 1;
    protected static final int Sensor_MAG_Data = 2;
    protected static final int Sensor_ROT_Data = 3;
    private long mHandle = 0;
    private SensorManager mSensorManager = null;
    private SensorEventListener mListener = null;
    private float[] magnet = new float[3];
    private float[] accel = new float[3];

    private static final native void _writeData(long j10, int i10, float f10, float f11, float f12);

    protected void finalize() {
        stop();
    }

    public Boolean initListeners() {
        return Boolean.FALSE;
    }

    @CalledByNative
    public void setHandle(long j10, TTPlayer tTPlayer) {
        this.mHandle = j10;
        tTPlayer.getContext();
    }

    @CalledByNative
    public int start() {
        if (initListeners().booleanValue()) {
            return 0;
        }
        return -1;
    }

    @CalledByNative
    public void stop() {
        Log.e("ttmn", "stop sensor");
        this.mHandle = 0L;
    }
}
