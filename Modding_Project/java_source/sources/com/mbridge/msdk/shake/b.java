package com.mbridge.msdk.shake;

import android.hardware.Sensor;
import android.hardware.SensorEventListener;
/* compiled from: ShakeSensorEventListener.java */
/* loaded from: classes6.dex */
public abstract class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    public long f29057a = 0;

    /* renamed from: b  reason: collision with root package name */
    public float f29058b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    public float f29059c = 0.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f29060d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f29061e;

    /* renamed from: f  reason: collision with root package name */
    private int f29062f;

    public b(int i10, int i11) {
        this.f29061e = i10;
        this.f29062f = i11;
    }

    public abstract void a();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (java.lang.Math.abs(r9 - r2) > r8.f29061e) goto L5;
     */
    @Override // android.hardware.SensorEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSensorChanged(android.hardware.SensorEvent r9) {
        /*
            r8 = this;
            float[] r9 = r9.values
            r0 = 0
            r0 = r9[r0]
            float r0 = -r0
            r1 = 1
            r1 = r9[r1]
            float r1 = -r1
            r2 = 2
            r9 = r9[r2]
            float r9 = -r9
            float r2 = r8.f29058b
            r3 = 0
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 == 0) goto L22
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r4 = r8.f29061e
            float r4 = (float) r4
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L48
        L22:
            float r2 = r8.f29059c
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 == 0) goto L35
            float r2 = r1 - r2
            float r2 = java.lang.Math.abs(r2)
            int r4 = r8.f29061e
            float r4 = (float) r4
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L48
        L35:
            float r2 = r8.f29060d
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 == 0) goto L5c
            float r2 = r9 - r2
            float r2 = java.lang.Math.abs(r2)
            int r3 = r8.f29061e
            float r3 = (float) r3
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L5c
        L48:
            long r2 = java.lang.System.currentTimeMillis()
            long r4 = r8.f29057a
            long r4 = r2 - r4
            int r6 = r8.f29062f
            long r6 = (long) r6
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto L5c
            r8.f29057a = r2
            r8.a()
        L5c:
            r8.f29058b = r0
            r8.f29059c = r1
            r8.f29060d = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.shake.b.onSensorChanged(android.hardware.SensorEvent):void");
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
