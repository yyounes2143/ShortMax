package com.bytedance.bdtracker;

import android.app.Application;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.webkit.ProxyConfig;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.IExtraParams;
import com.bytedance.applog.Level;
import com.bytedance.applog.util.SensitiveUtils;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class r3 {

    /* renamed from: c  reason: collision with root package name */
    public static final a[] f12371c = {new a(TTVideoEngineInterface.PLAY_API_KEY_APPID, TTVideoEngineInterface.PLAY_API_KEY_APPID, String.class), new a("google_aid", "google_aid", String.class), new a("carrier", "carrier", String.class), new a("mcc_mnc", "mcc_mnc", String.class), new a("sim_region", "sim_region", String.class), new a("device_id", "device_id", String.class), new a("bd_did", "bd_did", String.class), new a("install_id", "iid", String.class), new a("clientudid", "clientudid", String.class), new a(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, TTVideoEngineInterface.PLAY_API_KEY_APPNAME, String.class), new a("app_version", "version_name", String.class), new a(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, Integer.class), new a("manifest_version_code", "manifest_version_code", Integer.class), new a(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, Integer.class), new a("sdk_version_code", "sdk_version_code", Integer.class)};

    /* renamed from: a  reason: collision with root package name */
    public volatile IExtraParams f12372a;

    /* renamed from: b  reason: collision with root package name */
    public final d f12373b;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f12374a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12375b;

        /* renamed from: c  reason: collision with root package name */
        public final Class f12376c;

        public a(String str, String str2, Class cls) {
            this.f12374a = str;
            this.f12375b = str2;
            this.f12376c = cls;
        }
    }

    public r3(d dVar) {
        this.f12373b = dVar;
    }

    public String a(JSONObject jSONObject, String str, boolean z10, Level level) {
        if (this.f12373b.f11914n == null || TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        Uri.Builder buildUpon = parse.buildUpon();
        HashMap hashMap = new HashMap();
        a(jSONObject, z10, hashMap, level);
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!queryParameterNames.contains(key) && !TextUtils.isEmpty(value)) {
                buildUpon.appendQueryParameter(key, entry.getValue());
            }
        }
        return buildUpon.build().toString();
    }

    public void a(JSONObject jSONObject, boolean z10, Map<String, String> map, Level level) {
        HashMap<String, String> hashMap;
        Application application = this.f12373b.f11914n;
        if (application == null || map == null || level == null) {
            return;
        }
        map.put("_rticket", String.valueOf(System.currentTimeMillis()));
        map.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "android");
        if (z10) {
            map.put("ssmix", "a");
        }
        if (TextUtils.isEmpty(b5.f11881a)) {
            DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
            int i10 = displayMetrics == null ? 0 : displayMetrics.widthPixels;
            DisplayMetrics displayMetrics2 = application.getResources().getDisplayMetrics();
            int i11 = displayMetrics2 == null ? 0 : displayMetrics2.heightPixels;
            if (i10 > 0 && i11 > 0) {
                b5.f11881a = i10 + ProxyConfig.MATCH_ALL_SCHEMES + i11;
            }
        }
        String str = b5.f11881a;
        if (!TextUtils.isEmpty(str)) {
            map.put("resolution", str);
        }
        if (b5.f11882b == -1) {
            b5.f11882b = application.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
        }
        int i12 = b5.f11882b;
        if (i12 > 0) {
            map.put("dpi", String.valueOf(i12));
        }
        map.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, Build.MODEL);
        map.put("device_brand", Build.BRAND);
        map.put(MediaFormat.KEY_LANGUAGE, application.getResources().getConfiguration().locale.getLanguage());
        map.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
        String str2 = Build.VERSION.RELEASE;
        if (str2 != null && str2.length() > 10) {
            str2 = str2.substring(0, 10);
        }
        map.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, str2);
        String a10 = t4.a(application, false);
        if (!TextUtils.isEmpty(a10)) {
            map.put("ac", a10);
        }
        int i13 = 0;
        while (true) {
            a[] aVarArr = f12371c;
            hashMap = null;
            if (i13 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i13];
            Object a11 = a(jSONObject, aVar.f12374a, (String) null, aVar.f12376c);
            if (a11 != null) {
                map.put(aVar.f12375b, a11.toString());
            }
            i13++;
        }
        String str3 = (String) a(jSONObject, "tweaked_channel", "", String.class);
        if (TextUtils.isEmpty(str3)) {
            str3 = (String) a(jSONObject, AppsFlyerProperties.CHANNEL, "", String.class);
        }
        if (!TextUtils.isEmpty(str3)) {
            map.put(AppsFlyerProperties.CHANNEL, str3);
        }
        String str4 = (String) a(jSONObject, "cdid", (String) null, String.class);
        if (!TextUtils.isEmpty(str4)) {
            map.put("cdid", str4);
        }
        w4.a();
        SensitiveUtils.appendSensitiveParams(this, jSONObject, map, true, level);
        if (level == Level.L0) {
            String str5 = (String) a(jSONObject, "openudid", (String) null, String.class);
            if (!TextUtils.isEmpty(str5)) {
                map.put("openudid", str5);
            }
        }
        this.f12373b.getAppContext();
        try {
            if (this.f12372a != null) {
                hashMap = this.f12372a.getExtraParams(level);
            }
            if (hashMap == null || hashMap.isEmpty()) {
                return;
            }
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                if (entry != null) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value) && !map.containsKey(key)) {
                        map.put(key, value);
                    }
                }
            }
        } catch (Throwable th2) {
            this.f12373b.D.error(11, "Add extra params failed.", th2, new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] a(com.bytedance.bdtracker.e0 r7, org.json.JSONObject r8, int r9) {
        /*
            r6 = this;
            com.bytedance.applog.UriConfig r7 = r7.e()
            r0 = 0
            r1 = 1
            if (r9 == 0) goto L21
            if (r9 == r1) goto Ld
            java.lang.String[] r7 = new java.lang.String[r0]
            goto L25
        Ld:
            java.lang.String r9 = r7.getBusinessUri()
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 != 0) goto L21
            java.lang.String[] r9 = new java.lang.String[r1]
            java.lang.String r7 = r7.getBusinessUri()
            r9[r0] = r7
            r7 = r9
            goto L25
        L21:
            java.lang.String[] r7 = r7.getSendUris()
        L25:
            int r9 = r7.length
            java.lang.String[] r2 = new java.lang.String[r9]
            com.bytedance.bdtracker.d r3 = r6.f12373b
            boolean r3 = r3.E
        L2c:
            if (r0 >= r9) goto L5e
            r4 = r7[r0]
            r2[r0] = r4
            if (r3 == 0) goto L49
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r5 = r2[r0]
            r4.append(r5)
            java.lang.String r5 = "?tt_data=a"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r2[r0] = r4
        L49:
            r4 = r2[r0]
            com.bytedance.applog.Level r5 = com.bytedance.applog.Level.L1
            java.lang.String r4 = r6.a(r8, r4, r1, r5)
            r2[r0] = r4
            java.lang.String[] r5 = com.bytedance.bdtracker.p4.f12336c
            java.lang.String r4 = com.bytedance.bdtracker.p3.a(r4, r5)
            r2[r0] = r4
            int r0 = r0 + 1
            goto L2c
        L5e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.r3.a(com.bytedance.bdtracker.e0, org.json.JSONObject, int):java.lang.String[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T a(org.json.JSONObject r3, java.lang.String r4, T r5, java.lang.Class<T> r6) {
        /*
            r2 = this;
            if (r3 != 0) goto L9
            com.bytedance.bdtracker.d r3 = r2.f12373b
            java.lang.Object r3 = r3.getHeaderValue(r4, r5, r6)
            return r3
        L9:
            java.lang.Object r3 = r3.opt(r4)
            if (r3 == 0) goto L25
            if (r6 == 0) goto L25
            java.lang.Object r3 = r6.cast(r3)     // Catch: java.lang.Throwable -> L16
            goto L26
        L16:
            r3 = move-exception
            com.bytedance.bdtracker.d r4 = r2.f12373b
            com.bytedance.applog.log.IAppLogLogger r4 = r4.D
            r6 = 0
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r0 = 11
            java.lang.String r1 = "Cast type failed."
            r4.error(r0, r1, r3, r6)
        L25:
            r3 = 0
        L26:
            if (r3 != 0) goto L29
            goto L2a
        L29:
            r5 = r3
        L2a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.r3.a(org.json.JSONObject, java.lang.String, java.lang.Object, java.lang.Class):java.lang.Object");
    }
}
