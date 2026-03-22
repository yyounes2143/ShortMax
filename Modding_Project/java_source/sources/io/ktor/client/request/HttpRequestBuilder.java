package io.ktor.client.request;

import gt.r1;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import io.ktor.http.h;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.c;
import ur.b;
import wr.f;
import wr.g;
import wr.l;
import wr.m;
import yr.d;
import yr.e;
import yr.s;
/* compiled from: HttpRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRequestBuilder implements l {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f59133g = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final h f59134a = new h(null, null, 0, null, null, null, null, null, false, 511, null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private m f59135b = m.f70193b.a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final g f59136c = new g(0, 1, null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Object f59137d = b.f68591a;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private r f59138e = r1.b(null, 1, null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final yr.b f59139f = d.a(true);

    /* compiled from: HttpRequest.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // wr.l
    @NotNull
    public g a() {
        return this.f59136c;
    }

    @NotNull
    public final c b() {
        xr.b bVar;
        Url b10 = this.f59134a.b();
        m mVar = this.f59135b;
        f n10 = a().n();
        Object obj = this.f59137d;
        if (obj instanceof xr.b) {
            bVar = (xr.b) obj;
        } else {
            bVar = null;
        }
        xr.b bVar2 = bVar;
        if (bVar2 != null) {
            return new c(b10, mVar, n10, bVar2, this.f59138e, this.f59139f);
        }
        throw new IllegalStateException(("No request transformation found: " + this.f59137d).toString());
    }

    @NotNull
    public final yr.b c() {
        return this.f59139f;
    }

    @NotNull
    public final Object d() {
        return this.f59137d;
    }

    @Nullable
    public final es.a e() {
        return (es.a) this.f59139f.f(sr.g.a());
    }

    @Nullable
    public final <T> T f(@NotNull or.b<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map map = (Map) this.f59139f.f(or.c.a());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    @NotNull
    public final r g() {
        return this.f59138e;
    }

    @NotNull
    public final m h() {
        return this.f59135b;
    }

    @NotNull
    public final h i() {
        return this.f59134a;
    }

    public final void j(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.f59137d = obj;
    }

    public final void k(@Nullable es.a aVar) {
        if (aVar != null) {
            this.f59139f.a(sr.g.a(), aVar);
        } else {
            this.f59139f.g(sr.g.a());
        }
    }

    public final <T> void l(@NotNull or.b<T> key, @NotNull T capability) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(capability, "capability");
        ((Map) this.f59139f.c(or.c.a(), new Function0<Map<or.b<?>, Object>>() { // from class: io.ktor.client.request.HttpRequestBuilder$setCapability$capabilities$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<or.b<?>, Object> invoke() {
                return new LinkedHashMap();
            }
        })).put(key, capability);
    }

    public final void m(@NotNull r rVar) {
        Intrinsics.checkNotNullParameter(rVar, "<set-?>");
        this.f59138e = rVar;
    }

    public final void n(@NotNull m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f59135b = mVar;
    }

    @NotNull
    public final HttpRequestBuilder o(@NotNull HttpRequestBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f59135b = builder.f59135b;
        this.f59137d = builder.f59137d;
        k(builder.e());
        URLUtilsKt.g(this.f59134a, builder.f59134a);
        h hVar = this.f59134a;
        hVar.u(hVar.g());
        s.c(a(), builder.a());
        e.a(this.f59139f, builder.f59139f);
        return this;
    }

    @NotNull
    public final HttpRequestBuilder p(@NotNull HttpRequestBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f59138e = builder.f59138e;
        return o(builder);
    }
}
