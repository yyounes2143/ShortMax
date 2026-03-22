package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", l = {412}, m = "collect")
/* loaded from: classes8.dex */
public final class SubscribedSharedFlow$collect$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61690h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubscribedSharedFlow<T> f61691i;

    /* renamed from: j  reason: collision with root package name */
    int f61692j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribedSharedFlow$collect$1(SubscribedSharedFlow<T> subscribedSharedFlow, rs.c<? super SubscribedSharedFlow$collect$1> cVar) {
        super(cVar);
        this.f61691i = subscribedSharedFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61690h = obj;
        this.f61692j |= Integer.MIN_VALUE;
        return this.f61691i.collect(null, this);
    }
}
