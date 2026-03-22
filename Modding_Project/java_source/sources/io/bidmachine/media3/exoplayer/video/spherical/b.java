package io.bidmachine.media3.exoplayer.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
/* compiled from: OrientationListener.java */
/* loaded from: classes8.dex */
final class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f57348a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f57349b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f57350c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f57351d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    private final Display f57352e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f57353f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f57354g;

    /* compiled from: OrientationListener.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a(float[] fArr, float f10);
    }

    public b(Display display, a... aVarArr) {
        this.f57352e = display;
        this.f57353f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f57349b);
        SensorManager.getOrientation(this.f57349b, this.f57351d);
        return this.f57351d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f57353f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f57354g) {
            io.bidmachine.media3.exoplayer.video.spherical.a.a(this.f57350c, fArr);
            this.f57354g = true;
        }
        float[] fArr2 = this.f57349b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f57349b, 0, this.f57350c, 0);
    }

    private void d(float[] fArr, int i10) {
        if (i10 != 0) {
            int i11 = 129;
            int i12 = 1;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        i11 = 130;
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    i12 = 130;
                }
            } else {
                i12 = 129;
                i11 = 2;
            }
            float[] fArr2 = this.f57349b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f57349b, i11, i12, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f57348a, sensorEvent.values);
        d(this.f57348a, this.f57352e.getRotation());
        float a10 = a(this.f57348a);
        e(this.f57348a);
        c(this.f57348a);
        b(this.f57348a, a10);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
