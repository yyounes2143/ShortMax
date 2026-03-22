package com.bytedance.sdk.openadsdk.QSm;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.vodsetting.Module;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private WeakReference<so> ZYk;
    private Context oJ;
    private Map<String, oJ> tB = new HashMap();
    private SensorEventListener ex = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.1
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            so ex;
            if (sensorEvent.sensor.getType() != 1 || (ex = ba.this.ex()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TextureRenderKeys.KEY_IS_X, f10);
                jSONObject.put(TextureRenderKeys.KEY_IS_Y, f11);
                jSONObject.put("z", f12);
                ex.oJ("accelerometer_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };
    private SensorEventListener Pfn = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.12
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            so ex;
            if (sensorEvent.sensor.getType() != 4 || (ex = ba.this.ex()) == null) {
                return;
            }
            float degrees = (float) Math.toDegrees(sensorEvent.values[0]);
            float degrees2 = (float) Math.toDegrees(sensorEvent.values[1]);
            float degrees3 = (float) Math.toDegrees(sensorEvent.values[2]);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TextureRenderKeys.KEY_IS_X, degrees);
                jSONObject.put(TextureRenderKeys.KEY_IS_Y, degrees2);
                jSONObject.put("z", degrees3);
                ex.oJ("gyro_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };

    /* renamed from: ba  reason: collision with root package name */
    private SensorEventListener f12831ba = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.23
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            so ex;
            if (sensorEvent.sensor.getType() != 10 || (ex = ba.this.ex()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TextureRenderKeys.KEY_IS_X, f10);
                jSONObject.put(TextureRenderKeys.KEY_IS_Y, f11);
                jSONObject.put("z", f12);
                ex.oJ("accelerometer_grativityless_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };
    private SensorEventListener cFZ = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.34
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = kkU.ZYk;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            } else if (sensorEvent.sensor.getType() == 2) {
                float[] fArr3 = sensorEvent.values;
                float[] fArr4 = kkU.tB;
                System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            }
            float[] fArr5 = kkU.ex;
            SensorManager.getRotationMatrix(fArr5, null, kkU.ZYk, kkU.tB);
            float[] fArr6 = kkU.Pfn;
            SensorManager.getOrientation(fArr5, fArr6);
            so ex = ba.this.ex();
            if (ex == null) {
                return;
            }
            float f10 = fArr6[0];
            float f11 = fArr6[1];
            float f12 = fArr6[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alpha", f10);
                jSONObject.put("beta", f11);
                jSONObject.put("gamma", f12);
                ex.oJ("rotation_vector_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface oJ {
        JSONObject oJ(JSONObject jSONObject) throws Throwable;
    }

    public ba(so soVar) {
        this.oJ = soVar.oJ();
        this.ZYk = new WeakReference<>(soVar);
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.openadsdk.QSm.oJ Pfn() {
        so ex = ex();
        if (ex == null) {
            return null;
        }
        return ex.si();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public so ex() {
        WeakReference<so> weakReference = this.ZYk;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private void tB() {
        this.tB.put("adInfo", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.45
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                if (ex != null) {
                    JSONObject RZ = ex.RZ();
                    if (RZ != null) {
                        RZ.put(Module.ResponseKey.Code, 1);
                        return RZ;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(Module.ResponseKey.Code, -1);
                return jSONObject3;
            }
        });
        this.tB.put("appInfo", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.56
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject2.put("appName", "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                JSONArray jSONArray = new JSONArray();
                for (String str : ba.this.oJ()) {
                    jSONArray.put(str);
                }
                jSONObject2.put("supportList", jSONArray);
                so ex = ba.this.ex();
                if (ex != null) {
                    jSONObject2.put("deviceId", ex.cFZ());
                    jSONObject2.put("netType", ex.eZI());
                    jSONObject2.put("innerAppName", ex.ex());
                    jSONObject2.put("appName", ex.Pfn());
                    jSONObject2.put("appVersion", ex.ba());
                    Map<String, String> ZYk = ex.ZYk();
                    for (String str2 : ZYk.keySet()) {
                        jSONObject2.put(str2, ZYk.get(str2));
                    }
                }
                return jSONObject2;
            }
        });
        this.tB.put("playableSDKInfo", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.62
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject2.put("appName", "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                jSONObject2.put("os", "android");
                return jSONObject2;
            }
        });
        this.tB.put("subscribe_app_ad", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.63
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("download_app_ad", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.64
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("isViewable", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.2
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                if (ex == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(Module.ResponseKey.Code, 1);
                jSONObject3.put("viewStatus", ex.jFA());
                return jSONObject3;
            }
        });
        this.tB.put("getVolume", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.3
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                if (ex == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(Module.ResponseKey.Code, 1);
                jSONObject3.put("endcard_mute", ex.so());
                return jSONObject3;
            }
        });
        this.tB.put("getScreenSize", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.4
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                if (ex == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject Ry = ex.Ry();
                Ry.put(Module.ResponseKey.Code, 1);
                return Ry;
            }
        });
        this.tB.put("start_accelerometer_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.5
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i10 = 2;
                if (jSONObject != null) {
                    try {
                        i10 = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        cFZ.oJ("PlayableJsBridge", "invoke start_accelerometer_observer error", th2);
                        jSONObject2.put(Module.ResponseKey.Code, -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                kkU.oJ(ba.this.oJ, ba.this.ex, i10);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("close_accelerometer_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.6
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, ba.this.ex);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke close_accelerometer_observer error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("start_gyro_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.7
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i10 = 2;
                if (jSONObject != null) {
                    try {
                        i10 = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        cFZ.oJ("PlayableJsBridge", "invoke start_gyro_observer error", th2);
                        jSONObject2.put(Module.ResponseKey.Code, -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                kkU.ZYk(ba.this.oJ, ba.this.Pfn, i10);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("close_gyro_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.8
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, ba.this.Pfn);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke close_gyro_observer error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("start_accelerometer_grativityless_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.9
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i10 = 2;
                if (jSONObject != null) {
                    try {
                        i10 = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        cFZ.oJ("PlayableJsBridge", "invoke start_accelerometer_grativityless_observer error", th2);
                        jSONObject2.put(Module.ResponseKey.Code, -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                kkU.tB(ba.this.oJ, ba.this.f12831ba, i10);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("close_accelerometer_grativityless_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.10
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, ba.this.f12831ba);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke close_accelerometer_grativityless_observer error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("start_rotation_vector_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.11
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i10 = 2;
                if (jSONObject != null) {
                    try {
                        i10 = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        cFZ.oJ("PlayableJsBridge", "invoke start_rotation_vector_observer error", th2);
                        jSONObject2.put(Module.ResponseKey.Code, -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                kkU.ex(ba.this.oJ, ba.this.cFZ, i10);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("close_rotation_vector_observer", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.13
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, ba.this.cFZ);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke close_rotation_vector_observer error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("device_shake", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.14
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, 300L);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke device_shake error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("device_shake_short", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.15
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    kkU.oJ(ba.this.oJ, 150L);
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    cFZ.oJ("PlayableJsBridge", "invoke device_shake error", th2);
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.tB.put("playable_style", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.16
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex != null) {
                    JSONObject tB = ex.tB();
                    tB.put(Module.ResponseKey.Code, 1);
                    return tB;
                }
                jSONObject2.put(Module.ResponseKey.Code, -1);
                return jSONObject2;
            }
        });
        this.tB.put("sendReward", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.17
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex != null) {
                    ex.oq();
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, -1);
                return jSONObject2;
            }
        });
        this.tB.put("playableInteractionTriggered", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.18
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex != null) {
                    ex.Id();
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, -1);
                return jSONObject2;
            }
        });
        this.tB.put("webview_time_track", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.19
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                return new JSONObject();
            }
        });
        this.tB.put("playable_event", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.20
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex != null && jSONObject != null) {
                    ex.ZYk(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null), jSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS));
                    jSONObject2.put(Module.ResponseKey.Code, 1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, -1);
                return jSONObject2;
            }
        });
        this.tB.put("reportAd", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.21
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("close", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.22
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("openAdLandPageLinks", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.24
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("get_viewport", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.25
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject QSm = ex.QSm();
                QSm.put(Module.ResponseKey.Code, 1);
                return QSm;
            }
        });
        this.tB.put("jssdk_load_finish", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.26
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.nke();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_material_render_result", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.27
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.jFA(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("detect_change_playable_click", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.28
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject kkU = ex.kkU();
                kkU.put(Module.ResponseKey.Code, 1);
                return kkU;
            }
        });
        this.tB.put("check_camera_permission", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.29
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject PiB = ex.PiB();
                PiB.put(Module.ResponseKey.Code, 1);
                return PiB;
            }
        });
        this.tB.put("check_external_storage", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.30
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject WcQ = ex.WcQ();
                if (WcQ.isNull("result")) {
                    WcQ.put(Module.ResponseKey.Code, -1);
                } else {
                    WcQ.put(Module.ResponseKey.Code, 1);
                }
                return WcQ;
            }
        });
        this.tB.put("playable_open_camera", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.31
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_pick_photo", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.32
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_download_media_in_photos", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.33
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.oJ(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_preventTouchEvent", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.35
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.ZYk(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_settings_info", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.36
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject awB = ex.awB();
                awB.put(Module.ResponseKey.Code, 1);
                return awB;
            }
        });
        this.tB.put("playable_load_main_scene", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.37
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.cY();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_enter_section", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.38
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.ex(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_end", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.39
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.jr();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_finish_play_playable", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.40
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.Xe();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_transfrom_module_show", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.41
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.tb();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_transfrom_module_change_color", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.42
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.HL();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_set_scroll_rect", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.43
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_click_area", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.44
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.Pfn(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_real_play_start", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.46
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_material_first_frame_show", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.47
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.IUZ();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_stuck_check_pong", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.48
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.Ln();
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_material_adnormal_mask", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.49
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                ex.ba(jSONObject);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_long_press_panel", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.50
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_alpha_player_play", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.51
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_transfrom_module_highlight", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.52
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_send_click_event", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.53
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_query_media_permission_declare", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.54
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject cFZ = ex.cFZ(jSONObject);
                cFZ.put(Module.ResponseKey.Code, 1);
                return cFZ;
            }
        });
        this.tB.put("playable_query_media_permission_enable", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.55
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                so ex = ba.this.ex();
                JSONObject jSONObject2 = new JSONObject();
                if (ex == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                JSONObject so2 = ex.so(jSONObject);
                so2.put(Module.ResponseKey.Code, 1);
                return so2;
            }
        });
        this.tB.put("playable_apply_media_permission", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.57
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_start_kws", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.58
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_close_kws", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.59
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_video_preload_task_add", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.60
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
        this.tB.put("playable_video_preload_task_cancel", new oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.ba.61
            @Override // com.bytedance.sdk.openadsdk.QSm.ba.oJ
            public JSONObject oJ(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.QSm.oJ Pfn = ba.this.Pfn();
                JSONObject jSONObject2 = new JSONObject();
                if (Pfn == null) {
                    jSONObject2.put(Module.ResponseKey.Code, -1);
                    return jSONObject2;
                }
                jSONObject2.put(Module.ResponseKey.Code, 1);
                return jSONObject2;
            }
        });
    }

    public void ZYk() {
        kkU.oJ(this.oJ, this.ex);
        kkU.oJ(this.oJ, this.Pfn);
        kkU.oJ(this.oJ, this.f12831ba);
        kkU.oJ(this.oJ, this.cFZ);
    }

    public Set<String> oJ() {
        return this.tB.keySet();
    }

    public JSONObject oJ(String str, JSONObject jSONObject) {
        try {
            oJ oJVar = this.tB.get(str);
            if (oJVar == null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, -1);
                return jSONObject2;
            }
            return oJVar.oJ(jSONObject);
        } catch (Throwable th2) {
            cFZ.oJ("PlayableJsBridge", "invoke error", th2);
            return null;
        }
    }
}
