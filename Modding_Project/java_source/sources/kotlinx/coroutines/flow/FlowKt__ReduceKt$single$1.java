package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reduce.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {53}, m = "single")
/* loaded from: classes8.dex */
public final class FlowKt__ReduceKt$single$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61599h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61600i;

    /* renamed from: j  reason: collision with root package name */
    int f61601j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$single$1(rs.c<? super FlowKt__ReduceKt$single$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61600i = obj;
        this.f61601j |= Integer.MIN_VALUE;
        return c.S(null, this);
    }
}
