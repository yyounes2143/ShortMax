package sr;

import io.ktor.client.call.HttpClientCall;
import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.m;
/* compiled from: DefaultHttpRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public class a implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientCall f66588a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m f66589b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Url f66590c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final xr.b f66591d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final wr.f f66592e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final yr.b f66593f;

    public a(@NotNull HttpClientCall call, @NotNull c data) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f66588a = call;
        this.f66589b = data.f();
        this.f66590c = data.h();
        this.f66591d = data.b();
        this.f66592e = data.e();
        this.f66593f = data.a();
    }

    @Override // wr.k
    @NotNull
    public wr.f a() {
        return this.f66592e;
    }

    @Override // sr.b, gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return x().getCoroutineContext();
    }

    @Override // sr.b
    @NotNull
    public m getMethod() {
        return this.f66589b;
    }

    @Override // sr.b
    @NotNull
    public Url getUrl() {
        return this.f66590c;
    }

    @Override // sr.b
    @NotNull
    public yr.b m() {
        return this.f66593f;
    }

    @Override // sr.b
    @NotNull
    public HttpClientCall x() {
        return this.f66588a;
    }
}
