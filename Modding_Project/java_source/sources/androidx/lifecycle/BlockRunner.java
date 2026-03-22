package androidx.lifecycle;

import androidx.annotation.MainThread;
import gt.g0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BlockRunner<T> {
    @NotNull
    private final Function2<LiveDataScope<T>, rs.c<? super Unit>, Object> block;
    @Nullable
    private kotlinx.coroutines.r cancellationJob;
    @NotNull
    private final CoroutineLiveData<T> liveData;
    @NotNull
    private final Function0<Unit> onDone;
    @Nullable
    private kotlinx.coroutines.r runningJob;
    @NotNull
    private final g0 scope;
    private final long timeoutInMs;

    /* JADX WARN: Multi-variable type inference failed */
    public BlockRunner(@NotNull CoroutineLiveData<T> liveData, @NotNull Function2<? super LiveDataScope<T>, ? super rs.c<? super Unit>, ? extends Object> block, long j10, @NotNull g0 scope, @NotNull Function0<Unit> onDone) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onDone, "onDone");
        this.liveData = liveData;
        this.block = block;
        this.timeoutInMs = j10;
        this.scope = scope;
        this.onDone = onDone;
    }

    @MainThread
    public final void cancel() {
        kotlinx.coroutines.r d10;
        if (this.cancellationJob == null) {
            d10 = gt.g.d(this.scope, q0.c().m(), null, new BlockRunner$cancel$1(this, null), 2, null);
            this.cancellationJob = d10;
            return;
        }
        throw new IllegalStateException("Cancel call cannot happen without a maybeRun");
    }

    @MainThread
    public final void maybeRun() {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.cancellationJob;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.cancellationJob = null;
        if (this.runningJob == null) {
            d10 = gt.g.d(this.scope, null, null, new BlockRunner$maybeRun$1(this, null), 3, null);
            this.runningJob = d10;
        }
    }
}
