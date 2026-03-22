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
public final class FlowKt__ReduceKt$firstOrNull$3<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61595h;

    /* renamed from: i  reason: collision with root package name */
    Object f61596i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61597j;

    /* renamed from: k  reason: collision with root package name */
    int f61598k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$firstOrNull$3(rs.c<? super FlowKt__ReduceKt$firstOrNull$3> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61597j = obj;
        this.f61598k |= Integer.MIN_VALUE;
        return c.z(null, null, this);
    }
}
