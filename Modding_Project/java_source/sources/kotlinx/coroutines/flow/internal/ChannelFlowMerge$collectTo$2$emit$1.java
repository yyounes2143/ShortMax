package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2", f = "Merge.kt", l = {62}, m = "emit")
/* loaded from: classes8.dex */
public final class ChannelFlowMerge$collectTo$2$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61723h;

    /* renamed from: i  reason: collision with root package name */
    Object f61724i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61725j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ChannelFlowMerge$collectTo$2<T> f61726k;

    /* renamed from: l  reason: collision with root package name */
    int f61727l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge$collectTo$2$emit$1(ChannelFlowMerge$collectTo$2<? super T> channelFlowMerge$collectTo$2, rs.c<? super ChannelFlowMerge$collectTo$2$emit$1> cVar) {
        super(cVar);
        this.f61726k = channelFlowMerge$collectTo$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61725j = obj;
        this.f61727l |= Integer.MIN_VALUE;
        return this.f61726k.emit(null, this);
    }
}
