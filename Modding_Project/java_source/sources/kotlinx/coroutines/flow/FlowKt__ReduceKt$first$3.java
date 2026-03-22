package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reduce.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {179}, m = "first")
/* loaded from: classes8.dex */
public final class FlowKt__ReduceKt$first$3<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61587h;

    /* renamed from: i  reason: collision with root package name */
    Object f61588i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61589j;

    /* renamed from: k  reason: collision with root package name */
    int f61590k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$first$3(rs.c<? super FlowKt__ReduceKt$first$3> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61589j = obj;
        this.f61590k |= Integer.MIN_VALUE;
        return c.x(null, null, this);
    }
}
