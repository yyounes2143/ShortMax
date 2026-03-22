package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import mt.a0;
import org.jetbrains.annotations.NotNull;
/* compiled from: StateFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,433:1\n1#2:434\n*E\n"})
/* loaded from: classes8.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final a0 f61808a = new a0("NONE");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a0 f61809b = new a0("PENDING");

    @NotNull
    public static final <T> kt.e<T> a(T t10) {
        if (t10 == null) {
            t10 = (T) lt.i.f62309a;
        }
        return new StateFlowImpl(t10);
    }

    @NotNull
    public static final <T> kt.b<T> d(@NotNull kt.i<? extends T> iVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        if (((i10 >= 0 && i10 < 2) || i10 == -2) && bufferOverflow == BufferOverflow.DROP_OLDEST) {
            return iVar;
        }
        return kt.g.e(iVar, coroutineContext, i10, bufferOverflow);
    }
}
