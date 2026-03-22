package com.applovin.impl;

import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes2.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final SensorManager f7905a = (SensorManager) com.applovin.impl.sdk.k.o().getSystemService("sensor");

    /* renamed from: b  reason: collision with root package name */
    private Handler f7906b;

    public f0() {
        HandlerThread handlerThread = new HandlerThread("AppLovinSdk:background_sensor_manager");
        handlerThread.start();
        this.f7906b = new Handler(handlerThread.getLooper());
    }

    public Sensor a(int i10) {
        return this.f7905a.getDefaultSensor(i10);
    }

    public void b(final SensorEventListener sensorEventListener, final Sensor sensor, final int i10, final com.applovin.impl.sdk.o oVar) {
        this.f7906b.post(new Runnable() { // from class: com.applovin.impl.aa
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.a(sensorEventListener, sensor, i10, oVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SensorEventListener sensorEventListener, Sensor sensor, int i10, com.applovin.impl.sdk.o oVar) {
        try {
            this.f7905a.registerListener(sensorEventListener, sensor, i10, this.f7906b);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                oVar.a("BackgroundSensorManager", "Unable to register sensor listener", th2);
            }
        }
    }

    public void b(final SensorEventListener sensorEventListener) {
        this.f7906b.post(new Runnable() { // from class: com.applovin.impl.z9
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.a(sensorEventListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SensorEventListener sensorEventListener) {
        this.f7905a.unregisterListener(sensorEventListener);
    }
}
