package ab;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.nio.ByteBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes5.dex */
public class d {

    /* renamed from: o  reason: collision with root package name */
    private static final String f347o = "d";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, List<String>> f348a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f349b;

    /* renamed from: c  reason: collision with root package name */
    private int f350c;

    /* renamed from: d  reason: collision with root package name */
    private long f351d;

    /* renamed from: e  reason: collision with root package name */
    private long f352e;

    /* renamed from: f  reason: collision with root package name */
    private long f353f;

    /* renamed from: g  reason: collision with root package name */
    private String f354g;

    /* renamed from: h  reason: collision with root package name */
    private int f355h;

    /* renamed from: i  reason: collision with root package name */
    private int f356i;

    /* renamed from: j  reason: collision with root package name */
    private String f357j;

    /* renamed from: k  reason: collision with root package name */
    private long f358k;

    /* renamed from: l  reason: collision with root package name */
    private String f359l;

    /* renamed from: m  reason: collision with root package name */
    private Exception f360m;

    /* renamed from: n  reason: collision with root package name */
    private String f361n;

    public d(int i10, Map<String, List<String>> map, byte[] bArr, long j10) {
        this.f355h = 2;
        this.f356i = 9001;
        this.f357j = "";
        this.f358k = 0L;
        this.f359l = "";
        this.f350c = i10;
        this.f348a = map;
        this.f349b = ByteBuffer.wrap(bArr).array();
        this.f351d = j10;
        H();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
        if (r8.getInt("resultCode") == 0) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void E() {
        /*
            r9 = this;
            java.lang.String r0 = "errorList"
            java.lang.String r1 = "errorDesc"
            java.lang.String r2 = "errorCode"
            java.lang.String r3 = "resultCode"
            java.lang.String r4 = "isSuccess"
            boolean r5 = r9.B()
            r6 = 1
            if (r5 == 0) goto L1c
            java.lang.String r0 = ab.d.f347o
            java.lang.String r1 = "GRSSDK get httpcode{304} not any changed."
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            r9.l(r6)
            return
        L1c:
            boolean r5 = r9.D()
            r7 = 2
            if (r5 != 0) goto L2e
            java.lang.String r0 = ab.d.f347o
            java.lang.String r1 = "GRSSDK parse server body all failed."
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            r9.l(r7)
            return
        L2e:
            byte[] r5 = r9.f349b     // Catch: org.json.JSONException -> L46
            java.lang.String r5 = com.huawei.hms.framework.common.StringUtils.byte2Str(r5)     // Catch: org.json.JSONException -> L46
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: org.json.JSONException -> L46
            r8.<init>(r5)     // Catch: org.json.JSONException -> L46
            boolean r5 = r8.has(r4)     // Catch: org.json.JSONException -> L46
            if (r5 == 0) goto L49
            int r3 = r8.getInt(r4)     // Catch: org.json.JSONException -> L46
            if (r3 != r6) goto L57
            goto L55
        L46:
            r0 = move-exception
            goto Lb9
        L49:
            boolean r4 = r8.has(r3)     // Catch: org.json.JSONException -> L46
            if (r4 == 0) goto L59
            int r3 = r8.getInt(r3)     // Catch: org.json.JSONException -> L46
            if (r3 != 0) goto L57
        L55:
            r3 = r6
            goto L61
        L57:
            r3 = r7
            goto L61
        L59:
            java.lang.String r3 = ab.d.f347o     // Catch: org.json.JSONException -> L46
            java.lang.String r4 = "sth. wrong because server errorcode's key."
            com.huawei.hms.framework.common.Logger.e(r3, r4)     // Catch: org.json.JSONException -> L46
            r3 = -1
        L61:
            java.lang.String r4 = "services"
            if (r3 == r6) goto L6c
            boolean r5 = r8.has(r4)     // Catch: org.json.JSONException -> L46
            if (r5 == 0) goto L6c
            r3 = 0
        L6c:
            r9.l(r3)     // Catch: org.json.JSONException -> L46
            java.lang.String r5 = ""
            if (r3 == r6) goto L94
            if (r3 != 0) goto L76
            goto L94
        L76:
            boolean r0 = r8.has(r2)     // Catch: org.json.JSONException -> L46
            if (r0 == 0) goto L81
            int r0 = r8.getInt(r2)     // Catch: org.json.JSONException -> L46
            goto L83
        L81:
            r0 = 9001(0x2329, float:1.2613E-41)
        L83:
            r9.g(r0)     // Catch: org.json.JSONException -> L46
            boolean r0 = r8.has(r1)     // Catch: org.json.JSONException -> L46
            if (r0 == 0) goto L90
            java.lang.String r5 = r8.getString(r1)     // Catch: org.json.JSONException -> L46
        L90:
            r9.q(r5)     // Catch: org.json.JSONException -> L46
            goto Lcf
        L94:
            boolean r1 = r8.has(r4)     // Catch: org.json.JSONException -> L46
            if (r1 == 0) goto La3
            org.json.JSONObject r1 = r8.getJSONObject(r4)     // Catch: org.json.JSONException -> L46
            java.lang.String r1 = r1.toString()     // Catch: org.json.JSONException -> L46
            goto La4
        La3:
            r1 = r5
        La4:
            r9.u(r1)     // Catch: org.json.JSONException -> L46
            boolean r1 = r8.has(r0)     // Catch: org.json.JSONException -> L46
            if (r1 == 0) goto Lb5
            org.json.JSONObject r0 = r8.getJSONObject(r0)     // Catch: org.json.JSONException -> L46
            java.lang.String r5 = r0.toString()     // Catch: org.json.JSONException -> L46
        Lb5:
            r9.s(r5)     // Catch: org.json.JSONException -> L46
            goto Lcf
        Lb9:
            java.lang.String r1 = ab.d.f347o
            java.lang.String r0 = r0.getMessage()
            java.lang.String r0 = com.huawei.hms.framework.common.StringUtils.anonymizeMessage(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "GrsResponse GrsResponse(String result) JSONException: %s"
            com.huawei.hms.framework.common.Logger.w(r1, r2, r0)
            r9.l(r7)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.d.E():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0040 A[Catch: JSONException -> 0x0032, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0032, blocks: (B:13:0x0025, B:15:0x002b, B:21:0x003a, B:23:0x0040, B:20:0x0034), top: B:27:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void F() {
        /*
            r3 = this;
            boolean r0 = r3.D()
            if (r0 != 0) goto L13
            boolean r0 = r3.C()
            if (r0 != 0) goto L13
            boolean r0 = r3.B()
            if (r0 != 0) goto L13
            return
        L13:
            java.util.Map r0 = r3.G()
            int r1 = r0.size()
            if (r1 > 0) goto L25
            java.lang.String r0 = ab.d.f347o
            java.lang.String r1 = "parseHeader {headers.size() <= 0}"
            com.huawei.hms.framework.common.Logger.w(r0, r1)
            return
        L25:
            boolean r1 = r3.D()     // Catch: org.json.JSONException -> L32
            if (r1 != 0) goto L34
            boolean r1 = r3.B()     // Catch: org.json.JSONException -> L32
            if (r1 == 0) goto L3a
            goto L34
        L32:
            r0 = move-exception
            goto L44
        L34:
            r3.j(r0)     // Catch: org.json.JSONException -> L32
            r3.e(r0)     // Catch: org.json.JSONException -> L32
        L3a:
            boolean r1 = r3.C()     // Catch: org.json.JSONException -> L32
            if (r1 == 0) goto L57
            r3.o(r0)     // Catch: org.json.JSONException -> L32
            goto L57
        L44:
            java.lang.String r1 = ab.d.f347o
            java.lang.String r0 = r0.getMessage()
            java.lang.String r0 = com.huawei.hms.framework.common.StringUtils.anonymizeMessage(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "parseHeader catch JSONException: %s"
            com.huawei.hms.framework.common.Logger.w(r1, r2, r0)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.d.F():void");
    }

    private Map<String, String> G() {
        HashMap hashMap = new HashMap(16);
        Map<String, List<String>> map = this.f348a;
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, List<String>> entry : this.f348a.entrySet()) {
                String key = entry.getKey();
                for (String str : entry.getValue()) {
                    hashMap.put(key, str);
                }
            }
            return hashMap;
        }
        Logger.v(f347o, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}");
        return hashMap;
    }

    private void H() {
        F();
        E();
    }

    private void e(Map<String, String> map) {
        String str;
        String str2;
        if (map.containsKey(Command.HTTP_HEADER_ETAG)) {
            String str3 = map.get(Command.HTTP_HEADER_ETAG);
            if (!TextUtils.isEmpty(str3)) {
                Logger.i(f347o, "success get Etag from server");
                d(str3);
                return;
            }
            str = f347o;
            str2 = "The Response Heads Etag is Empty";
        } else {
            str = f347o;
            str2 = "Response Heads has not Etag";
        }
        Logger.i(str, str2);
    }

    private void g(int i10) {
        this.f356i = i10;
    }

    private void j(Map<String, String> map) {
        String str;
        Date parse;
        long time;
        if (map.containsKey("Cache-Control")) {
            String str2 = map.get("Cache-Control");
            if (!TextUtils.isEmpty(str2) && str2.contains("max-age=")) {
                try {
                    time = Long.parseLong(str2.substring(str2.indexOf("max-age=") + 8));
                } catch (NumberFormatException e10) {
                    e = e10;
                    time = 0;
                }
                try {
                    Logger.v(f347o, "Cache-Control value{%s}", Long.valueOf(time));
                } catch (NumberFormatException e11) {
                    e = e11;
                    Logger.w(f347o, "getExpireTime addHeadersToResult NumberFormatException", e);
                    long j10 = ((time > 0 || time > 2592000) ? 86400L : 86400L) * 1000;
                    Logger.i(f347o, "convert expireTime{%s}", Long.valueOf(j10));
                    n(String.valueOf(j10 + System.currentTimeMillis()));
                }
            }
            time = 0;
        } else {
            if (map.containsKey("Expires")) {
                String str3 = map.get("Expires");
                Logger.v(f347o, "expires is{%s}", str3);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss 'GMT'", Locale.ROOT);
                if (map.containsKey("Date")) {
                    str = map.get("Date");
                } else {
                    str = null;
                }
                try {
                    Date parse2 = simpleDateFormat.parse(str3);
                    if (TextUtils.isEmpty(str)) {
                        parse = new Date();
                    } else {
                        parse = simpleDateFormat.parse(str);
                    }
                    time = (parse2.getTime() - parse.getTime()) / 1000;
                } catch (ParseException e12) {
                    Logger.w(f347o, "getExpireTime ParseException.", e12);
                }
            } else {
                Logger.i(f347o, "response headers neither contains Cache-Control nor Expires.");
            }
            time = 0;
        }
        long j102 = ((time > 0 || time > 2592000) ? 86400L : 86400L) * 1000;
        Logger.i(f347o, "convert expireTime{%s}", Long.valueOf(j102));
        n(String.valueOf(j102 + System.currentTimeMillis()));
    }

    private void l(int i10) {
        this.f355h = i10;
    }

    private void m(long j10) {
        this.f358k = j10;
    }

    private void n(String str) {
        this.f357j = str;
    }

    private void o(Map<String, String> map) {
        long j10;
        if (map.containsKey(CommonGatewayClient.HEADER_RETRY_AFTER)) {
            String str = map.get(CommonGatewayClient.HEADER_RETRY_AFTER);
            if (!TextUtils.isEmpty(str)) {
                try {
                    j10 = Long.parseLong(str);
                } catch (NumberFormatException e10) {
                    Logger.w(f347o, "getRetryAfter addHeadersToResult NumberFormatException", e10);
                }
                long j11 = j10 * 1000;
                Logger.v(f347o, "convert retry-afterTime{%s}", Long.valueOf(j11));
                m(j11);
            }
        }
        j10 = 0;
        long j112 = j10 * 1000;
        Logger.v(f347o, "convert retry-afterTime{%s}", Long.valueOf(j112));
        m(j112);
    }

    private void u(String str) {
        this.f354g = str;
    }

    public String A() {
        return this.f361n;
    }

    public boolean B() {
        if (this.f350c == 304) {
            return true;
        }
        return false;
    }

    public boolean C() {
        if (this.f350c == 503) {
            return true;
        }
        return false;
    }

    public boolean D() {
        if (this.f350c == 200) {
            return true;
        }
        return false;
    }

    public String a() {
        return this.f357j;
    }

    public void c(long j10) {
        this.f353f = j10;
    }

    public void d(String str) {
        this.f359l = str;
    }

    public int f() {
        return this.f350c;
    }

    public void h(long j10) {
        this.f352e = j10;
    }

    public void i(String str) {
        this.f361n = str;
    }

    public int k() {
        return this.f356i;
    }

    public Exception p() {
        return this.f360m;
    }

    public String r() {
        return this.f359l;
    }

    public int t() {
        return this.f355h;
    }

    public long v() {
        return this.f353f;
    }

    public long w() {
        return this.f352e;
    }

    public long x() {
        return this.f351d;
    }

    public String y() {
        return this.f354g;
    }

    public long z() {
        return this.f358k;
    }

    public d(Exception exc, long j10) {
        this.f350c = 0;
        this.f355h = 2;
        this.f356i = 9001;
        this.f357j = "";
        this.f358k = 0L;
        this.f359l = "";
        this.f360m = exc;
        this.f351d = j10;
    }

    private void q(String str) {
    }

    private void s(String str) {
    }

    public void b(int i10) {
    }
}
