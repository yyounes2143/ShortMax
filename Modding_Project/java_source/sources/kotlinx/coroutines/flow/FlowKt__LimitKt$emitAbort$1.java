package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", l = {71}, m = "emitAbort$FlowKt__LimitKt")
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$emitAbort$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61534h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61535i;

    /* renamed from: j  reason: collision with root package name */
    int f61536j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__LimitKt$emitAbort$1(rs.c<? super FlowKt__LimitKt$emitAbort$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c10;
        this.f61535i = obj;
        this.f61536j |= Integer.MIN_VALUE;
        c10 = FlowKt__LimitKt.c(null, null, null, this);
        return c10;
    }
}
