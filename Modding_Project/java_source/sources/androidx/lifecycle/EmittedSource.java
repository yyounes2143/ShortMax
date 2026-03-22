package androidx.lifecycle;

import androidx.annotation.MainThread;
import gt.q0;
import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineLiveData.kt */
@Metadata
/* loaded from: classes2.dex */
public final class EmittedSource implements s0 {
    private boolean disposed;
    @NotNull
    private final MediatorLiveData<?> mediator;
    @NotNull
    private final LiveData<?> source;

    public EmittedSource(@NotNull LiveData<?> source, @NotNull MediatorLiveData<?> mediator) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(mediator, "mediator");
        this.source = source;
        this.mediator = mediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void removeSource() {
        if (!this.disposed) {
            this.mediator.removeSource(this.source);
            this.disposed = true;
        }
    }

    @Override // gt.s0
    public void dispose() {
        gt.g.d(kotlinx.coroutines.i.a(q0.c().m()), null, null, new EmittedSource$dispose$1(this, null), 3, null);
    }

    @Nullable
    public final Object disposeNow(@NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(q0.c().m(), new EmittedSource$disposeNow$2(this, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
