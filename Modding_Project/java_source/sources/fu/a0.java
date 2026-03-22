package fu;

import com.inmobi.commons.core.configs.AdConfig;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
/* compiled from: RequestBuilder.java */
/* loaded from: classes8.dex */
final class a0 {

    /* renamed from: l  reason: collision with root package name */
    private static final char[] f51941l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f51942m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: a  reason: collision with root package name */
    private final String f51943a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpUrl f51944b;

    /* renamed from: c  reason: collision with root package name */
    private String f51945c;

    /* renamed from: d  reason: collision with root package name */
    private HttpUrl.Builder f51946d;

    /* renamed from: e  reason: collision with root package name */
    private final Request.Builder f51947e = new Request.Builder();

    /* renamed from: f  reason: collision with root package name */
    private final Headers.Builder f51948f;

    /* renamed from: g  reason: collision with root package name */
    private MediaType f51949g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f51950h;

    /* renamed from: i  reason: collision with root package name */
    private MultipartBody.Builder f51951i;

    /* renamed from: j  reason: collision with root package name */
    private FormBody.Builder f51952j;

    /* renamed from: k  reason: collision with root package name */
    private RequestBody f51953k;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes8.dex */
    private static class a extends RequestBody {

        /* renamed from: a  reason: collision with root package name */
        private final RequestBody f51954a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaType f51955b;

        a(RequestBody requestBody, MediaType mediaType) {
            this.f51954a = requestBody;
            this.f51955b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.f51954a.contentLength();
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.f51955b;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.f51954a.writeTo(bufferedSink);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z10, boolean z11, boolean z12) {
        this.f51943a = str;
        this.f51944b = httpUrl;
        this.f51945c = str2;
        this.f51949g = mediaType;
        this.f51950h = z10;
        if (headers != null) {
            this.f51948f = headers.e();
        } else {
            this.f51948f = new Headers.Builder();
        }
        if (z11) {
            this.f51952j = new FormBody.Builder();
        } else if (z12) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f51951i = builder;
            builder.d(MultipartBody.f63492k);
        }
    }

    private static String i(String str, boolean z10) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z10 || (codePointAt != 47 && codePointAt != 37))) {
                i10 += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, i10);
                j(buffer, str, i10, length, z10);
                return buffer.readUtf8();
            }
        }
        return str;
    }

    private static void j(Buffer buffer, String str, int i10, int i11, boolean z10) {
        Buffer buffer2 = null;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z10 || (codePointAt != 47 && codePointAt != 37))) {
                    buffer.writeUtf8CodePoint(codePointAt);
                } else {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    long size = buffer2.size();
                    for (long j10 = 0; j10 < size; j10++) {
                        byte b10 = buffer2.getByte(j10);
                        int i12 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                        buffer.writeByte(37);
                        char[] cArr = f51941l;
                        buffer.writeByte((int) cArr[(i12 >> 4) & 15]);
                        buffer.writeByte((int) cArr[b10 & 15]);
                    }
                    buffer2.clear();
                }
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, boolean z10) {
        if (z10) {
            this.f51952j.b(str, str2);
        } else {
            this.f51952j.a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, String str2, boolean z10) {
        if (CommonGatewayClient.HEADER_CONTENT_TYPE.equalsIgnoreCase(str)) {
            try {
                this.f51949g = MediaType.e(str2);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e10);
            }
        } else if (z10) {
            this.f51948f.e(str, str2);
        } else {
            this.f51948f.a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Headers headers) {
        this.f51948f.b(headers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Headers headers, RequestBody requestBody) {
        this.f51951i.a(headers, requestBody);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(MultipartBody.Part part) {
        this.f51951i.b(part);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str, String str2, boolean z10) {
        if (this.f51945c != null) {
            String i10 = i(str2, z10);
            String str3 = this.f51945c;
            String replace = str3.replace("{" + str + "}", i10);
            if (!f51942m.matcher(replace).matches()) {
                this.f51945c = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(String str, String str2, boolean z10) {
        String str3 = this.f51945c;
        if (str3 != null) {
            HttpUrl.Builder l10 = this.f51944b.l(str3);
            this.f51946d = l10;
            if (l10 != null) {
                this.f51945c = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f51944b + ", Relative: " + this.f51945c);
            }
        }
        if (z10) {
            this.f51946d.a(str, str2);
        } else {
            this.f51946d.b(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> void h(Class<T> cls, T t10) {
        this.f51947e.j(cls, t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request.Builder k() {
        HttpUrl s10;
        HttpUrl.Builder builder = this.f51946d;
        if (builder != null) {
            s10 = builder.c();
        } else {
            s10 = this.f51944b.s(this.f51945c);
            if (s10 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f51944b + ", Relative: " + this.f51945c);
            }
        }
        a aVar = this.f51953k;
        if (aVar == null) {
            FormBody.Builder builder2 = this.f51952j;
            if (builder2 != null) {
                aVar = builder2.c();
            } else {
                MultipartBody.Builder builder3 = this.f51951i;
                if (builder3 != null) {
                    aVar = builder3.c();
                } else if (this.f51950h) {
                    aVar = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f51949g;
        if (mediaType != null) {
            if (aVar != null) {
                aVar = new a(aVar, mediaType);
            } else {
                this.f51948f.a(CommonGatewayClient.HEADER_CONTENT_TYPE, mediaType.toString());
            }
        }
        return this.f51947e.l(s10).f(this.f51948f.f()).g(this.f51943a, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(RequestBody requestBody) {
        this.f51953k = requestBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(Object obj) {
        this.f51945c = obj.toString();
    }
}
