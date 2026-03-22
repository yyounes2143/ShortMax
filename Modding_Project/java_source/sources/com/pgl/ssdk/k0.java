package com.pgl.ssdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes6.dex */
public class k0 implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f36767a = {999999.0f, 999999.0f, 999999.0f};

    /* renamed from: b  reason: collision with root package name */
    public static boolean f36768b = true;

    /* renamed from: c  reason: collision with root package name */
    private static volatile k0 f36769c;

    /* renamed from: i  reason: collision with root package name */
    private final Context f36775i;

    /* renamed from: d  reason: collision with root package name */
    private Sensor f36770d = null;

    /* renamed from: e  reason: collision with root package name */
    private Sensor f36771e = null;

    /* renamed from: f  reason: collision with root package name */
    private Sensor f36772f = null;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f36773g = false;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f36774h = false;

    /* renamed from: j  reason: collision with root package name */
    private AtomicReference<a> f36776j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private long f36777k = 999999;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f36778a;

        /* renamed from: b  reason: collision with root package name */
        public float[] f36779b = null;

        /* renamed from: c  reason: collision with root package name */
        public float[] f36780c = null;

        /* renamed from: d  reason: collision with root package name */
        public float[] f36781d = null;

        public a(long j10) {
            this.f36778a = j10;
        }
    }

    private k0(Context context) {
        this.f36775i = context;
    }

    public static k0 a(Context context) {
        if (f36769c == null) {
            synchronized (k0.class) {
                try {
                    if (f36769c == null) {
                        f36769c = new k0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (f36768b) {
            f36769c.c();
        }
        return f36769c;
    }

    private void c() {
        if (this.f36774h) {
            return;
        }
        try {
            SensorManager sensorManager = (SensorManager) this.f36775i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                this.f36770d = sensorManager.getDefaultSensor(1);
                this.f36771e = sensorManager.getDefaultSensor(2);
                this.f36772f = sensorManager.getDefaultSensor(4);
            }
        } catch (Exception unused) {
        }
        this.f36774h = true;
    }

    private void e() {
        this.f36777k = -1L;
        this.f36773g = false;
        try {
            SensorManager sensorManager = (SensorManager) this.f36775i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                sensorManager.unregisterListener(this);
            }
        } catch (Exception unused) {
        }
    }

    public Object[] b() {
        Object[] objArr = new Object[6];
        a aVar = this.f36776j.get();
        if (f36768b && aVar != null) {
            int i10 = 0;
            do {
                if ((this.f36770d == null || aVar.f36779b != null) && ((this.f36771e == null || aVar.f36780c != null) && (this.f36772f == null || aVar.f36781d != null))) {
                    break;
                }
                z0.a(50L);
                i10++;
            } while (i10 <= 20);
            e();
            this.f36773g = false;
            a(objArr, aVar);
            this.f36776j.set(null);
            return objArr;
        }
        a(objArr);
        return objArr;
    }

    public boolean d() {
        if (this.f36770d != null) {
            try {
                SensorManager sensorManager = (SensorManager) this.f36775i.getApplicationContext().getSystemService("sensor");
                if (sensorManager != null) {
                    boolean registerListener = sensorManager.registerListener(this, this.f36770d, 2);
                    Sensor sensor = this.f36771e;
                    if (sensor != null) {
                        sensorManager.registerListener(this, sensor, 2);
                    }
                    Sensor sensor2 = this.f36772f;
                    if (sensor2 != null) {
                        sensorManager.registerListener(this, sensor2, 2);
                    }
                    if (!registerListener) {
                        e();
                    } else {
                        long currentTimeMillis = System.currentTimeMillis();
                        this.f36777k = currentTimeMillis;
                        this.f36776j.set(new a(currentTimeMillis));
                        this.f36773g = true;
                    }
                }
            } catch (Throwable unused) {
                e();
            }
        }
        return this.f36773g;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        a aVar = this.f36776j.get();
        if (aVar == null) {
            return;
        }
        int type = sensorEvent.sensor.getType();
        if (type != 1) {
            if (type != 2) {
                if (type == 4 && aVar.f36781d == null) {
                    aVar.f36781d = sensorEvent.values;
                }
            } else if (aVar.f36780c == null) {
                aVar.f36780c = sensorEvent.values;
            }
        } else if (aVar.f36779b == null) {
            aVar.f36779b = sensorEvent.values;
        }
    }

    private static void a(Object[] objArr) {
        Float valueOf = Float.valueOf(999999.0f);
        objArr[0] = valueOf;
        objArr[1] = valueOf;
        objArr[2] = valueOf;
        objArr[3] = 999999L;
        float[] fArr = f36767a;
        objArr[4] = fArr;
        objArr[5] = fArr;
    }

    private static void a(Object[] objArr, a aVar) {
        float[] a10;
        float[] fArr = aVar.f36779b;
        if (fArr != null) {
            float[] fArr2 = aVar.f36780c;
            if (fArr2 != null) {
                a10 = a(objArr, fArr, fArr2);
            } else {
                a10 = a(objArr, fArr);
            }
            objArr[0] = Float.valueOf(a10[0]);
            objArr[1] = Float.valueOf(a10[1]);
            objArr[2] = Float.valueOf(a10[2]);
            objArr[4] = aVar.f36779b;
        } else {
            objArr[0] = Float.valueOf(999999.0f);
            objArr[1] = Float.valueOf(999999.0f);
            objArr[2] = Float.valueOf(999999.0f);
            objArr[4] = f36767a;
        }
        objArr[3] = Long.valueOf(aVar.f36778a);
        float[] fArr3 = aVar.f36781d;
        if (fArr3 != null) {
            objArr[5] = fArr3;
        } else {
            objArr[5] = f36767a;
        }
    }

    private static float[] a(Object[] objArr, float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[9];
        float[] fArr4 = new float[3];
        SensorManager.getRotationMatrix(fArr3, new float[9], fArr, fArr2);
        SensorManager.getOrientation(fArr3, fArr4);
        return new float[]{(((float) Math.toDegrees(fArr4[0])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[1])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[2])) + 360.0f) % 360.0f};
    }

    private static float[] a(Object[] objArr, float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float sqrt = 1.0f / ((float) Math.sqrt(((f10 * f10) + (f11 * f11)) + (f12 * f12)));
        return new float[]{999999.0f, (((float) Math.toDegrees((float) Math.asin(-(f11 * sqrt)))) + 360.0f) % 360.0f, (((float) Math.toDegrees((float) Math.atan2(-(f10 * sqrt), f12 * sqrt))) + 360.0f) % 360.0f};
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    public void a() {
        if (!f36768b || this.f36773g) {
            return;
        }
        d();
    }
}
