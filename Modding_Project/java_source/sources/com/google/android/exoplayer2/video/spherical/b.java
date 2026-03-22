package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
/* compiled from: OrientationListener.java */
/* loaded from: classes4.dex */
final class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f19264a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f19265b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f19266c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f19267d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    private final Display f19268e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f19269f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19270g;

    /* compiled from: OrientationListener.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(float[] fArr, float f10);
    }

    public b(Display display, a... aVarArr) {
        this.f19268e = display;
        this.f19269f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f19265b);
        SensorManager.getOrientation(this.f19265b, this.f19267d);
        return this.f19267d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f19269f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f19270g) {
            com.google.android.exoplayer2.video.spherical.a.a(this.f19266c, fArr);
            this.f19270g = true;
        }
        float[] fArr2 = this.f19265b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f19265b, 0, this.f19266c, 0);
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
            float[] fArr2 = this.f19265b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f19265b, i11, i12, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f19264a, sensorEvent.values);
        d(this.f19264a, this.f19268e.getRotation());
        float a10 = a(this.f19264a);
        e(this.f19264a);
        c(this.f19264a);
        b(this.f19264a, a10);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
