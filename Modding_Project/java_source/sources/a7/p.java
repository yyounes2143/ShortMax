package a7;

import a7.h;
import a7.p;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import b7.s0;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
/* compiled from: DefaultHttpDataSource.java */
/* loaded from: classes4.dex */
public class p extends e implements h {

    /* renamed from: e  reason: collision with root package name */
    private final boolean f268e;

    /* renamed from: f  reason: collision with root package name */
    private final int f269f;

    /* renamed from: g  reason: collision with root package name */
    private final int f270g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f271h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final s f272i;

    /* renamed from: j  reason: collision with root package name */
    private final s f273j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f274k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private h7.l<String> f275l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private k f276m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private HttpURLConnection f277n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private InputStream f278o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f279p;

    /* renamed from: q  reason: collision with root package name */
    private int f280q;

    /* renamed from: r  reason: collision with root package name */
    private long f281r;

    /* renamed from: s  reason: collision with root package name */
    private long f282s;

    /* compiled from: DefaultHttpDataSource.java */
    /* loaded from: classes4.dex */
    public static final class b implements h.a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private y f284b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private h7.l<String> f285c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f286d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f289g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f290h;

        /* renamed from: a  reason: collision with root package name */
        private final s f283a = new s();

        /* renamed from: e  reason: collision with root package name */
        private int f287e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f288f = 8000;

        @Override // a7.h.a
        /* renamed from: a */
        public p createDataSource() {
            p pVar = new p(this.f286d, this.f287e, this.f288f, this.f289g, this.f283a, this.f285c, this.f290h);
            y yVar = this.f284b;
            if (yVar != null) {
                pVar.c(yVar);
            }
            return pVar;
        }

        public b b(@Nullable String str) {
            this.f286d = str;
            return this;
        }
    }

    /* compiled from: DefaultHttpDataSource.java */
    /* loaded from: classes4.dex */
    private static class c extends com.google.common.collect.i<String, List<String>> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<String>> f291a;

        public c(Map<String, List<String>> map) {
            this.f291a = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean n(Map.Entry entry) {
            if (entry.getKey() != null) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean q(String str) {
            if (str != null) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.i, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            if (obj != null && super.containsKey(obj)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.i, java.util.Map
        public boolean containsValue(@Nullable Object obj) {
            return super.e(obj);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.j
        /* renamed from: d */
        public Map<String, List<String>> b() {
            return this.f291a;
        }

        @Override // com.google.common.collect.i, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return com.google.common.collect.v.b(super.entrySet(), new h7.l() { // from class: a7.r
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean n10;
                    n10 = p.c.n((Map.Entry) obj);
                    return n10;
                }
            });
        }

        @Override // com.google.common.collect.i, java.util.Map
        public boolean equals(@Nullable Object obj) {
            if (obj != null && super.f(obj)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.i, java.util.Map
        public int hashCode() {
            return super.h();
        }

        @Override // com.google.common.collect.i, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            if (super.size() == 1 && super.containsKey(null)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.i, java.util.Map
        @Nullable
        /* renamed from: k */
        public List<String> get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // com.google.common.collect.i, java.util.Map
        public Set<String> keySet() {
            return com.google.common.collect.v.b(super.keySet(), new h7.l() { // from class: a7.q
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean q10;
                    q10 = p.c.q((String) obj);
                    return q10;
                }
            });
        }

        @Override // com.google.common.collect.i, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    private void h() {
        HttpURLConnection httpURLConnection = this.f277n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                b7.q.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f277n = null;
        }
    }

    private URL i(URL url, @Nullable String str, k kVar) throws HttpDataSource$HttpDataSourceException {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                    throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, kVar, 2001, 1);
                } else if (!this.f268e && !protocol.equals(url.getProtocol())) {
                    throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", kVar, 2001, 1);
                } else {
                    return url2;
                }
            } catch (MalformedURLException e10) {
                throw new HttpDataSource$HttpDataSourceException(e10, kVar, 2001, 1);
            }
        }
        throw new HttpDataSource$HttpDataSourceException("Null location redirect", kVar, 2001, 1);
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.HttpURLConnection k(a7.k r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a7.p.k(a7.k):java.net.HttpURLConnection");
    }

    private HttpURLConnection l(URL url, int i10, @Nullable byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map<String, String> map) throws IOException {
        String str;
        boolean z12;
        HttpURLConnection n10 = n(url);
        n10.setConnectTimeout(this.f269f);
        n10.setReadTimeout(this.f270g);
        HashMap hashMap = new HashMap();
        s sVar = this.f272i;
        if (sVar != null) {
            hashMap.putAll(sVar.a());
        }
        hashMap.putAll(this.f273j.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            n10.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a10 = t.a(j10, j11);
        if (a10 != null) {
            n10.setRequestProperty(Command.HTTP_HEADER_RANGE, a10);
        }
        String str2 = this.f271h;
        if (str2 != null) {
            n10.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, str2);
        }
        if (z10) {
            str = "gzip";
        } else {
            str = "identity";
        }
        n10.setRequestProperty("Accept-Encoding", str);
        n10.setInstanceFollowRedirects(z11);
        if (bArr != null) {
            z12 = true;
        } else {
            z12 = false;
        }
        n10.setDoOutput(z12);
        n10.setRequestMethod(k.c(i10));
        if (bArr != null) {
            n10.setFixedLengthStreamingMode(bArr.length);
            n10.connect();
            OutputStream outputStream = n10.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            n10.connect();
        }
        return n10;
    }

    private static void m(@Nullable HttpURLConnection httpURLConnection, long j10) {
        int i10;
        if (httpURLConnection != null && (i10 = s0.f2506a) >= 19 && i10 <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j10 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j10 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = ((Class) b7.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }

    private int o(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f281r;
        if (j10 != -1) {
            long j11 = j10 - this.f282s;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int read = ((InputStream) s0.j(this.f278o)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f282s += read;
        d(read);
        return read;
    }

    private void p(long j10, k kVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int read = ((InputStream) s0.j(this.f278o)).read(bArr, 0, (int) Math.min(j10, 4096));
            if (!Thread.currentThread().isInterrupted()) {
                if (read != -1) {
                    j10 -= read;
                    d(read);
                } else {
                    throw new HttpDataSource$HttpDataSourceException(kVar, 2008, 1);
                }
            } else {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), kVar, 2000, 1);
            }
        }
    }

    @Override // a7.h
    public long b(final k kVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArr;
        DataSourceException dataSourceException;
        this.f276m = kVar;
        long j10 = 0;
        this.f282s = 0L;
        this.f281r = 0L;
        f(kVar);
        try {
            HttpURLConnection k10 = k(kVar);
            this.f277n = k10;
            this.f280q = k10.getResponseCode();
            String responseMessage = k10.getResponseMessage();
            int i10 = this.f280q;
            long j11 = -1;
            if (i10 >= 200 && i10 <= 299) {
                final String contentType = k10.getContentType();
                h7.l<String> lVar = this.f275l;
                if (lVar != null && !lVar.apply(contentType)) {
                    h();
                    throw new HttpDataSource$HttpDataSourceException(contentType, kVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException

                        /* renamed from: d  reason: collision with root package name */
                        public final String f19074d;

                        {
                            super("Invalid content type: " + contentType, kVar, 2003, 1);
                            this.f19074d = contentType;
                        }
                    };
                }
                if (this.f280q == 200) {
                    long j12 = kVar.f204g;
                    if (j12 != 0) {
                        j10 = j12;
                    }
                }
                boolean j13 = j(k10);
                if (!j13) {
                    long j14 = kVar.f205h;
                    if (j14 != -1) {
                        this.f281r = j14;
                    } else {
                        long b10 = t.b(k10.getHeaderField("Content-Length"), k10.getHeaderField("Content-Range"));
                        if (b10 != -1) {
                            j11 = b10 - j10;
                        }
                        this.f281r = j11;
                    }
                } else {
                    this.f281r = kVar.f205h;
                }
                try {
                    this.f278o = k10.getInputStream();
                    if (j13) {
                        this.f278o = new GZIPInputStream(this.f278o);
                    }
                    this.f279p = true;
                    g(kVar);
                    try {
                        p(j10, kVar);
                        return this.f281r;
                    } catch (IOException e10) {
                        h();
                        if (e10 instanceof HttpDataSource$HttpDataSourceException) {
                            throw ((HttpDataSource$HttpDataSourceException) e10);
                        }
                        throw new HttpDataSource$HttpDataSourceException(e10, kVar, 2000, 1);
                    }
                } catch (IOException e11) {
                    h();
                    throw new HttpDataSource$HttpDataSourceException(e11, kVar, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = k10.getHeaderFields();
            if (this.f280q == 416) {
                if (kVar.f204g == t.c(k10.getHeaderField("Content-Range"))) {
                    this.f279p = true;
                    g(kVar);
                    long j15 = kVar.f205h;
                    if (j15 == -1) {
                        return 0L;
                    }
                    return j15;
                }
            }
            InputStream errorStream = k10.getErrorStream();
            try {
                if (errorStream != null) {
                    bArr = s0.M0(errorStream);
                } else {
                    bArr = s0.f2511f;
                }
            } catch (IOException unused) {
                bArr = s0.f2511f;
            }
            byte[] bArr2 = bArr;
            h();
            if (this.f280q == 416) {
                dataSourceException = new DataSourceException(2008);
            } else {
                dataSourceException = null;
            }
            throw new HttpDataSource$InvalidResponseCodeException(this.f280q, responseMessage, dataSourceException, headerFields, kVar, bArr2);
        } catch (IOException e12) {
            h();
            throw HttpDataSource$HttpDataSourceException.e(e12, kVar, 1);
        }
    }

    @Override // a7.h
    public void close() throws HttpDataSource$HttpDataSourceException {
        try {
            InputStream inputStream = this.f278o;
            if (inputStream != null) {
                long j10 = this.f281r;
                long j11 = -1;
                if (j10 != -1) {
                    j11 = j10 - this.f282s;
                }
                m(this.f277n, j11);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource$HttpDataSourceException(e10, (k) s0.j(this.f276m), 2000, 3);
                }
            }
        } finally {
            this.f278o = null;
            h();
            if (this.f279p) {
                this.f279p = false;
                e();
            }
        }
    }

    @Override // a7.h
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f277n;
        if (httpURLConnection == null) {
            return ImmutableMap.q();
        }
        return new c(httpURLConnection.getHeaderFields());
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f277n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @VisibleForTesting
    HttpURLConnection n(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource$HttpDataSourceException {
        try {
            return o(bArr, i10, i11);
        } catch (IOException e10) {
            throw HttpDataSource$HttpDataSourceException.e(e10, (k) s0.j(this.f276m), 2);
        }
    }

    private p(@Nullable String str, int i10, int i11, boolean z10, @Nullable s sVar, @Nullable h7.l<String> lVar, boolean z11) {
        super(true);
        this.f271h = str;
        this.f269f = i10;
        this.f270g = i11;
        this.f268e = z10;
        this.f272i = sVar;
        this.f275l = lVar;
        this.f273j = new s();
        this.f274k = z11;
    }
}
