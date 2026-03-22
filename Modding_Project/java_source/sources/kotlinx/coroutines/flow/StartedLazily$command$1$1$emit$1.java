package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.StartedLazily$command$1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharingStarted.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", l = {154}, m = "emit")
/* loaded from: classes8.dex */
public final class StartedLazily$command$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61660h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ StartedLazily$command$1.AnonymousClass1<T> f61661i;

    /* renamed from: j  reason: collision with root package name */
    int f61662j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StartedLazily$command$1$1$emit$1(StartedLazily$command$1.AnonymousClass1<? super T> anonymousClass1, rs.c<? super StartedLazily$command$1$1$emit$1> cVar) {
        super(cVar);
        this.f61661i = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61660h = obj;
        this.f61662j |= Integer.MIN_VALUE;
        return this.f61661i.a(0, this);
    }
}
