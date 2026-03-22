package com.apm.insight;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.MonitorCrash;
import com.apm.insight.k.j;
import com.apm.insight.l.m;
import com.appsflyer.AppsFlyerProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: MonitorCrashHandler.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    protected static MonitorCrash f6834a;

    /* renamed from: c  reason: collision with root package name */
    private static volatile ConcurrentHashMap<String, d> f6835c = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private MonitorCrash f6836b;

    private d(MonitorCrash monitorCrash) {
        this.f6836b = monitorCrash;
        com.apm.insight.entity.b.a(this);
        com.apm.insight.j.b.c();
        j.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f6836b.mConfig.mPackageName == null) {
                Context g10 = e.g();
                PackageInfo packageInfo = g10.getPackageManager().getPackageInfo(g10.getPackageName(), 128);
                if (packageInfo != null) {
                    MonitorCrash.Config config = this.f6836b.mConfig;
                    if (config.mVersionInt == -1) {
                        config.mVersionInt = packageInfo.versionCode;
                    }
                    if (config.mVersionStr == null) {
                        config.mVersionStr = packageInfo.versionName;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(this.f6836b.mConfig.mDeviceId) || MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(this.f6836b.mConfig.mDeviceId)) {
            this.f6836b.mConfig.mDeviceId = e.c().a();
        }
        try {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, String.valueOf(this.f6836b.mConfig.mAid));
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, this.f6836b.mConfig.mVersionInt);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, this.f6836b.mConfig.mVersionInt);
            jSONObject.put("app_version", this.f6836b.mConfig.mVersionStr);
            jSONObject.put(AppsFlyerProperties.CHANNEL, this.f6836b.mConfig.mChannel);
            jSONObject.put("package", a.a(this.f6836b.mConfig.mPackageName));
            jSONObject.put("device_id", this.f6836b.mConfig.mDeviceId);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.f6836b.mConfig.mUID);
            jSONObject.put("ssid", this.f6836b.mConfig.mSSID);
            jSONObject.put("os", "Android");
            jSONObject.put("so_list", a.a(this.f6836b.mConfig.mSoList));
            jSONObject.put("thread_list", a.a(this.f6836b.mConfig.mThreadList));
            jSONObject.put("single_upload", 0);
        } catch (JSONException unused2) {
        }
        return jSONObject;
    }

    public final String b() {
        return this.f6836b.mConfig.mAid;
    }

    public final JSONObject c() {
        return d();
    }

    public final boolean a(Object obj) {
        return this.f6836b == obj;
    }

    public static Object a() {
        return f6834a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, final MonitorCrash monitorCrash) {
        f6834a = monitorCrash;
        d dVar = new d(monitorCrash);
        final com.apm.insight.nativecrash.b a10 = e.a();
        Npth.init(context, new ICommonParams() { // from class: com.apm.insight.d.1
            @Override // com.apm.insight.ICommonParams
            public final Map<String, Object> getCommonParams() {
                JSONObject d10 = d.this.d();
                HashMap hashMap = new HashMap();
                if (d10 != null) {
                    Iterator<String> keys = d10.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        hashMap.put(next, d10.opt(next));
                    }
                }
                return hashMap;
            }

            @Override // com.apm.insight.ICommonParams
            public final String getDeviceId() {
                if (TextUtils.isEmpty(monitorCrash.mConfig.mDeviceId)) {
                    return a10.d();
                }
                return monitorCrash.mConfig.mDeviceId;
            }

            @Override // com.apm.insight.ICommonParams
            public final List<String> getPatchInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final Map<String, Integer> getPluginInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final String getSessionId() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final long getUserId() {
                return 0L;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(MonitorCrash monitorCrash) {
        d dVar = new d(monitorCrash);
        if (monitorCrash.mConfig != null) {
            f6835c.put(monitorCrash.mConfig.mAid, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(String str) {
        return f6835c.get(str);
    }

    @Nullable
    public final JSONArray a(StackTraceElement[] stackTraceElementArr, Throwable th2) {
        return a(stackTraceElementArr, th2, null);
    }

    @Nullable
    public final JSONArray a(StackTraceElement[] stackTraceElementArr, Throwable th2, String str) {
        String[] strArr = this.f6836b.mConfig.mPackageName;
        if (strArr == null) {
            return new JSONArray().put(new m.a(0, stackTraceElementArr.length).a());
        }
        if (th2 == null || stackTraceElementArr == null) {
            return null;
        }
        JSONArray a10 = m.a(stackTraceElementArr, strArr);
        if (str != null && this.f6836b.mConfig.mThreadList != null && a.a(a10)) {
            for (String str2 : this.f6836b.mConfig.mThreadList) {
                if (TextUtils.equals(str2, str)) {
                    a10.put(new m.a(0, stackTraceElementArr.length).a());
                }
            }
        }
        return a10;
    }

    public final JSONArray a(String[] strArr) {
        if (this.f6836b.config().mPackageName == null) {
            return new JSONArray().put(new m.a(0, strArr.length).a());
        }
        return m.a(strArr, this.f6836b.mConfig.mPackageName);
    }

    public final boolean a(String str, String str2) {
        if (this.f6836b.config().mPackageName == null) {
            return true;
        }
        return com.apm.insight.entity.b.a(str, a.a(this.f6836b.mConfig.mSoList), str2, a.a(this.f6836b.mConfig.mThreadList));
    }

    public final JSONObject a(CrashType crashType, JSONArray jSONArray) {
        Map<? extends String, ? extends String> userData;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("header", d());
            jSONObject.put("line_num", jSONArray);
            if (crashType != null) {
                AttachUserData attachUserData = this.f6836b.mCustomData;
                jSONObject.put("custom", (attachUserData == null || (userData = attachUserData.getUserData(crashType)) == null) ? null : new JSONObject(userData));
                jSONObject.put("filters", new JSONObject(this.f6836b.mTagMap));
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
