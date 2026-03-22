package kt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharedFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,746:1\n1#2:747\n*E\n"})
/* loaded from: classes8.dex */
public final class h extends lt.c<SharedFlowImpl<?>> {

    /* renamed from: a  reason: collision with root package name */
    public long f62039a = -1;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public rs.c<? super Unit> f62040b;

    @Override // lt.c
    /* renamed from: c */
    public boolean a(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        if (this.f62039a >= 0) {
            return false;
        }
        this.f62039a = sharedFlowImpl.X();
        return true;
    }

    @Override // lt.c
    @NotNull
    /* renamed from: d */
    public rs.c<Unit>[] b(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        long j10 = this.f62039a;
        this.f62039a = -1L;
        this.f62040b = null;
        return sharedFlowImpl.W(j10);
    }
}
