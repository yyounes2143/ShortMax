package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1", f = "Merge.kt", l = {79}, m = "emit")
/* loaded from: classes8.dex */
public final class FlowKt__MergeKt$flattenConcat$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61559h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FlowKt__MergeKt$flattenConcat$1$1<T> f61560i;

    /* renamed from: j  reason: collision with root package name */
    int f61561j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$flattenConcat$1$1$emit$1(FlowKt__MergeKt$flattenConcat$1$1<? super T> flowKt__MergeKt$flattenConcat$1$1, rs.c<? super FlowKt__MergeKt$flattenConcat$1$1$emit$1> cVar) {
        super(cVar);
        this.f61560i = flowKt__MergeKt$flattenConcat$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61559h = obj;
        this.f61561j |= Integer.MIN_VALUE;
        return this.f61560i.emit(null, this);
    }
}
