package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {34, 35, 37}, m = "emit")
/* loaded from: classes8.dex */
public final class FlowKt__LimitKt$dropWhile$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61529h;

    /* renamed from: i  reason: collision with root package name */
    Object f61530i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61531j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ FlowKt__LimitKt$dropWhile$1$1<T> f61532k;

    /* renamed from: l  reason: collision with root package name */
    int f61533l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$dropWhile$1$1$emit$1(FlowKt__LimitKt$dropWhile$1$1<? super T> flowKt__LimitKt$dropWhile$1$1, rs.c<? super FlowKt__LimitKt$dropWhile$1$1$emit$1> cVar) {
        super(cVar);
        this.f61532k = flowKt__LimitKt$dropWhile$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61531j = obj;
        this.f61533l |= Integer.MIN_VALUE;
        return this.f61532k.emit(null, this);
    }
}
