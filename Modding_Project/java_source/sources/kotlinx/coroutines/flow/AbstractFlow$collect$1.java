package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Flow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {226}, m = "collect")
/* loaded from: classes8.dex */
public final class AbstractFlow$collect$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61396h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61397i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AbstractFlow<T> f61398j;

    /* renamed from: k  reason: collision with root package name */
    int f61399k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractFlow$collect$1(AbstractFlow<T> abstractFlow, rs.c<? super AbstractFlow$collect$1> cVar) {
        super(cVar);
        this.f61398j = abstractFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61397i = obj;
        this.f61399k |= Integer.MIN_VALUE;
        return this.f61398j.collect(null, this);
    }
}
