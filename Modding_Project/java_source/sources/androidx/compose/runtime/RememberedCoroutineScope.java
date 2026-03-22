package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Effects.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/RememberedCoroutineScope\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,611:1\n26#2:612\n33#2:617\n33#2:618\n44#3,4:613\n*S KotlinDebug\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/RememberedCoroutineScope\n*L\n461#1:612\n499#1:617\n528#1:618\n481#1:613,4\n*E\n"})
/* loaded from: classes.dex */
public final class RememberedCoroutineScope implements gt.g0, RememberObserver {
    @Nullable
    private volatile CoroutineContext _coroutineContext;
    @NotNull
    private final Object lock = this;
    @NotNull
    private final CoroutineContext overlayContext;
    @NotNull
    private final CoroutineContext parentContext;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    public static final CoroutineContext CancelledCoroutineContext = new CancelledCoroutineContext();

    /* compiled from: Effects.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RememberedCoroutineScope(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext coroutineContext2) {
        this.parentContext = coroutineContext;
        this.overlayContext = coroutineContext2;
    }

    public final void cancelIfCreated() {
        synchronized (this.lock) {
            try {
                CoroutineContext coroutineContext = this._coroutineContext;
                if (coroutineContext == null) {
                    this._coroutineContext = CancelledCoroutineContext;
                } else {
                    kotlinx.coroutines.t.c(coroutineContext, new ForgottenCoroutineScopeException());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        CoroutineContext coroutineContext;
        CoroutineContext coroutineContext2;
        CoroutineContext coroutineContext3 = this._coroutineContext;
        if (coroutineContext3 == null || coroutineContext3 == CancelledCoroutineContext) {
            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.parentContext.get(CompositionErrorContextImpl.Key);
            if (compositionErrorContextImpl != null) {
                coroutineContext = new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(gt.d0.D8, compositionErrorContextImpl, this);
            } else {
                coroutineContext = EmptyCoroutineContext.f61040a;
            }
            synchronized (this.lock) {
                try {
                    coroutineContext2 = this._coroutineContext;
                    if (coroutineContext2 == null) {
                        CoroutineContext coroutineContext4 = this.parentContext;
                        coroutineContext2 = coroutineContext4.plus(kotlinx.coroutines.t.a((r) coroutineContext4.get(r.G8))).plus(this.overlayContext).plus(coroutineContext);
                    } else if (coroutineContext2 == CancelledCoroutineContext) {
                        CoroutineContext coroutineContext5 = this.parentContext;
                        gt.s a10 = kotlinx.coroutines.t.a((r) coroutineContext5.get(r.G8));
                        a10.cancel((CancellationException) new ForgottenCoroutineScopeException());
                        coroutineContext2 = coroutineContext5.plus(a10).plus(this.overlayContext).plus(coroutineContext);
                    }
                    this._coroutineContext = coroutineContext2;
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            coroutineContext3 = coroutineContext2;
        }
        Intrinsics.checkNotNull(coroutineContext3);
        return coroutineContext3;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }
}
