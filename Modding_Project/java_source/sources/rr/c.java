package rr;

import io.ktor.client.call.HttpClientCall;
import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.m;
/* compiled from: DelegatedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c implements sr.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientCall f66141a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ sr.b f66142b;

    public c(@NotNull HttpClientCall call, @NotNull sr.b origin) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f66141a = call;
        this.f66142b = origin;
    }

    @Override // wr.k
    @NotNull
    public f a() {
        return this.f66142b.a();
    }

    @Override // sr.b, gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f66142b.getCoroutineContext();
    }

    @Override // sr.b
    @NotNull
    public m getMethod() {
        return this.f66142b.getMethod();
    }

    @Override // sr.b
    @NotNull
    public Url getUrl() {
        return this.f66142b.getUrl();
    }

    @Override // sr.b
    @NotNull
    public yr.b m() {
        return this.f66142b.m();
    }

    @Override // sr.b
    @NotNull
    public HttpClientCall x() {
        return this.f66141a;
    }
}
