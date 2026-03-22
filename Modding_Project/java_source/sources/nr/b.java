package nr;

import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.m;
/* compiled from: SavedCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b implements sr.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a f63035a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ sr.b f63036b;

    public b(@NotNull a call, @NotNull sr.b origin) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f63035a = call;
        this.f63036b = origin;
    }

    @Override // wr.k
    @NotNull
    public f a() {
        return this.f63036b.a();
    }

    @Override // sr.b
    @NotNull
    /* renamed from: b */
    public a x() {
        return this.f63035a;
    }

    @Override // sr.b, gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f63036b.getCoroutineContext();
    }

    @Override // sr.b
    @NotNull
    public m getMethod() {
        return this.f63036b.getMethod();
    }

    @Override // sr.b
    @NotNull
    public Url getUrl() {
        return this.f63036b.getUrl();
    }

    @Override // sr.b
    @NotNull
    public yr.b m() {
        return this.f63036b.m();
    }
}
