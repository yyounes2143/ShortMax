package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Request.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,298:1\n1864#2,3:299\n*S KotlinDebug\n*F\n+ 1 Request.kt\nokhttp3/Request\n*L\n119#1:299,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Request {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpUrl f63571a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f63572b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Headers f63573c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final RequestBody f63574d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, Object> f63575e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private CacheControl f63576f;

    public Request(@NotNull HttpUrl url, @NotNull String method, @NotNull Headers headers, @Nullable RequestBody requestBody, @NotNull Map<Class<?>, ? extends Object> tags) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.f63571a = url;
        this.f63572b = method;
        this.f63573c = headers;
        this.f63574d = requestBody;
        this.f63575e = tags;
    }

    @Nullable
    public final RequestBody a() {
        return this.f63574d;
    }

    @NotNull
    public final CacheControl b() {
        CacheControl cacheControl = this.f63576f;
        if (cacheControl == null) {
            CacheControl b10 = CacheControl.f63283n.b(this.f63573c);
            this.f63576f = b10;
            return b10;
        }
        return cacheControl;
    }

    @NotNull
    public final Map<Class<?>, Object> c() {
        return this.f63575e;
    }

    @Nullable
    public final String d(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f63573c.a(name);
    }

    @NotNull
    public final List<String> e(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f63573c.j(name);
    }

    @NotNull
    public final Headers f() {
        return this.f63573c;
    }

    public final boolean g() {
        return this.f63571a.j();
    }

    @NotNull
    public final String h() {
        return this.f63572b;
    }

    @NotNull
    public final Builder i() {
        return new Builder(this);
    }

    @Nullable
    public final Object j() {
        return k(Object.class);
    }

    @Nullable
    public final <T> T k(@NotNull Class<? extends T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return type.cast(this.f63575e.get(type));
    }

    @NotNull
    public final HttpUrl l() {
        return this.f63571a;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request{method=");
        sb2.append(this.f63572b);
        sb2.append(", url=");
        sb2.append(this.f63571a);
        if (this.f63573c.size() != 0) {
            sb2.append(", headers=[");
            int i10 = 0;
            for (Pair<? extends String, ? extends String> pair : this.f63573c) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                Pair<? extends String, ? extends String> pair2 = pair;
                String b10 = pair2.b();
                String d10 = pair2.d();
                if (i10 > 0) {
                    sb2.append(", ");
                }
                sb2.append(b10);
                sb2.append(':');
                sb2.append(d10);
                i10 = i11;
            }
            sb2.append(']');
        }
        if (!this.f63575e.isEmpty()) {
            sb2.append(", tags=");
            sb2.append(this.f63575e);
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    /* compiled from: Request.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1#2:299\n*E\n"})
    /* loaded from: classes8.dex */
    public static class Builder {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private HttpUrl f63577a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f63578b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private Headers.Builder f63579c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private RequestBody f63580d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private Map<Class<?>, Object> f63581e;

        public Builder() {
            this.f63581e = new LinkedHashMap();
            this.f63578b = ShareTarget.METHOD_GET;
            this.f63579c = new Headers.Builder();
        }

        @NotNull
        public Builder a(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f63579c.a(name, value);
            return this;
        }

        @NotNull
        public Request b() {
            HttpUrl httpUrl = this.f63577a;
            if (httpUrl != null) {
                return new Request(httpUrl, this.f63578b, this.f63579c.f(), this.f63580d, Util.W(this.f63581e));
            }
            throw new IllegalStateException("url == null");
        }

        @NotNull
        public Builder c(@NotNull CacheControl cacheControl) {
            Intrinsics.checkNotNullParameter(cacheControl, "cacheControl");
            String cacheControl2 = cacheControl.toString();
            if (cacheControl2.length() == 0) {
                return i("Cache-Control");
            }
            return e("Cache-Control", cacheControl2);
        }

        @NotNull
        public Builder d() {
            return g(ShareTarget.METHOD_GET, null);
        }

        @NotNull
        public Builder e(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f63579c.j(name, value);
            return this;
        }

        @NotNull
        public Builder f(@NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.f63579c = headers.e();
            return this;
        }

        @NotNull
        public Builder g(@NotNull String method, @Nullable RequestBody requestBody) {
            Intrinsics.checkNotNullParameter(method, "method");
            if (method.length() > 0) {
                if (requestBody == null) {
                    if (HttpMethod.e(method)) {
                        throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                    }
                } else if (!HttpMethod.b(method)) {
                    throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
                }
                this.f63578b = method;
                this.f63580d = requestBody;
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true");
        }

        @NotNull
        public Builder h(@NotNull RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return g(ShareTarget.METHOD_POST, body);
        }

        @NotNull
        public Builder i(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f63579c.i(name);
            return this;
        }

        @NotNull
        public <T> Builder j(@NotNull Class<? super T> type, @Nullable T t10) {
            Intrinsics.checkNotNullParameter(type, "type");
            if (t10 == null) {
                this.f63581e.remove(type);
            } else {
                if (this.f63581e.isEmpty()) {
                    this.f63581e = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.f63581e;
                T cast = type.cast(t10);
                Intrinsics.checkNotNull(cast);
                map.put(type, cast);
            }
            return this;
        }

        @NotNull
        public Builder k(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            if (StringsKt.T(url, "ws:", true)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("http:");
                String substring = url.substring(3);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                sb2.append(substring);
                url = sb2.toString();
            } else if (StringsKt.T(url, "wss:", true)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("https:");
                String substring2 = url.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                sb3.append(substring2);
                url = sb3.toString();
            }
            return l(HttpUrl.f63457k.d(url));
        }

        @NotNull
        public Builder l(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.f63577a = url;
            return this;
        }

        public Builder(@NotNull Request request) {
            Map<Class<?>, Object> A;
            Intrinsics.checkNotNullParameter(request, "request");
            this.f63581e = new LinkedHashMap();
            this.f63577a = request.l();
            this.f63578b = request.h();
            this.f63580d = request.a();
            if (request.c().isEmpty()) {
                A = new LinkedHashMap<>();
            } else {
                A = p0.A(request.c());
            }
            this.f63581e = A;
            this.f63579c = request.f().e();
        }
    }
}
