package nq;

import gt.g0;
import gt.r1;
import io.bidmachine.rendering.internal.h;
import io.bidmachine.rendering.internal.state.a;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class a implements g0, a.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.state.a f63017a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f63018b;

    public a(@NotNull io.bidmachine.rendering.internal.state.a adState, @NotNull h coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.f63017a = adState;
        this.f63018b = r1.b(null, 1, null).plus(coroutineDispatchers.i());
        if (adState.h()) {
            i.e(this, null, 1, null);
        } else {
            adState.a(this);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a.b
    public void a(@NotNull io.bidmachine.rendering.internal.state.a source, @NotNull a.EnumC0820a event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == a.EnumC0820a.Destroyed && Intrinsics.areEqual(this.f63017a, source)) {
            i.e(this, null, 1, null);
            source.b(this);
        }
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f63018b;
    }
}
