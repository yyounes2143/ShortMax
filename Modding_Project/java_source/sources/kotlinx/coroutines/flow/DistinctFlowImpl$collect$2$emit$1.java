package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {73}, m = "emit")
/* loaded from: classes8.dex */
public final class DistinctFlowImpl$collect$2$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61416h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DistinctFlowImpl$collect$2<T> f61417i;

    /* renamed from: j  reason: collision with root package name */
    int f61418j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl$collect$2$emit$1(DistinctFlowImpl$collect$2<? super T> distinctFlowImpl$collect$2, rs.c<? super DistinctFlowImpl$collect$2$emit$1> cVar) {
        super(cVar);
        this.f61417i = distinctFlowImpl$collect$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61416h = obj;
        this.f61418j |= Integer.MIN_VALUE;
        return this.f61417i.emit(null, this);
    }
}
