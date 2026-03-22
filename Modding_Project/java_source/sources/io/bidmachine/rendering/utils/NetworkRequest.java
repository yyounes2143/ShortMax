package io.bidmachine.rendering.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.foundation.download.Command;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import rq.t;
import sq.m;
import yq.r;
/* loaded from: classes8.dex */
public class NetworkRequest<ResponseType> {
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private static final cr.c f58565k = new dr.a();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58566a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Method f58567b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f58568c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f58569d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Integer f58570e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Integer f58571f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final f<ResponseType> f58572g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final e<ResponseType> f58573h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private cr.c f58574i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private tq.b f58575j;

    /* loaded from: classes8.dex */
    public enum Method {
        Get(ShareTarget.METHOD_GET),
        Post(ShareTarget.METHOD_POST);
        

        /* renamed from: a  reason: collision with root package name */
        private final String f58577a;

        Method(@NonNull String str) {
            this.f58577a = str;
        }

        public String getNetworkName() {
            return this.f58577a;
        }
    }

    /* loaded from: classes8.dex */
    public static class a<ResponseType> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f58578a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Method f58579b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final Map<String, String> f58580c = new HashMap();
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final Map<String, String> f58581d = new HashMap();
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Integer f58582e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Integer f58583f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private f<ResponseType> f58584g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private e<ResponseType> f58585h;

        public a(@NonNull String str, @NonNull Method method) {
            this.f58578a = str;
            this.f58579b = method;
        }

        public a<ResponseType> a(@NonNull String str, @NonNull String str2) {
            this.f58580c.put(str, str2);
            return this;
        }

        @NonNull
        public NetworkRequest<ResponseType> b() {
            return new NetworkRequest<>(this.f58578a, this.f58579b, this.f58580c, this.f58581d, this.f58582e, this.f58583f, null, null, this.f58584g, this.f58585h);
        }

        @NonNull
        public NetworkRequest<ResponseType> c() {
            NetworkRequest<ResponseType> b10 = b();
            b10.i();
            return b10;
        }

        public a<ResponseType> d(@Nullable e<ResponseType> eVar) {
            this.f58585h = eVar;
            return this;
        }

        public a<ResponseType> e(@Nullable f<ResponseType> fVar) {
            this.f58584g = fVar;
            return this;
        }

        public a<ResponseType> f(@Nullable String str) {
            if (!TextUtils.isEmpty(str)) {
                a(Command.HTTP_HEADER_USER_AGENT, str);
            }
            return this;
        }
    }

    /* loaded from: classes8.dex */
    public static abstract class b<T> implements f<T>, g<byte[], T> {
        @Override // io.bidmachine.rendering.utils.NetworkRequest.f
        @Nullable
        public T a(@NonNull URLConnection uRLConnection) {
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream;
            InputStream inputStream2 = null;
            try {
                inputStream = uRLConnection.getInputStream();
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th2) {
                    inputStream2 = inputStream;
                    th = th2;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
            try {
                m.e(inputStream, byteArrayOutputStream);
                T b10 = b(byteArrayOutputStream.toByteArray());
                r.g(byteArrayOutputStream);
                r.b(byteArrayOutputStream);
                r.b(inputStream);
                return b10;
            } catch (Throwable th4) {
                inputStream2 = inputStream;
                th = th4;
                r.g(byteArrayOutputStream);
                r.b(byteArrayOutputStream);
                r.b(inputStream2);
                throw th;
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface c {
    }

    /* loaded from: classes8.dex */
    public static abstract class d<T> implements f<T>, g<File, T> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f58586a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final File f58587b;

        public d(@NonNull Context context, @NonNull File file) {
            this.f58586a = context.getApplicationContext();
            this.f58587b = file;
        }

        @Override // io.bidmachine.rendering.utils.NetworkRequest.f
        @Nullable
        public T a(@NonNull URLConnection uRLConnection) {
            FileOutputStream fileOutputStream;
            File e10 = ar.a.e(this.f58586a);
            if (e10 != null) {
                File b10 = ar.a.b(e10);
                long contentLength = uRLConnection.getContentLength();
                InputStream inputStream = null;
                try {
                    InputStream inputStream2 = uRLConnection.getInputStream();
                    try {
                        fileOutputStream = new FileOutputStream(b10);
                        try {
                            long e11 = m.e(inputStream2, fileOutputStream);
                            r.g(fileOutputStream);
                            r.b(fileOutputStream);
                            r.b(inputStream2);
                            if (contentLength == e11) {
                                if (!ar.a.g(b10, this.f58587b)) {
                                    ar.a.d(b10);
                                    if (!ar.a.f(this.f58587b)) {
                                        throw new IllegalStateException("Can't rename temp file");
                                    }
                                }
                                return b(this.f58587b);
                            }
                            ar.a.d(b10);
                            throw new IllegalStateException("The downloaded file size does not match the stated size");
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = inputStream2;
                            r.g(fileOutputStream);
                            r.b(fileOutputStream);
                            r.b(inputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } else {
                throw new IllegalStateException("Can't get external dir");
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface e<ResponseType> {
        void a(@NonNull t tVar);

        void onSuccess(@Nullable ResponseType responsetype);
    }

    /* loaded from: classes8.dex */
    public interface f<ResponseType> {
        @Nullable
        ResponseType a(@NonNull URLConnection uRLConnection);
    }

    /* loaded from: classes8.dex */
    public interface g<From, To> {
        @Nullable
        To b(@NonNull From from);
    }

    /* loaded from: classes8.dex */
    public static class h extends b<String> {
        @Override // io.bidmachine.rendering.utils.NetworkRequest.g
        @Nullable
        /* renamed from: c */
        public String b(@NonNull byte[] bArr) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
    }

    /* loaded from: classes8.dex */
    public interface i {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class k extends tq.b {
        private k() {
        }

        @Override // tq.b
        public void d() {
            NetworkRequest.this.g();
        }
    }

    public NetworkRequest(@NonNull String str, @NonNull Method method, @NonNull Map<String, String> map, @NonNull Map<String, String> map2, @Nullable Integer num, @Nullable Integer num2, @Nullable i iVar, @Nullable c cVar, @Nullable f<ResponseType> fVar, @Nullable e<ResponseType> eVar) {
        this.f58566a = str;
        this.f58567b = method;
        this.f58570e = num;
        this.f58571f = num2;
        this.f58572g = fVar;
        this.f58568c = map;
        this.f58569d = map2;
        this.f58573h = eVar;
    }

    @NonNull
    private String a(@NonNull String str, @NonNull Map<String, String> map) {
        if (map.isEmpty()) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }

    @NonNull
    private HttpURLConnection b(@NonNull String str) {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod(this.f58567b.getNetworkName());
            for (Map.Entry<String, String> entry : this.f58568c.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            Integer num = this.f58570e;
            if (num != null && num.intValue() >= 0) {
                httpURLConnection.setConnectTimeout(this.f58570e.intValue());
            }
            Integer num2 = this.f58571f;
            if (num2 != null && num2.intValue() >= 0) {
                httpURLConnection.setReadTimeout(this.f58571f.intValue());
            }
            switch (httpURLConnection.getResponseCode()) {
                case 301:
                case 302:
                case 303:
                case 305:
                case 307:
                case 308:
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField) && r.p(headerField)) {
                        br.a.a(httpURLConnection);
                        return b(headerField);
                    }
                    break;
            }
            return httpURLConnection;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            br.a.a(httpURLConnection2);
            throw th;
        }
    }

    private void c() {
        this.f58574i = null;
        this.f58575j = null;
    }

    private void e(@Nullable ResponseType responsetype) {
        e<ResponseType> eVar = this.f58573h;
        if (eVar != null) {
            eVar.onSuccess(responsetype);
        }
    }

    private void f(@NonNull t tVar) {
        e<ResponseType> eVar = this.f58573h;
        if (eVar != null) {
            eVar.a(tVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        HttpURLConnection httpURLConnection;
        Throwable th2;
        try {
            httpURLConnection = b(a(this.f58566a, this.f58569d));
        } catch (Throwable th3) {
            httpURLConnection = null;
            th2 = th3;
        }
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                f<ResponseType> fVar = this.f58572g;
                if (fVar == null) {
                    e(null);
                    return;
                }
                e(fVar.a(httpURLConnection));
            } else if (responseCode == 204) {
                e(null);
            } else {
                f(new t("Server response code - " + responseCode + " " + httpURLConnection.getResponseMessage()));
            }
        } catch (Throwable th4) {
            th2 = th4;
            try {
                f(t.a(th2));
            } finally {
                br.a.a(httpURLConnection);
            }
        }
    }

    public void h() {
        cr.c cVar = this.f58574i;
        tq.b bVar = this.f58575j;
        if (cVar != null && bVar != null) {
            cVar.cancel(bVar);
        }
        c();
    }

    public void i() {
        j(f58565k);
    }

    public void j(@NonNull cr.c cVar) {
        h();
        this.f58574i = cVar;
        k kVar = new k();
        this.f58575j = kVar;
        try {
            cVar.execute(kVar);
        } catch (Throwable th2) {
            f(t.a(th2));
        }
    }
}
