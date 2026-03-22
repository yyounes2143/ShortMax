package rr;

import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.n;
import wr.o;
/* compiled from: DelegatedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d extends tr.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientCall f66143a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ByteReadChannel f66144b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final tr.c f66145c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final CoroutineContext f66146d;

    public d(@NotNull HttpClientCall call, @NotNull ByteReadChannel content, @NotNull tr.c origin) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f66143a = call;
        this.f66144b = content;
        this.f66145c = origin;
        this.f66146d = origin.getCoroutineContext();
    }

    @Override // wr.k
    @NotNull
    public f a() {
        return this.f66145c.a();
    }

    @Override // tr.c
    @NotNull
    public ByteReadChannel b() {
        return this.f66144b;
    }

    @Override // tr.c
    @NotNull
    public bs.a c() {
        return this.f66145c.c();
    }

    @Override // tr.c
    @NotNull
    public bs.a d() {
        return this.f66145c.d();
    }

    @Override // tr.c
    @NotNull
    public o e() {
        return this.f66145c.e();
    }

    @Override // tr.c
    @NotNull
    public n f() {
        return this.f66145c.f();
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f66146d;
    }

    @Override // tr.c
    @NotNull
    public HttpClientCall x() {
        return this.f66143a;
    }
}
