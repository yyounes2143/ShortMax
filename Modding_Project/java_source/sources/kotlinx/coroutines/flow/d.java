package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.r;
import lt.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: Context.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class d {
    @NotNull
    public static final <T> kt.b<T> a(@NotNull kt.b<? extends T> bVar, int i10, @NotNull BufferOverflow bufferOverflow) {
        if (i10 < 0 && i10 != -2 && i10 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
        } else if (i10 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        } else {
            if (i10 == -1) {
                bufferOverflow = BufferOverflow.DROP_OLDEST;
                i10 = 0;
            }
            int i11 = i10;
            BufferOverflow bufferOverflow2 = bufferOverflow;
            if (bVar instanceof lt.g) {
                return g.a.a((lt.g) bVar, null, i11, bufferOverflow2, 1, null);
            }
            return new lt.d(bVar, null, i11, bufferOverflow2, 2, null);
        }
    }

    public static /* synthetic */ kt.b b(kt.b bVar, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return c.e(bVar, i10, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> kt.b<T> c(@NotNull kt.b<? extends T> bVar) {
        if (!(bVar instanceof kt.a)) {
            return new CancellableFlowImpl(bVar);
        }
        return bVar;
    }

    private static final void d(CoroutineContext coroutineContext) {
        if (coroutineContext.get(r.G8) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    @NotNull
    public static final <T> kt.b<T> e(@NotNull kt.b<? extends T> bVar) {
        kt.b<T> b10;
        b10 = b(bVar, -1, null, 2, null);
        return b10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> kt.b<T> f(@NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext coroutineContext) {
        d(coroutineContext);
        if (!Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.f61040a)) {
            if (bVar instanceof lt.g) {
                return g.a.a((lt.g) bVar, coroutineContext, 0, null, 6, null);
            }
            return new lt.d(bVar, coroutineContext, 0, null, 12, null);
        }
        return bVar;
    }
}
