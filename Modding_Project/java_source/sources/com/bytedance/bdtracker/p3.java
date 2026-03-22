package com.bytedance.bdtracker;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.bdtracker.l0;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class p3 {

    /* renamed from: d  reason: collision with root package name */
    public static JSONObject f12322d;

    /* renamed from: a  reason: collision with root package name */
    public String f12323a = "https://databyterangers.com.cn";

    /* renamed from: b  reason: collision with root package name */
    public final d f12324b;

    /* renamed from: c  reason: collision with root package name */
    public final p4 f12325c;

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ JSONObject f12326a;

        public a(JSONObject jSONObject) {
            this.f12326a = jSONObject;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            l0.b.b(this.f12326a, jSONObject);
            try {
                jSONObject.put("appId", p3.this.f12324b.f11913m);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes3.dex */
    public class b implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f12328a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ int f12329b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ byte[] f12330c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f12331d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ long f12332e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ HttpURLConnection f12333f;

        public b(String str, int i10, byte[] bArr, String str2, long j10, HttpURLConnection httpURLConnection) {
            this.f12328a = str;
            this.f12329b = i10;
            this.f12330c = bArr;
            this.f12331d = str2;
            this.f12332e = j10;
            this.f12333f = httpURLConnection;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", p3.this.f12324b.f11913m);
                jSONObject.put("nid", this.f12328a);
                jSONObject.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, this.f12329b);
                jSONObject.put("responseByte", this.f12330c);
                jSONObject.put("responseString", this.f12331d);
                jSONObject.put(CrashHianalyticsData.TIME, this.f12332e);
                jSONObject.put("header", p3.this.a(this.f12333f));
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public p3(d dVar) {
        this.f12324b = dVar;
        this.f12325c = new p4(dVar);
    }

    public static String a(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        HashMap hashMap = new HashMap(strArr.length);
        for (String str2 : strArr) {
            String queryParameter = parse.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                hashMap.put(str2, queryParameter);
            }
        }
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.clearQuery();
        for (String str3 : hashMap.keySet()) {
            buildUpon.appendQueryParameter(str3, (String) hashMap.get(str3));
        }
        return buildUpon.build().toString();
    }

    public static JSONObject b(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("magic_tag", "ss_app_log");
        jSONObject2.put("header", jSONObject);
        jSONObject2.put("_gen_time", System.currentTimeMillis());
        return jSONObject2;
    }

    public final HashMap<String, String> a() {
        Map<String, String> httpHeaders;
        HashMap hashMap = new HashMap(2);
        InitConfig initConfig = this.f12324b.getInitConfig();
        if (initConfig != null && (httpHeaders = initConfig.getHttpHeaders()) != null && !httpHeaders.isEmpty()) {
            hashMap.putAll(httpHeaders);
        }
        return p4.a(hashMap, this.f12324b);
    }

    public JSONObject b(String str, JSONObject jSONObject) {
        String str2;
        this.f12324b.D.debug(11, "Start to report oaid to uri:{} with request:{}...", str, jSONObject);
        try {
            str2 = new String(this.f12324b.getNetClient().execute((byte) 1, this.f12325c.a(str), jSONObject, a(), (byte) 0, true, 60000));
        } catch (Exception e10) {
            e = e10;
            str2 = null;
        }
        try {
            this.f12324b.D.debug(11, "reportOaid success: {}", str2);
        } catch (Exception e11) {
            e = e11;
            this.f12324b.D.error(11, "reportOaid error", e, new Object[0]);
            return a(str2);
        }
        return a(str2);
    }

    public static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, str);
        jSONObject.put("os", "Android");
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, String.valueOf(Build.VERSION.SDK_INT));
        jSONObject.put("sdk_version", "6.15.4");
        jSONObject.put("app_version", str2);
        return jSONObject;
    }

    public final JSONObject a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return null;
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : headerFields.keySet()) {
            if (l0.b.d(str)) {
                try {
                    jSONObject.put(str, httpURLConnection.getHeaderField(str));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONObject;
    }

    public final void a(String str, int i10, byte[] bArr, String str2, long j10, HttpURLConnection httpURLConnection) {
        LogUtils.sendJsonFetcher("do_request_end", new b(str, i10, bArr, str2, j10, httpURLConnection));
    }

    public static void a(StringBuilder sb2, String str, String str2) {
        if (sb2 == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        sb2.append(sb2.toString().indexOf(63) < 0 ? "?" : ContainerUtils.FIELD_DELIMITER);
        sb2.append(str);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(Uri.encode(str2));
    }

    public final void a(JSONObject jSONObject) {
        try {
            long optLong = jSONObject.optLong("server_time");
            if (optLong > 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("server_time", optLong);
                jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                f12322d = jSONObject2;
                LogUtils.sendJsonFetcher("server_time_sync", new a(jSONObject2));
            }
        } catch (Exception unused) {
        }
    }

    public final JSONObject a(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                a(jSONObject);
                return jSONObject;
            } catch (Throwable th2) {
                this.f12324b.D.error(11, "JSON handle failed", th2, new Object[0]);
                return null;
            }
        }
        return null;
    }

    public JSONObject a(String str, JSONObject jSONObject) {
        String str2;
        this.f12324b.D.debug(11, "Start to register to uri:{} with request:{}...", str, jSONObject);
        try {
            str2 = new String(this.f12324b.getNetClient().execute((byte) 1, this.f12325c.a(str), jSONObject, a(), (byte) 0, true, 60000));
            try {
                this.f12324b.D.debug(11, "request register success: {}", str2);
            } catch (Throwable th2) {
                th = th2;
                this.f12324b.D.error(11, "request register error", th, new Object[0]);
                return a(str2);
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = null;
        }
        return a(str2);
    }

    public final String a(JSONObject jSONObject, String str, Map<String, String> map, int i10) {
        GZIPInputStream gZIPInputStream;
        ByteArrayInputStream byteArrayInputStream;
        byte[] byteArray;
        String optString = jSONObject.optString("key");
        String optString2 = jSONObject.optString("iv");
        boolean z10 = true;
        byte b10 = (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) ? (byte) 0 : (byte) 1;
        byte[] execute = this.f12324b.getNetClient().execute((byte) 1, str, jSONObject, map, b10, true, i10);
        if (b10 != 0) {
            String str2 = null;
            str2 = null;
            ByteArrayInputStream byteArrayInputStream2 = null;
            if (execute != null) {
                byte[] a10 = p4.a(execute, optString, optString2);
                if (a10 != null) {
                    if (a10.length <= 0) {
                        byteArray = null;
                    } else {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byteArrayInputStream = new ByteArrayInputStream(a10);
                            try {
                                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                            } catch (IOException unused) {
                                gZIPInputStream = null;
                            } catch (Throwable th2) {
                                th = th2;
                                gZIPInputStream = null;
                            }
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = gZIPInputStream.read(bArr);
                                    if (read < 0) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, read);
                                }
                            } catch (IOException unused2) {
                            } catch (Throwable th3) {
                                th = th3;
                                byteArrayInputStream2 = byteArrayInputStream;
                                l0.b.a((Closeable) gZIPInputStream);
                                l0.b.a((Closeable) byteArrayInputStream2);
                                throw th;
                            }
                        } catch (IOException unused3) {
                            gZIPInputStream = null;
                            byteArrayInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            gZIPInputStream = null;
                        }
                        l0.b.a((Closeable) gZIPInputStream);
                        l0.b.a((Closeable) byteArrayInputStream);
                        byteArray = byteArrayOutputStream.toByteArray();
                    }
                    if (byteArray != null) {
                        str2 = new String(byteArray);
                    }
                } else {
                    str2 = new String(execute);
                }
                z10 = false;
            }
            return z10 ? new String(this.f12324b.getNetClient().execute((byte) 1, str, jSONObject, map, (byte) 0, true, 60000)) : str2;
        }
        return new String(execute);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(java.lang.String[] r22, org.json.JSONObject r23, com.bytedance.bdtracker.p1 r24) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.p3.a(java.lang.String[], org.json.JSONObject, com.bytedance.bdtracker.p1):int");
    }

    public boolean a(JSONObject jSONObject, String str) {
        this.f12324b.D.debug(11, "Start to send event:{} with cookie:{} to et...", jSONObject, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("header", this.f12324b.getHeader());
            if (jSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                jSONObject2.put("event_v3", jSONArray);
            }
        } catch (Throwable th2) {
            this.f12324b.D.error(11, "JSON handle failed", th2, new Object[0]);
        }
        HashMap<String, String> a10 = a();
        a10.put("Cookie", str);
        try {
            INetworkClient netClient = this.f12324b.getNetClient();
            String str2 = new String(netClient.execute((byte) 1, this.f12323a + "/simulator/mobile/log", jSONObject2, a10, (byte) 0, true, 60000));
            if (!new JSONObject(str2).getJSONObject("data").optBoolean("keep", false)) {
                this.f12324b.setRangersEventVerifyEnable(false, str);
            }
            this.f12324b.D.debug(11, "Send event to et with response:{}", str2);
            return true;
        } catch (Throwable th3) {
            this.f12324b.D.error(11, "Post to event verify failed", th3, new Object[0]);
            return false;
        }
    }
}
