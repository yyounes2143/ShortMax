package com.applovin.impl;

import android.os.Build;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.c2;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.OutputStream;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class d2 {

    /* renamed from: g  reason: collision with root package name */
    private static volatile ExecutorService f7777g;

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f7779a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.applovin.impl.sdk.o f7780b;

    /* renamed from: c  reason: collision with root package name */
    private final c2.b f7781c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f7782d = Collections.synchronizedMap(new HashMap());

    /* renamed from: e  reason: collision with root package name */
    private final Set f7783e = Collections.synchronizedSet(new HashSet());

    /* renamed from: f  reason: collision with root package name */
    private static final int f7776f = (int) TimeUnit.SECONDS.toMillis(30);

    /* renamed from: h  reason: collision with root package name */
    private static final Object f7778h = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ThreadFactory {

        /* renamed from: com.applovin.impl.d2$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0109a implements Thread.UncaughtExceptionHandler {
            C0109a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th2) {
                d2.this.f7779a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    d2.this.f7779a.O().a("HealthEventsReporter", "Caught unhandled exception", th2);
                }
            }
        }

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:health_events_reporter");
            thread.setDaemon(true);
            thread.setPriority(((Integer) d2.this.f7779a.a(v4.Q)).intValue());
            thread.setUncaughtExceptionHandler(new C0109a());
            return thread;
        }
    }

    public d2(com.applovin.impl.sdk.k kVar, c2.b bVar) {
        this.f7779a = kVar;
        this.f7780b = kVar.O();
        this.f7781c = bVar;
        a();
    }

    private void c(c2 c2Var, List list) {
        HttpURLConnection httpURLConnection;
        Throwable th2;
        if (c2Var.a() == c2.b.AD || c2Var.a() == c2.b.MEDIATED_AD || c2Var.a() == c2.b.USER_SESSION || !k7.a(((Integer) this.f7779a.a(v4.f10401z)).intValue())) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            try {
                httpURLConnection = (HttpURLConnection) a(c2Var, map).openConnection();
                try {
                    int i10 = f7776f;
                    httpURLConnection.setConnectTimeout(i10);
                    httpURLConnection.setReadTimeout(i10);
                    httpURLConnection.setDefaultUseCaches(false);
                    httpURLConnection.setAllowUserInteraction(false);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnection.setRequestProperty("AppLovin-Event-Type", c2Var.b());
                    int responseCode = httpURLConnection.getResponseCode();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7780b.a("HealthEventsReporter", c2Var.b() + " reported with code " + responseCode + " and extra parameters " + map);
                    }
                    this.f7782d.put(c2Var, Long.valueOf(System.currentTimeMillis()));
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7780b.d("HealthEventsReporter", "Failed to report " + c2Var.b() + " with extra parameters " + map, th2);
                        }
                        k7.a(httpURLConnection, this.f7779a);
                    } finally {
                        k7.a(httpURLConnection, this.f7779a);
                    }
                }
            } catch (Throwable th4) {
                httpURLConnection = null;
                th2 = th4;
            }
        }
    }

    public void d(c2 c2Var, Map map) {
        a(c2Var, map, 0L);
    }

    private void a() {
        if (f7777g != null) {
            return;
        }
        synchronized (f7778h) {
            try {
                if (f7777g != null) {
                    return;
                }
                f7777g = Executors.newFixedThreadPool(1, new a());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void d(final c2 c2Var, List list) {
        final String str = (String) this.f7779a.a(v4.A);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        double a10 = c2Var.a(this.f7779a);
        if (k7.a(a10)) {
            if (((Boolean) this.f7779a.a(v4.G)).booleanValue()) {
                a(str, c2Var, a(c2Var, a10, list));
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final JSONObject a11 = a(c2Var, a10, Collections.singletonList((Map) it.next()));
                f7777g.execute(new Runnable() { // from class: com.applovin.impl.r9
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.this.a(str, c2Var, a11);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(String str, c2 c2Var, JSONObject jSONObject) {
        byte[] bytes;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            URL url = new URL(str);
            bytes = jSONObject.toString().getBytes("UTF-8");
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int i10 = f7776f;
            httpURLConnection.setConnectTimeout(i10);
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
            httpURLConnection.setRequestProperty("AppLovin-Event-Type", c2Var.b());
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bytes);
            outputStream.close();
            int responseCode = httpURLConnection.getResponseCode();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7780b;
                oVar.a("HealthEventsReporter", c2Var.b() + " reported with code " + responseCode);
            }
            this.f7782d.put(c2Var, Long.valueOf(System.currentTimeMillis()));
            k7.a(httpURLConnection, this.f7779a);
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            try {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f7780b;
                    oVar2.d("HealthEventsReporter", "Failed to report " + c2Var.b(), th);
                }
            } finally {
                k7.a(httpURLConnection2, this.f7779a);
            }
        }
    }

    public void a(c2 c2Var, String str) {
        a(c2Var, str, new HashMap());
    }

    public void a(c2 c2Var, String str, Map map) {
        map.put("source", str);
        d(c2Var, map);
    }

    public void a(c2 c2Var, String str, Map map, String str2) {
        if (!StringUtils.isValidString(str2) || this.f7783e.add(str2)) {
            map.put("source", str);
            a(c2Var, str, map);
        }
    }

    public void a(c2 c2Var, Map map, long j10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        a(c2Var, arrayList, j10);
    }

    public void a(final c2 c2Var, final List list, long j10) {
        if (a(c2Var, j10)) {
            return;
        }
        try {
            if (k7.h()) {
                f7777g.execute(new Runnable() { // from class: com.applovin.impl.q9
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.this.b(c2Var, list);
                    }
                });
            } else {
                b(c2Var, list);
            }
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7780b;
                oVar.d("HealthEventsReporter", "Failed to report " + c2Var.b() + " with extra parameters collection " + list, th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(c2 c2Var, List list) {
        if (AppLovinSdkUtils.isEmulator()) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7780b;
            oVar.a("HealthEventsReporter", "Reporting " + c2Var.b() + " with extra parameters collection " + list);
        }
        if (this.f7781c != c2Var.a()) {
            k1.a("Health event " + c2Var.b() + " category: " + c2Var.a() + " does not match the reporter category: " + this.f7781c, new Object[0]);
        }
        c(c2Var, list);
        d(c2Var, list);
    }

    private Map c(c2 c2Var, Map map) {
        HashMap hashMap = new HashMap(map);
        if (c2Var == c2.C0) {
            hashMap.remove("details");
        }
        return hashMap;
    }

    private Map b(c2 c2Var, Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", c2Var.b());
        if (c2Var == c2.f7679y0 || c2Var == c2.f7677x0 || c2Var == c2.N0 || c2Var == c2.L0) {
            if (((Boolean) this.f7779a.a(v4.f10286k4)).booleanValue()) {
                CollectionUtils.putStringIfValid("wvvc", String.valueOf(k8.d()), hashMap);
                CollectionUtils.putStringIfValid("wvv", k8.c(), hashMap);
                CollectionUtils.putStringIfValid("wvpn", k8.b(), hashMap);
            }
            CollectionUtils.putStringIfValid("oglv", this.f7779a.B().I(), hashMap);
        }
        Map L = this.f7779a.B().L();
        hashMap.put("platform", String.valueOf(L.get("platform")));
        hashMap.put("country_code", String.valueOf(L.get("country_code")));
        hashMap.put("cc", this.f7779a.w().getCountryCode());
        hashMap.put("applovin_random_token", this.f7779a.i0());
        hashMap.put("compass_random_token", this.f7779a.v());
        hashMap.put("model", Build.MODEL);
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("api_level", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("sdk_version", String.valueOf(AppLovinSdk.VERSION));
        CollectionUtils.putStringIfValid("ad_review_sdk_version", j.b(), hashMap);
        hashMap.put("md", (String) this.f7779a.a(v4.f10353t));
        b(hashMap);
        a(hashMap);
        if (map != null) {
            hashMap.putAll(c(c2Var, map));
        }
        return hashMap;
    }

    private URL a(c2 c2Var, Map map) {
        StringBuilder sb2 = new StringBuilder("https://ms.applovin.com/1.0/sdk/error");
        sb2.append("?");
        Iterator it = b(c2Var, map).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String encode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
            String encode2 = URLEncoder.encode((String) entry.getValue(), "UTF-8");
            sb2.append(encode);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(encode2);
            if (it.hasNext()) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
        return new URL(sb2.toString());
    }

    private JSONObject a(c2 c2Var, double d10, List list) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "ts_ms", System.currentTimeMillis());
        if (c2Var == c2.f7679y0 || c2Var == c2.f7677x0 || c2Var == c2.N0 || c2Var == c2.L0) {
            if (((Boolean) this.f7779a.a(v4.f10286k4)).booleanValue()) {
                JsonUtils.putStringIfValid(jSONObject, "wvvc", String.valueOf(k8.d()));
                JsonUtils.putStringIfValid(jSONObject, "wvv", k8.c());
                JsonUtils.putStringIfValid(jSONObject, "wvpn", k8.b());
            }
            JsonUtils.putStringIfValid(jSONObject, "oglv", this.f7779a.B().I());
        }
        JSONObject jSONObject2 = new JSONObject();
        Map L = this.f7779a.B().L();
        JsonUtils.putObject(jSONObject2, "platform", L.get("platform"));
        JsonUtils.putObject(jSONObject2, "os", L.get("os"));
        JsonUtils.putObject(jSONObject2, "api_level", String.valueOf(L.get("api_level")));
        JsonUtils.putObject(jSONObject2, "brand", L.get("brand"));
        JsonUtils.putObject(jSONObject2, "model", L.get("model"));
        JsonUtils.putObject(jSONObject2, "revision", L.get("revision"));
        JsonUtils.putObject(jSONObject2, "country_code", L.get("country_code"));
        JsonUtils.putObject(jSONObject2, "cc", this.f7779a.w().getCountryCode());
        JsonUtils.putObject(jSONObject2, "applovin_random_token", this.f7779a.i0());
        JsonUtils.putObject(jSONObject2, "ad_review_sdk_version", StringUtils.emptyIfNull(j.b()));
        Map E = this.f7779a.B().E();
        JsonUtils.putObject(jSONObject2, "sdk_version", E.get("sdk_version"));
        JsonUtils.putObject(jSONObject2, "plugin_version", this.f7779a.a(v4.I3));
        JsonUtils.putObject(jSONObject2, "app_version", E.get("app_version"));
        JsonUtils.putObject(jSONObject2, "package_name", E.get("package_name"));
        JsonUtils.putObject(jSONObject2, "first_install", Boolean.toString(Boolean.TRUE.equals((Boolean) E.get("first_install_v2"))));
        JsonUtils.putObject(jSONObject2, "md", this.f7779a.a(v4.f10353t));
        JsonUtils.putObject(jSONObject2, "mediation_provider", this.f7779a.V());
        SessionTracker n02 = this.f7779a.n0();
        JsonUtils.putObject(jSONObject2, "app_state", n02.getCurrentApplicationState().b());
        JsonUtils.putObject(jSONObject2, "app_state_duration_ms", Long.valueOf(n02.getCurrentApplicationStateDurationMillis()));
        JsonUtils.putObject(jSONObject2, "session_id", n02.getSessionId());
        JsonUtils.putObject(jSONObject2, "session_duration_ms", Long.valueOf(System.currentTimeMillis() - com.applovin.impl.sdk.k.n()));
        JsonUtils.putObject(jSONObject, "shared_fields", jSONObject2);
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            JSONObject jSONObject3 = new JSONObject();
            JsonUtils.putDouble(jSONObject3, "ts_ms", System.currentTimeMillis());
            JsonUtils.putString(jSONObject3, "type", c2Var.b());
            JsonUtils.putDouble(jSONObject3, "weight", d10);
            JsonUtils.putString(jSONObject3, AppLovinEventTypes.USER_COMPLETED_LEVEL, "DEBUG");
            a(map);
            JsonUtils.putAll(jSONObject3, map);
            jSONArray.put(jSONObject3);
        }
        JsonUtils.putObject(jSONObject, "events", jSONArray);
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.util.Map r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r1 = 0
            android.content.Context r2 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L18
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.Throwable -> L18
            android.content.Context r3 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L18
            java.lang.String r3 = r3.getPackageName()     // Catch: java.lang.Throwable -> L18
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: java.lang.Throwable -> L19
            goto L1a
        L18:
            r3 = r0
        L19:
            r2 = 0
        L1a:
            java.lang.String r4 = "package_name"
            r6.put(r4, r3)
            if (r2 == 0) goto L23
            java.lang.String r0 = r2.versionName
        L23:
            java.lang.String r3 = "app_version"
            r6.put(r3, r0)
            if (r2 == 0) goto L2c
            int r1 = r2.versionCode
        L2c:
            java.lang.String r0 = java.lang.String.valueOf(r1)
            java.lang.String r1 = "app_version_code"
            r6.put(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d2.b(java.util.Map):void");
    }

    private void a(Map map) {
        if (map == null) {
            return;
        }
        Object a10 = this.f7779a.I().a();
        if (a10 instanceof com.applovin.impl.sdk.ad.b) {
            map.put("fs_ad_network", "AppLovin");
            map.put("fs_ad_creative_id", Long.toString(((com.applovin.impl.sdk.ad.b) a10).getAdIdNumber()));
        } else if (a10 instanceof v2) {
            v2 v2Var = (v2) a10;
            map.put("fs_ad_network", v2Var.getNetworkName());
            map.put("fs_ad_creative_id", v2Var.getCreativeId());
        } else {
            map.put("fs_ad_network", "None");
            map.put("fs_ad_creative_id", "None");
        }
    }

    private boolean a(c2 c2Var, long j10) {
        Long l10 = (Long) this.f7782d.get(c2Var);
        return System.currentTimeMillis() - (l10 != null ? l10.longValue() : -1L) < j10;
    }
}
