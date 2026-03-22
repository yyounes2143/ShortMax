package sr;

import io.ktor.http.Url;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.m;
/* compiled from: HttpRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Url f66594a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m f66595b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final wr.f f66596c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final xr.b f66597d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final r f66598e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final yr.b f66599f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Set<or.b<?>> f66600g;

    public c(@NotNull Url url, @NotNull m method, @NotNull wr.f headers, @NotNull xr.b body, @NotNull r executionContext, @NotNull yr.b attributes) {
        Set<or.b<?>> f10;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(executionContext, "executionContext");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.f66594a = url;
        this.f66595b = method;
        this.f66596c = headers;
        this.f66597d = body;
        this.f66598e = executionContext;
        this.f66599f = attributes;
        Map map = (Map) attributes.f(or.c.a());
        this.f66600g = (map == null || (f10 = map.keySet()) == null) ? y0.f() : f10;
    }

    @NotNull
    public final yr.b a() {
        return this.f66599f;
    }

    @NotNull
    public final xr.b b() {
        return this.f66597d;
    }

    @Nullable
    public final <T> T c(@NotNull or.b<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map map = (Map) this.f66599f.f(or.c.a());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    @NotNull
    public final r d() {
        return this.f66598e;
    }

    @NotNull
    public final wr.f e() {
        return this.f66596c;
    }

    @NotNull
    public final m f() {
        return this.f66595b;
    }

    @NotNull
    public final Set<or.b<?>> g() {
        return this.f66600g;
    }

    @NotNull
    public final Url h() {
        return this.f66594a;
    }

    @NotNull
    public String toString() {
        return "HttpRequestData(url=" + this.f66594a + ", method=" + this.f66595b + ')';
    }
}
