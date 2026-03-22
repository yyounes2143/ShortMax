package com.amazonaws.http;

import androidx.collection.SieveCacheKt;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
/* loaded from: classes2.dex */
public class UrlHttpClient implements HttpClient {

    /* renamed from: e  reason: collision with root package name */
    private static final Log f5017e = LogFactory.b(UrlHttpClient.class);

    /* renamed from: a  reason: collision with root package name */
    private final ClientConfiguration f5018a;

    /* renamed from: b  reason: collision with root package name */
    private final TLS12SocketFactory f5019b;

    /* renamed from: c  reason: collision with root package name */
    private SSLContext f5020c = null;

    /* renamed from: d  reason: collision with root package name */
    private TLS12SocketFactory f5021d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public final class CurlBuilder {

        /* renamed from: a  reason: collision with root package name */
        private final URL f5022a;

        /* renamed from: b  reason: collision with root package name */
        private String f5023b = null;

        /* renamed from: c  reason: collision with root package name */
        private final HashMap<String, String> f5024c = new HashMap<>();

        /* renamed from: d  reason: collision with root package name */
        private String f5025d = null;

        /* renamed from: e  reason: collision with root package name */
        private boolean f5026e = false;

        public CurlBuilder(URL url) {
            if (url != null) {
                this.f5022a = url;
                return;
            }
            throw new IllegalArgumentException("Must have a valid url");
        }

        public String a() {
            if (b()) {
                StringBuilder sb2 = new StringBuilder("curl");
                if (this.f5023b != null) {
                    sb2.append(" -X ");
                    sb2.append(this.f5023b);
                }
                for (Map.Entry<String, String> entry : this.f5024c.entrySet()) {
                    sb2.append(" -H \"");
                    sb2.append(entry.getKey());
                    sb2.append(":");
                    sb2.append(entry.getValue());
                    sb2.append("\"");
                }
                if (this.f5025d != null) {
                    sb2.append(" -d '");
                    sb2.append(this.f5025d);
                    sb2.append("'");
                }
                sb2.append(" ");
                sb2.append(this.f5022a.toString());
                return sb2.toString();
            }
            throw new IllegalStateException("Invalid state, cannot create curl command");
        }

        public boolean b() {
            return !this.f5026e;
        }

        public CurlBuilder c(String str) {
            this.f5025d = str;
            return this;
        }

        public CurlBuilder d(boolean z10) {
            this.f5026e = z10;
            return this;
        }

        public CurlBuilder e(Map<String, String> map) {
            this.f5024c.clear();
            this.f5024c.putAll(map);
            return this;
        }

        public CurlBuilder f(String str) {
            this.f5023b = str;
            return this;
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.f5018a = clientConfiguration;
        TLS12SocketFactory.a();
    }

    private void e(HttpsURLConnection httpsURLConnection) {
        if (this.f5020c == null) {
            TrustManager[] trustManagerArr = {this.f5018a.g()};
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                this.f5020c = sSLContext;
                sSLContext.init(null, trustManagerArr, null);
                TLS12SocketFactory.b(this.f5020c);
            } catch (GeneralSecurityException e10) {
                throw new RuntimeException(e10);
            }
        }
        httpsURLConnection.setSSLSocketFactory(this.f5020c.getSocketFactory());
    }

    private void g(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                if (byteBuffer != null) {
                    try {
                        byteBuffer.put(bArr, 0, read);
                    } catch (BufferOverflowException unused) {
                        curlBuilder.d(true);
                    }
                }
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    @Override // com.amazonaws.http.HttpClient
    public HttpResponse a(HttpRequest httpRequest) throws IOException {
        CurlBuilder curlBuilder;
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.e().toURL().openConnection();
        if (this.f5018a.j()) {
            curlBuilder = new CurlBuilder(httpRequest.e().toURL());
        } else {
            curlBuilder = null;
        }
        c(httpRequest, httpURLConnection);
        b(httpRequest, httpURLConnection, curlBuilder);
        h(httpRequest, httpURLConnection, curlBuilder);
        if (curlBuilder != null) {
            if (curlBuilder.b()) {
                f(curlBuilder.a());
            } else {
                f("Failed to create curl, content too long");
            }
        }
        return d(httpRequest, httpURLConnection);
    }

    HttpURLConnection b(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws ProtocolException {
        if (httpRequest.c() != null && !httpRequest.c().isEmpty()) {
            if (curlBuilder != null) {
                curlBuilder.e(httpRequest.c());
            }
            for (Map.Entry<String, String> entry : httpRequest.c().entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals("Host")) {
                    key.equals("Expect");
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String d10 = httpRequest.d();
        httpURLConnection.setRequestMethod(d10);
        if (curlBuilder != null) {
            curlBuilder.f(d10);
        }
        return httpURLConnection;
    }

    void c(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(this.f5018a.a());
        httpURLConnection.setReadTimeout(this.f5018a.f());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.f()) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.f5018a.g() != null) {
                e(httpsURLConnection);
            }
        }
    }

    HttpResponse d(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null && !"HEAD".equals(httpRequest.d())) {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
            }
        }
        HttpResponse.Builder b10 = HttpResponse.a().d(responseCode).e(responseMessage).b(errorStream);
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                b10.c(entry.getKey(), entry.getValue().get(0));
            }
        }
        return b10.a();
    }

    protected void f(String str) {
        f5017e.h(str);
    }

    void h(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws IOException {
        ByteBuffer byteBuffer;
        if (httpRequest.a() != null && httpRequest.b() >= 0) {
            httpURLConnection.setDoOutput(true);
            if (!httpRequest.f()) {
                httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.b());
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            if (curlBuilder != null) {
                if (httpRequest.b() < SieveCacheKt.NodeLinkMask) {
                    byteBuffer = ByteBuffer.allocate((int) httpRequest.b());
                    g(httpRequest.a(), outputStream, curlBuilder, byteBuffer);
                    if (curlBuilder != null && byteBuffer != null && byteBuffer.position() != 0) {
                        curlBuilder.c(new String(byteBuffer.array(), "UTF-8"));
                    }
                    outputStream.flush();
                    outputStream.close();
                }
                curlBuilder.d(true);
            }
            byteBuffer = null;
            g(httpRequest.a(), outputStream, curlBuilder, byteBuffer);
            if (curlBuilder != null) {
                curlBuilder.c(new String(byteBuffer.array(), "UTF-8"));
            }
            outputStream.flush();
            outputStream.close();
        }
    }

    @Override // com.amazonaws.http.HttpClient
    public void shutdown() {
    }
}
