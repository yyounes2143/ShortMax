package nr;

import gt.s;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.n;
import wr.o;
/* compiled from: SavedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c extends tr.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a f63037a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final s f63038b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final o f63039c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final n f63040d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final bs.a f63041e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final bs.a f63042f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final f f63043g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final CoroutineContext f63044h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final ByteReadChannel f63045i;

    public c(@NotNull a call, @NotNull byte[] body, @NotNull tr.c origin) {
        s b10;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f63037a = call;
        b10 = JobKt__JobKt.b(null, 1, null);
        this.f63038b = b10;
        this.f63039c = origin.e();
        this.f63040d = origin.f();
        this.f63041e = origin.c();
        this.f63042f = origin.d();
        this.f63043g = origin.a();
        this.f63044h = origin.getCoroutineContext().plus(b10);
        this.f63045i = io.ktor.utils.io.c.a(body);
    }

    @Override // wr.k
    @NotNull
    public f a() {
        return this.f63043g;
    }

    @Override // tr.c
    @NotNull
    public ByteReadChannel b() {
        return this.f63045i;
    }

    @Override // tr.c
    @NotNull
    public bs.a c() {
        return this.f63041e;
    }

    @Override // tr.c
    @NotNull
    public bs.a d() {
        return this.f63042f;
    }

    @Override // tr.c
    @NotNull
    public o e() {
        return this.f63039c;
    }

    @Override // tr.c
    @NotNull
    public n f() {
        return this.f63040d;
    }

    @Override // tr.c
    @NotNull
    /* renamed from: g */
    public a x() {
        return this.f63037a;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f63044h;
    }
}
