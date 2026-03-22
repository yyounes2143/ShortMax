package kt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import mt.a0;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,746:1\n1#2:747\n*E\n"})
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a */
    public static final a0 f62038a = new a0("NO_VALUE");

    @NotNull
    public static final <T> d<T> a(int i10, int i11, @NotNull BufferOverflow bufferOverflow) {
        if (i10 >= 0) {
            if (i11 >= 0) {
                if (i10 <= 0 && i11 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
                    throw new IllegalArgumentException(("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy " + bufferOverflow).toString());
                }
                int i12 = i11 + i10;
                if (i12 < 0) {
                    i12 = Integer.MAX_VALUE;
                }
                return new SharedFlowImpl(i10, i12, bufferOverflow);
            }
            throw new IllegalArgumentException(("extraBufferCapacity cannot be negative, but was " + i11).toString());
        }
        throw new IllegalArgumentException(("replay cannot be negative, but was " + i10).toString());
    }

    public static /* synthetic */ d b(int i10, int i11, BufferOverflow bufferOverflow, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i10, i11, bufferOverflow);
    }

    @NotNull
    public static final <T> b<T> e(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        if ((i10 == 0 || i10 == -3) && bufferOverflow == BufferOverflow.SUSPEND) {
            return fVar;
        }
        return new lt.d(fVar, coroutineContext, i10, bufferOverflow);
    }

    public static final Object f(Object[] objArr, long j10) {
        return objArr[((int) j10) & (objArr.length - 1)];
    }

    public static final void g(Object[] objArr, long j10, Object obj) {
        objArr[((int) j10) & (objArr.length - 1)] = obj;
    }
}
