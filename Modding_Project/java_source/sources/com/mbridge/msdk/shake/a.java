package com.mbridge.msdk.shake;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import org.json.JSONObject;
/* compiled from: NativeShakeManager.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private SensorManager f29055a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeShakeManager.java */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static a f29056a = new a();
    }

    public static a a() {
        return b.f29056a;
    }

    public void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.f29055a;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private a() {
    }

    public void a(SensorEventListener sensorEventListener) {
        a(sensorEventListener, null, 2);
    }

    public void a(SensorEventListener sensorEventListener, Sensor sensor, int i10) {
        Context d10 = c.m().d();
        if (d10 != null) {
            try {
                if (this.f29055a == null) {
                    this.f29055a = (SensorManager) d10.getSystemService("sensor");
                }
                if (sensor == null) {
                    sensor = this.f29055a.getDefaultSensor(1);
                }
                this.f29055a.registerListener(sensorEventListener, sensor, i10);
            } catch (Exception e10) {
                e10.printStackTrace();
                a(d10, e10.getMessage());
            }
        }
    }

    private static void a(Context context, String str) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000106");
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f27025g);
                }
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                p0.b("NativeShakeManager", th2.getMessage());
            }
        }
    }
}
