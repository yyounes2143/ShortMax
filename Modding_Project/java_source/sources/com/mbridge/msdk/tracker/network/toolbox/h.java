package com.mbridge.msdk.tracker.network.toolbox;

import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.applog.log.LogUtils;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.tracker.network.t;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: HurlStack.java */
/* loaded from: classes6.dex */
public class h extends com.mbridge.msdk.tracker.network.toolbox.a {

    /* renamed from: a  reason: collision with root package name */
    private final SSLSocketFactory f30360a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HurlStack.java */
    /* loaded from: classes6.dex */
    public static class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private final HttpURLConnection f30361a;

        a(HttpURLConnection httpURLConnection) {
            super(h.b(httpURLConnection));
            this.f30361a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f30361a.disconnect();
        }
    }

    /* compiled from: HurlStack.java */
    /* loaded from: classes6.dex */
    public interface b {
    }

    public h() {
        this(null);
    }

    private static boolean a(int i10, int i11) {
        return (i10 == 4 || (100 <= i11 && i11 < 200) || i11 == 204 || i11 == 304) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    public h(b bVar) {
        this(bVar, null);
    }

    public h(b bVar, SSLSocketFactory sSLSocketFactory) {
        this.f30360a = sSLSocketFactory;
    }

    @Override // com.mbridge.msdk.tracker.network.toolbox.a
    public g a(t<?> tVar, Map<String, String> map) throws IOException {
        String a10 = tVar.g() == 0 ? d.a(tVar.t(), tVar) : tVar.t();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(tVar.f());
        HttpsURLConnection a11 = a(new URL(a10), tVar);
        try {
            for (String str : hashMap.keySet()) {
                a11.setRequestProperty(str, (String) hashMap.get(str));
            }
            b(a11, tVar);
            int responseCode = a11.getResponseCode();
            if (responseCode != -1) {
                if (!a(tVar.g(), responseCode)) {
                    g gVar = new g(responseCode, a(a11.getHeaderFields()));
                    a11.disconnect();
                    return gVar;
                }
                return new g(responseCode, a(a11.getHeaderFields()), a11.getContentLength(), a(tVar, a11));
            }
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        } catch (Throwable th2) {
            if (0 == 0) {
                a11.disconnect();
            }
            throw th2;
        }
    }

    void b(HttpURLConnection httpURLConnection, t<?> tVar) throws IOException {
        switch (tVar.g()) {
            case 0:
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                return;
            case 1:
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                a(httpURLConnection, tVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                a(httpURLConnection, tVar);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod(LogUtils.EVENT_TYPE_TRACE);
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                a(httpURLConnection, tVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    static List<com.mbridge.msdk.tracker.network.g> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new com.mbridge.msdk.tracker.network.g(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    protected InputStream a(t<?> tVar, HttpURLConnection httpURLConnection) {
        return new a(httpURLConnection);
    }

    protected HttpsURLConnection a(URL url) throws IOException {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
        httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(url));
        httpsURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpsURLConnection;
    }

    private HttpsURLConnection a(URL url, t<?> tVar) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpsURLConnection a10 = a(url);
        int q10 = tVar.q();
        a10.setConnectTimeout(q10);
        a10.setReadTimeout(q10);
        a10.setUseCaches(false);
        a10.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f30360a) != null) {
            a10.setSSLSocketFactory(sSLSocketFactory);
        }
        return a10;
    }

    private void a(HttpURLConnection httpURLConnection, t<?> tVar) throws IOException {
        byte[] b10 = tVar.b();
        if (b10 != null) {
            a(httpURLConnection, tVar, b10);
        }
    }

    private void a(HttpURLConnection httpURLConnection, t<?> tVar, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey(CommonGatewayClient.HEADER_CONTENT_TYPE)) {
            httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, tVar.c());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(a(tVar, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    protected OutputStream a(t<?> tVar, HttpURLConnection httpURLConnection, int i10) throws IOException {
        return httpURLConnection.getOutputStream();
    }
}
