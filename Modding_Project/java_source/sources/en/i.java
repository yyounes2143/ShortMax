package en;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.v;
import com.mbridge.msdk.foundation.download.Command;
import en.d;
import en.i;
import io.bidmachine.media3.datasource.DataSourceException;
import io.bidmachine.media3.datasource.HttpDataSource$HttpDataSourceException;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
/* compiled from: DefaultHttpDataSource.java */
/* loaded from: classes8.dex */
public class i extends en.a implements d {

    /* renamed from: e  reason: collision with root package name */
    private final boolean f51413e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f51414f;

    /* renamed from: g  reason: collision with root package name */
    private final int f51415g;

    /* renamed from: h  reason: collision with root package name */
    private final int f51416h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f51417i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final l f51418j;

    /* renamed from: k  reason: collision with root package name */
    private final l f51419k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final h7.l<String> f51420l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f51421m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private g f51422n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private HttpURLConnection f51423o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private InputStream f51424p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f51425q;

    /* renamed from: r  reason: collision with root package name */
    private int f51426r;

    /* renamed from: s  reason: collision with root package name */
    private long f51427s;

    /* renamed from: t  reason: collision with root package name */
    private long f51428t;

    /* compiled from: DefaultHttpDataSource.java */
    /* loaded from: classes8.dex */
    public static final class b implements d.a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private o f51430b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private h7.l<String> f51431c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f51432d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f51435g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f51436h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f51437i;

        /* renamed from: a  reason: collision with root package name */
        private final l f51429a = new l();

        /* renamed from: e  reason: collision with root package name */
        private int f51433e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f51434f = 8000;

        @Override // en.d.a
        /* renamed from: a */
        public i createDataSource() {
            i iVar = new i(this.f51432d, this.f51433e, this.f51434f, this.f51435g, this.f51436h, this.f51429a, this.f51431c, this.f51437i);
            o oVar = this.f51430b;
            if (oVar != null) {
                iVar.c(oVar);
            }
            return iVar;
        }

        public b b(@Nullable String str) {
            this.f51432d = str;
            return this;
        }
    }

    /* compiled from: DefaultHttpDataSource.java */
    /* loaded from: classes8.dex */
    private static class c extends com.google.common.collect.i<String, List<String>> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<String>> f51438a;

        public c(Map<String, List<String>> map) {
            this.f51438a = map;
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
            return this.f51438a;
        }

        @Override // com.google.common.collect.i, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return v.b(super.entrySet(), new h7.l() { // from class: en.j
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean n10;
                    n10 = i.c.n((Map.Entry) obj);
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
            return v.b(super.keySet(), new h7.l() { // from class: en.k
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean q10;
                    q10 = i.c.q((String) obj);
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
        HttpURLConnection httpURLConnection = this.f51423o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                r.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
        }
    }

    private URL i(URL url, @Nullable String str, g gVar) throws HttpDataSource$HttpDataSourceException {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                    throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, gVar, 2001, 1);
                } else if (!this.f51413e && !protocol.equals(url.getProtocol())) {
                    if (this.f51414f) {
                        try {
                            return new URL(url2.toString().replaceFirst(protocol, url.getProtocol()));
                        } catch (MalformedURLException e10) {
                            throw new HttpDataSource$HttpDataSourceException(e10, gVar, 2001, 1);
                        }
                    }
                    throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", gVar, 2001, 1);
                } else {
                    return url2;
                }
            } catch (MalformedURLException e11) {
                throw new HttpDataSource$HttpDataSourceException(e11, gVar, 2001, 1);
            }
        }
        throw new HttpDataSource$HttpDataSourceException("Null location redirect", gVar, 2001, 1);
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    private HttpURLConnection k(g gVar) throws IOException {
        HttpURLConnection l10;
        URL url = new URL(gVar.f51378a.toString());
        int i10 = gVar.f51380c;
        byte[] bArr = gVar.f51381d;
        long j10 = gVar.f51384g;
        long j11 = gVar.f51385h;
        boolean d10 = gVar.d(1);
        if (!this.f51413e && !this.f51414f && !this.f51421m) {
            return l(url, i10, bArr, j10, j11, d10, true, gVar.f51382e);
        }
        int i11 = 0;
        URL url2 = url;
        int i12 = i10;
        byte[] bArr2 = bArr;
        while (true) {
            int i13 = i11 + 1;
            if (i11 <= 20) {
                long j12 = j10;
                long j13 = j10;
                int i14 = i12;
                URL url3 = url2;
                long j14 = j11;
                l10 = l(url2, i12, bArr2, j12, j11, d10, false, gVar.f51382e);
                int responseCode = l10.getResponseCode();
                String headerField = l10.getHeaderField("Location");
                if ((i14 != 1 && i14 != 3) || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308)) {
                    if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    }
                    l10.disconnect();
                    if (this.f51421m && responseCode == 302) {
                        i12 = i14;
                    } else {
                        bArr2 = null;
                        i12 = 1;
                    }
                    url2 = i(url3, headerField, gVar);
                } else {
                    l10.disconnect();
                    url2 = i(url3, headerField, gVar);
                    i12 = i14;
                }
                i11 = i13;
                j10 = j13;
                j11 = j14;
            } else {
                throw new HttpDataSource$HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i13), gVar, 2001, 1);
            }
        }
        return l10;
    }

    private HttpURLConnection l(URL url, int i10, @Nullable byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map<String, String> map) throws IOException {
        String str;
        boolean z12;
        HttpURLConnection m10 = m(url);
        m10.setConnectTimeout(this.f51415g);
        m10.setReadTimeout(this.f51416h);
        HashMap hashMap = new HashMap();
        l lVar = this.f51418j;
        if (lVar != null) {
            hashMap.putAll(lVar.a());
        }
        hashMap.putAll(this.f51419k.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            m10.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a10 = m.a(j10, j11);
        if (a10 != null) {
            m10.setRequestProperty(Command.HTTP_HEADER_RANGE, a10);
        }
        String str2 = this.f51417i;
        if (str2 != null) {
            m10.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, str2);
        }
        if (z10) {
            str = "gzip";
        } else {
            str = "identity";
        }
        m10.setRequestProperty("Accept-Encoding", str);
        m10.setInstanceFollowRedirects(z11);
        if (bArr != null) {
            z12 = true;
        } else {
            z12 = false;
        }
        m10.setDoOutput(z12);
        m10.setRequestMethod(g.c(i10));
        if (bArr != null) {
            m10.setFixedLengthStreamingMode(bArr.length);
            m10.connect();
            OutputStream outputStream = m10.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            m10.connect();
        }
        return m10;
    }

    private int n(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f51427s;
        if (j10 != -1) {
            long j11 = j10 - this.f51428t;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int read = ((InputStream) m0.i(this.f51424p)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f51428t += read;
        d(read);
        return read;
    }

    private void o(long j10, g gVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int read = ((InputStream) m0.i(this.f51424p)).read(bArr, 0, (int) Math.min(j10, 4096));
            if (!Thread.currentThread().isInterrupted()) {
                if (read != -1) {
                    j10 -= read;
                    d(read);
                } else {
                    throw new HttpDataSource$HttpDataSourceException(gVar, 2008, 1);
                }
            } else {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), gVar, 2000, 1);
            }
        }
    }

    @Override // en.d
    public long b(final g gVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArr;
        DataSourceException dataSourceException;
        this.f51422n = gVar;
        long j10 = 0;
        this.f51428t = 0L;
        this.f51427s = 0L;
        f(gVar);
        try {
            HttpURLConnection k10 = k(gVar);
            this.f51423o = k10;
            this.f51426r = k10.getResponseCode();
            String responseMessage = k10.getResponseMessage();
            int i10 = this.f51426r;
            long j11 = -1;
            if (i10 >= 200 && i10 <= 299) {
                final String contentType = k10.getContentType();
                h7.l<String> lVar = this.f51420l;
                if (lVar != null && !lVar.apply(contentType)) {
                    h();
                    throw new HttpDataSource$HttpDataSourceException(contentType, gVar) { // from class: io.bidmachine.media3.datasource.HttpDataSource$InvalidContentTypeException

                        /* renamed from: d  reason: collision with root package name */
                        public final String f55323d;

                        {
                            super("Invalid content type: " + contentType, gVar, 2003, 1);
                            this.f55323d = contentType;
                        }
                    };
                }
                if (this.f51426r == 200) {
                    long j12 = gVar.f51384g;
                    if (j12 != 0) {
                        j10 = j12;
                    }
                }
                boolean j13 = j(k10);
                if (!j13) {
                    long j14 = gVar.f51385h;
                    if (j14 != -1) {
                        this.f51427s = j14;
                    } else {
                        long b10 = m.b(k10.getHeaderField("Content-Length"), k10.getHeaderField("Content-Range"));
                        if (b10 != -1) {
                            j11 = b10 - j10;
                        }
                        this.f51427s = j11;
                    }
                } else {
                    this.f51427s = gVar.f51385h;
                }
                try {
                    this.f51424p = k10.getInputStream();
                    if (j13) {
                        this.f51424p = new GZIPInputStream(this.f51424p);
                    }
                    this.f51425q = true;
                    g(gVar);
                    try {
                        o(j10, gVar);
                        return this.f51427s;
                    } catch (IOException e10) {
                        h();
                        if (e10 instanceof HttpDataSource$HttpDataSourceException) {
                            throw ((HttpDataSource$HttpDataSourceException) e10);
                        }
                        throw new HttpDataSource$HttpDataSourceException(e10, gVar, 2000, 1);
                    }
                } catch (IOException e11) {
                    h();
                    throw new HttpDataSource$HttpDataSourceException(e11, gVar, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = k10.getHeaderFields();
            if (this.f51426r == 416) {
                if (gVar.f51384g == m.c(k10.getHeaderField("Content-Range"))) {
                    this.f51425q = true;
                    g(gVar);
                    long j15 = gVar.f51385h;
                    if (j15 == -1) {
                        return 0L;
                    }
                    return j15;
                }
            }
            InputStream errorStream = k10.getErrorStream();
            try {
                if (errorStream != null) {
                    bArr = i7.a.b(errorStream);
                } else {
                    bArr = m0.f3619f;
                }
            } catch (IOException unused) {
                bArr = m0.f3619f;
            }
            byte[] bArr2 = bArr;
            h();
            if (this.f51426r == 416) {
                dataSourceException = new DataSourceException(2008);
            } else {
                dataSourceException = null;
            }
            throw new HttpDataSource$InvalidResponseCodeException(this.f51426r, responseMessage, dataSourceException, headerFields, gVar, bArr2);
        } catch (IOException e12) {
            h();
            throw HttpDataSource$HttpDataSourceException.e(e12, gVar, 1);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.net.HttpURLConnection, en.g, java.io.InputStream] */
    @Override // en.d
    public void close() throws HttpDataSource$HttpDataSourceException {
        try {
            InputStream inputStream = this.f51424p;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource$HttpDataSourceException(e10, (g) m0.i(this.f51422n), 2000, 3);
                }
            }
        } finally {
            this.f51424p = null;
            h();
            if (this.f51425q) {
                this.f51425q = false;
                e();
            }
            this.f51423o = null;
            this.f51422n = null;
        }
    }

    @Override // en.d
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f51423o;
        if (httpURLConnection == null) {
            return ImmutableMap.q();
        }
        return new c(httpURLConnection.getHeaderFields());
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f51423o;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        g gVar = this.f51422n;
        if (gVar != null) {
            return gVar.f51378a;
        }
        return null;
    }

    @VisibleForTesting
    HttpURLConnection m(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource$HttpDataSourceException {
        try {
            return n(bArr, i10, i11);
        } catch (IOException e10) {
            throw HttpDataSource$HttpDataSourceException.e(e10, (g) m0.i(this.f51422n), 2);
        }
    }

    private i(@Nullable String str, int i10, int i11, boolean z10, boolean z11, @Nullable l lVar, @Nullable h7.l<String> lVar2, boolean z12) {
        super(true);
        this.f51417i = str;
        this.f51415g = i10;
        this.f51416h = i11;
        this.f51413e = z10;
        this.f51414f = z11;
        if (z10 && z11) {
            throw new IllegalArgumentException("crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true");
        }
        this.f51418j = lVar;
        this.f51420l = lVar2;
        this.f51419k = new l();
        this.f51421m = z12;
    }
}
