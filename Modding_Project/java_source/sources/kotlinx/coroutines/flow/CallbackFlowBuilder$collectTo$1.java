package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {330}, m = "collectTo")
/* loaded from: classes8.dex */
public final class CallbackFlowBuilder$collectTo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61401h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61402i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CallbackFlowBuilder<T> f61403j;

    /* renamed from: k  reason: collision with root package name */
    int f61404k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackFlowBuilder$collectTo$1(CallbackFlowBuilder<T> callbackFlowBuilder, rs.c<? super CallbackFlowBuilder$collectTo$1> cVar) {
        super(cVar);
        this.f61403j = callbackFlowBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61402i = obj;
        this.f61404k |= Integer.MIN_VALUE;
        return this.f61403j.f(null, this);
    }
}
