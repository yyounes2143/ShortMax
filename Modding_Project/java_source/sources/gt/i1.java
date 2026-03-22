package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i1 extends p1 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final rs.c<Unit> f52541d;

    public i1(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, false);
        this.f52541d = kotlin.coroutines.intrinsics.a.a(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void A0() {
        nt.a.c(this.f52541d, this);
    }
}
