package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", l = {59, 61}, m = "emit")
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$take$2$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61541h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FlowKt__LimitKt$take$2$1<T> f61542i;

    /* renamed from: j  reason: collision with root package name */
    int f61543j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$take$2$1$emit$1(FlowKt__LimitKt$take$2$1<? super T> flowKt__LimitKt$take$2$1, rs.c<? super FlowKt__LimitKt$take$2$1$emit$1> cVar) {
        super(cVar);
        this.f61542i = flowKt__LimitKt$take$2$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61541h = obj;
        this.f61543j |= Integer.MIN_VALUE;
        return this.f61542i.emit(null, this);
    }
}
