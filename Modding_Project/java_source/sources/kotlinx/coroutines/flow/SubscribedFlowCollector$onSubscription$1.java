package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {422, 426}, m = "onSubscription")
/* loaded from: classes8.dex */
public final class SubscribedFlowCollector$onSubscription$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61683h;

    /* renamed from: i  reason: collision with root package name */
    Object f61684i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61685j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SubscribedFlowCollector<T> f61686k;

    /* renamed from: l  reason: collision with root package name */
    int f61687l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribedFlowCollector$onSubscription$1(SubscribedFlowCollector<T> subscribedFlowCollector, rs.c<? super SubscribedFlowCollector$onSubscription$1> cVar) {
        super(cVar);
        this.f61686k = subscribedFlowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61685j = obj;
        this.f61687l |= Integer.MIN_VALUE;
        return this.f61686k.a(this);
    }
}
