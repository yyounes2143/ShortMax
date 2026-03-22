package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.applog.log.LogUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f36788a;

    /* renamed from: c  reason: collision with root package name */
    private Context f36790c;

    /* renamed from: d  reason: collision with root package name */
    private int f36791d;

    /* renamed from: e  reason: collision with root package name */
    private int f36792e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f36793f;

    /* renamed from: b  reason: collision with root package name */
    private HttpURLConnection f36789b = null;

    /* renamed from: g  reason: collision with root package name */
    private int f36794g = -1;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f36795h = null;

    /* renamed from: i  reason: collision with root package name */
    private int f36796i = 10000;

    /* renamed from: j  reason: collision with root package name */
    private int f36797j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f36798k = 2;

    /* renamed from: l  reason: collision with root package name */
    private boolean f36799l = true;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f36800m = new a();

    /* loaded from: classes6.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!m0.this.c() && m0.this.f36797j < m0.this.f36798k) {
                m0.c(m0.this);
                r0.a(this);
            }
        }
    }

    public m0(Context context) {
        this.f36790c = context;
    }

    static /* synthetic */ int c(m0 m0Var) {
        int i10 = m0Var.f36797j;
        m0Var.f36797j = i10 + 1;
        return i10;
    }

    abstract String a();

    abstract void a(int i10, byte[] bArr);

    public static synchronized void a(String str) {
        synchronized (m0.class) {
            if (!TextUtils.isEmpty(str) && !str.equals(f36788a)) {
                f36788a = str;
            }
        }
    }

    private void b() {
        Object obj;
        if (this.f36789b == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f36788a)) {
                jSONObject.put("ipv6", f36788a);
            }
            if (!TextUtils.isEmpty(com.pgl.ssdk.ces.b.f())) {
                jSONObject.put("gaid", com.pgl.ssdk.ces.b.f());
            }
            jSONObject.put(TtmlNode.TAG_REGION, n0.a());
            Pair<Integer, String> a10 = q0.a(jSONObject.toString());
            if (a10 == null || (obj = a10.first) == null || a10.second == null) {
                return;
            }
            this.f36789b.addRequestProperty("cypher", String.valueOf(obj));
            this.f36789b.addRequestProperty("transfer-param", (String) a10.second);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00af, code lost:
        if (r0 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
        if (r0 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b9, code lost:
        a(r5.f36794g, r5.f36795h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
        r0 = r5.f36789b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
        if (r0 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
        r0.disconnect();
        r5.f36789b = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c9, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c() {
        /*
            r5 = this;
            java.lang.String r0 = "https://"
            r1 = 0
            r2 = 0
            android.content.Context r3 = r5.f36790c     // Catch: java.lang.Throwable -> Lca
            java.lang.String r3 = com.pgl.ssdk.n0.a(r3)     // Catch: java.lang.Throwable -> Lca
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> Lca
            if (r4 == 0) goto L1f
            android.content.Context r0 = r5.f36790c     // Catch: java.lang.Throwable -> Lca
            com.pgl.ssdk.n0.b(r0)     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = r5.f36789b
            if (r0 == 0) goto L1e
            r0.disconnect()
            r5.f36789b = r2
        L1e:
            return r1
        L1f:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lca
            r4.<init>()     // Catch: java.lang.Throwable -> Lca
            r4.append(r3)     // Catch: java.lang.Throwable -> Lca
            java.lang.String r3 = r5.a()     // Catch: java.lang.Throwable -> Lca
            r4.append(r3)     // Catch: java.lang.Throwable -> Lca
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> Lca
            boolean r4 = r3.startsWith(r0)     // Catch: java.lang.Throwable -> Lca
            if (r4 != 0) goto L44
            java.lang.String r4 = "http://"
            boolean r4 = r3.startsWith(r4)     // Catch: java.lang.Throwable -> Lca
            if (r4 != 0) goto L44
            java.lang.String r3 = r0.concat(r3)     // Catch: java.lang.Throwable -> Lca
        L44:
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> Lca
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Lca
            boolean r3 = r5.f36799l     // Catch: java.lang.Throwable -> Lca
            if (r3 == 0) goto L58
            java.net.Proxy r3 = java.net.Proxy.NO_PROXY     // Catch: java.lang.Throwable -> Lca
            java.net.URLConnection r0 = r0.openConnection(r3)     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> Lca
            r5.f36789b = r0     // Catch: java.lang.Throwable -> Lca
            goto L60
        L58:
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> Lca
            r5.f36789b = r0     // Catch: java.lang.Throwable -> Lca
        L60:
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lca
            int r3 = r5.f36796i     // Catch: java.lang.Throwable -> Lca
            r0.setConnectTimeout(r3)     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lca
            int r3 = r5.f36796i     // Catch: java.lang.Throwable -> Lca
            r0.setReadTimeout(r3)     // Catch: java.lang.Throwable -> Lca
            int r0 = r5.f36791d     // Catch: java.lang.Throwable -> Lca
            r5.a(r0)     // Catch: java.lang.Throwable -> Lca
            int r0 = r5.f36792e     // Catch: java.lang.Throwable -> Lca
            r5.b(r0)     // Catch: java.lang.Throwable -> Lca
            byte[] r0 = r5.f36793f     // Catch: java.lang.Throwable -> Lca
            r3 = 1
            if (r0 == 0) goto L96
            int r0 = r0.length     // Catch: java.lang.Throwable -> Lca
            if (r0 <= 0) goto L96
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lca
            r0.setDoOutput(r3)     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lca
            java.io.OutputStream r0 = r0.getOutputStream()     // Catch: java.lang.Throwable -> Lca
            byte[] r4 = r5.f36793f     // Catch: java.lang.Throwable -> Lca
            r0.write(r4)     // Catch: java.lang.Throwable -> Lca
            r0.flush()     // Catch: java.lang.Throwable -> Lca
            r0.close()     // Catch: java.lang.Throwable -> Lca
        L96:
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lca
            r0.connect()     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lb2
            int r0 = r0.getResponseCode()     // Catch: java.lang.Throwable -> Lb2
            r5.f36794g = r0     // Catch: java.lang.Throwable -> Lb2
            java.net.HttpURLConnection r0 = r5.f36789b     // Catch: java.lang.Throwable -> Lb2
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Throwable -> Lb2
            byte[] r4 = r5.a(r0)     // Catch: java.lang.Throwable -> Lb3
            r5.f36795h = r4     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto Lb9
            goto Lb6
        Lb2:
            r0 = r2
        Lb3:
            if (r0 != 0) goto Lb6
            goto Lb9
        Lb6:
            r0.close()     // Catch: java.lang.Throwable -> Lca
        Lb9:
            int r0 = r5.f36794g     // Catch: java.lang.Throwable -> Lca
            byte[] r4 = r5.f36795h     // Catch: java.lang.Throwable -> Lca
            r5.a(r0, r4)     // Catch: java.lang.Throwable -> Lca
            java.net.HttpURLConnection r0 = r5.f36789b
            if (r0 == 0) goto Lc9
            r0.disconnect()
            r5.f36789b = r2
        Lc9:
            return r3
        Lca:
            java.net.HttpURLConnection r0 = r5.f36789b
            if (r0 == 0) goto Ld3
            r0.disconnect()
            r5.f36789b = r2
        Ld3:
            android.content.Context r0 = r5.f36790c
            com.pgl.ssdk.n0.b(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.m0.c():boolean");
    }

    private void a(int i10) throws ProtocolException {
        this.f36789b.setRequestMethod(i10 != 1 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? i10 != 6 ? ShareTarget.METHOD_GET : LogUtils.EVENT_TYPE_TRACE : "HEAD" : "DELETE" : "PUT" : ShareTarget.METHOD_POST);
    }

    private byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public void a(int i10, int i11, byte[] bArr) {
        b(i10, i11, bArr);
        r0.a(this.f36800m);
    }

    private void b(int i10) {
        String str = i10 != 1 ? i10 != 2 ? "" : "application/octet-stream" : "application/json; charset=utf-8";
        if (!str.isEmpty()) {
            this.f36789b.addRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, str);
        }
        String b10 = n0.b();
        if (b10 != null) {
            this.f36789b.addRequestProperty("x-pangle-target-idc", b10);
        }
        b();
        try {
            String language = Locale.getDefault().getLanguage();
            if (language.equalsIgnoreCase("zh")) {
                HttpURLConnection httpURLConnection = this.f36789b;
                httpURLConnection.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9");
                return;
            }
            HttpURLConnection httpURLConnection2 = this.f36789b;
            httpURLConnection2.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9,en-US;q=0.6,en;q=0.4");
        } catch (Throwable unused) {
        }
    }

    private void b(int i10, int i11, byte[] bArr) {
        this.f36791d = i10;
        this.f36792e = i11;
        this.f36793f = bArr;
    }
}
