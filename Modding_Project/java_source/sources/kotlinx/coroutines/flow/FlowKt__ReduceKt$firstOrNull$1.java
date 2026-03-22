package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reduce.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {179}, m = "firstOrNull")
/* loaded from: classes8.dex */
public final class FlowKt__ReduceKt$firstOrNull$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61591h;

    /* renamed from: i  reason: collision with root package name */
    Object f61592i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61593j;

    /* renamed from: k  reason: collision with root package name */
    int f61594k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$firstOrNull$1(rs.c<? super FlowKt__ReduceKt$firstOrNull$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61593j = obj;
        this.f61594k |= Integer.MIN_VALUE;
        return c.A(null, this);
    }
}
