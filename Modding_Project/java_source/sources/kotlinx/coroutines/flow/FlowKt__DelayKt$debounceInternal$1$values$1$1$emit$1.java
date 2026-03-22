package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", l = {204}, m = "emit")
/* loaded from: classes8.dex */
public final class FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61462h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FlowKt__DelayKt$debounceInternal$1$values$1.AnonymousClass1<T> f61463i;

    /* renamed from: j  reason: collision with root package name */
    int f61464j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1(FlowKt__DelayKt$debounceInternal$1$values$1.AnonymousClass1<? super T> anonymousClass1, rs.c<? super FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1> cVar) {
        super(cVar);
        this.f61463i = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61462h = obj;
        this.f61464j |= Integer.MIN_VALUE;
        return this.f61463i.emit(null, this);
    }
}
