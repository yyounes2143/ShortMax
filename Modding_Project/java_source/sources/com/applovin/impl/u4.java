package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class u4 implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final int f10115a;

    /* renamed from: b  reason: collision with root package name */
    private final float f10116b;

    /* renamed from: c  reason: collision with root package name */
    private final f0 f10117c;

    /* renamed from: d  reason: collision with root package name */
    private final Sensor f10118d;

    /* renamed from: e  reason: collision with root package name */
    private final Sensor f10119e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10120f;

    /* renamed from: g  reason: collision with root package name */
    private float[] f10121g;

    /* renamed from: h  reason: collision with root package name */
    private float f10122h;

    public u4(com.applovin.impl.sdk.k kVar) {
        this.f10120f = kVar;
        f0 f0Var = new f0();
        this.f10117c = f0Var;
        this.f10118d = f0Var.a(9);
        this.f10119e = f0Var.a(4);
        this.f10115a = ((Integer) kVar.a(v4.f10238e4)).intValue();
        this.f10116b = ((Float) kVar.a(v4.f10230d4)).floatValue();
    }

    public float a() {
        float[] fArr = this.f10121g;
        if (fArr == null) {
            return 0.0f;
        }
        return (float) Math.toDegrees(Math.acos(fArr[2] / 9.81f));
    }

    public float b() {
        return this.f10122h;
    }

    public void c() {
        if (Boolean.parseBoolean(this.f10120f.o0().getExtraParameters().get("disable_sensor_data_collection"))) {
            return;
        }
        this.f10117c.b(this);
        if (((Boolean) this.f10120f.p0().a(v4.f10212b4)).booleanValue()) {
            this.f10117c.b(this, this.f10118d, (int) TimeUnit.MILLISECONDS.toMicros(this.f10115a), this.f10120f.O());
        }
        if (((Boolean) this.f10120f.p0().a(v4.f10221c4)).booleanValue()) {
            this.f10117c.b(this, this.f10119e, (int) TimeUnit.MILLISECONDS.toMicros(this.f10115a), this.f10120f.O());
        }
        AppLovinBroadcastManager.unregisterReceiver(this);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f10117c.b(this);
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.f10121g = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() == 4) {
            float f10 = this.f10122h * this.f10116b;
            this.f10122h = f10;
            this.f10122h = f10 + Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
