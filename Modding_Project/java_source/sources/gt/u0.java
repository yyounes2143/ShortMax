package gt;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventLoop.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
/* loaded from: classes8.dex */
public abstract class u0 extends c0 {

    /* renamed from: a  reason: collision with root package name */
    private long f52558a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52559b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private kotlin.collections.m<kotlinx.coroutines.k<?>> f52560c;

    public static /* synthetic */ void o(u0 u0Var, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            u0Var.m(z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
    }

    private final long p(boolean z10) {
        if (z10) {
            return 4294967296L;
        }
        return 1L;
    }

    public static /* synthetic */ void w(u0 u0Var, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            u0Var.v(z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
    }

    public final boolean P() {
        kotlin.collections.m<kotlinx.coroutines.k<?>> mVar = this.f52560c;
        if (mVar != null) {
            return mVar.isEmpty();
        }
        return true;
    }

    public long R() {
        if (!T()) {
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public final boolean T() {
        kotlinx.coroutines.k<?> t10;
        kotlin.collections.m<kotlinx.coroutines.k<?>> mVar = this.f52560c;
        if (mVar == null || (t10 = mVar.t()) == null) {
            return false;
        }
        t10.run();
        return true;
    }

    public boolean W() {
        return false;
    }

    @Override // gt.c0
    @NotNull
    public final c0 limitedParallelism(int i10, @Nullable String str) {
        mt.l.a(i10);
        return mt.l.b(this, str);
    }

    public final void m(boolean z10) {
        long p10 = this.f52558a - p(z10);
        this.f52558a = p10;
        if (p10 <= 0 && this.f52559b) {
            shutdown();
        }
    }

    public final void t(@NotNull kotlinx.coroutines.k<?> kVar) {
        kotlin.collections.m<kotlinx.coroutines.k<?>> mVar = this.f52560c;
        if (mVar == null) {
            mVar = new kotlin.collections.m<>();
            this.f52560c = mVar;
        }
        mVar.addLast(kVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long u() {
        kotlin.collections.m<kotlinx.coroutines.k<?>> mVar = this.f52560c;
        if (mVar == null || mVar.isEmpty()) {
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public final void v(boolean z10) {
        this.f52558a += p(z10);
        if (!z10) {
            this.f52559b = true;
        }
    }

    public final boolean x() {
        if (this.f52558a >= p(true)) {
            return true;
        }
        return false;
    }

    public void shutdown() {
    }
}
