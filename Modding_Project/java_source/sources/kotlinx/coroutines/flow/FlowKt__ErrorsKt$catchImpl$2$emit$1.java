package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Errors.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {154}, m = "emit")
/* loaded from: classes8.dex */
public final class FlowKt__ErrorsKt$catchImpl$2$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61495h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61496i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ FlowKt__ErrorsKt$catchImpl$2<T> f61497j;

    /* renamed from: k  reason: collision with root package name */
    int f61498k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ErrorsKt$catchImpl$2$emit$1(FlowKt__ErrorsKt$catchImpl$2<? super T> flowKt__ErrorsKt$catchImpl$2, rs.c<? super FlowKt__ErrorsKt$catchImpl$2$emit$1> cVar) {
        super(cVar);
        this.f61497j = flowKt__ErrorsKt$catchImpl$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61496i = obj;
        this.f61498k |= Integer.MIN_VALUE;
        return this.f61497j.emit(null, this);
    }
}
