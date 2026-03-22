package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", l = {26}, m = "emit")
/* loaded from: classes8.dex */
public final class ChannelFlowTransformLatest$flowCollect$3$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61745h;

    /* renamed from: i  reason: collision with root package name */
    Object f61746i;

    /* renamed from: j  reason: collision with root package name */
    Object f61747j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f61748k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1<T> f61749l;

    /* renamed from: m  reason: collision with root package name */
    int f61750m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest$flowCollect$3$1$emit$1(ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1<? super T> anonymousClass1, rs.c<? super ChannelFlowTransformLatest$flowCollect$3$1$emit$1> cVar) {
        super(cVar);
        this.f61749l = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61748k = obj;
        this.f61750m |= Integer.MIN_VALUE;
        return this.f61749l.emit(null, this);
    }
}
