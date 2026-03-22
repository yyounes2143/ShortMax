package com.bytedance.sdk.openadsdk.QSm;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.os.Vibrator;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class kkU {
    public static WeakReference<oJ> oJ;
    protected static final float[] ZYk = new float[3];
    protected static final float[] tB = new float[3];
    protected static final float[] ex = new float[9];
    protected static final float[] Pfn = new float[3];

    public static void ZYk(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener != null && context != null) {
            try {
                WeakReference<oJ> weakReference = oJ;
                if (weakReference != null) {
                    weakReference.get();
                }
            } catch (Throwable th2) {
                cFZ.oJ("SensorHub", "startListenGyroscope error", th2);
            }
        }
    }

    public static void ex(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener != null && context != null) {
            try {
                WeakReference<oJ> weakReference = oJ;
                if (weakReference != null) {
                    weakReference.get();
                }
            } catch (Throwable th2) {
                cFZ.oJ("SensorHub", "startListenRotationVector err", th2);
            }
        }
    }

    public static void oJ(Context context, SensorEventListener sensorEventListener) {
    }

    public static void tB(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener != null && context != null) {
            try {
                WeakReference<oJ> weakReference = oJ;
                if (weakReference != null) {
                    weakReference.get();
                }
            } catch (Throwable th2) {
                cFZ.oJ("SensorHub", "startListenLinearAcceleration error", th2);
            }
        }
    }

    public static void oJ(oJ oJVar) {
        oJ = new WeakReference<>(oJVar);
    }

    public static void oJ(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<oJ> weakReference = oJ;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th2) {
            cFZ.oJ("SensorHub", "startListenAccelerometer error", th2);
        }
    }

    public static void oJ(Context context, long j10) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j10);
    }
}
