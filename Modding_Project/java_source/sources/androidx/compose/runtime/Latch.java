package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Latch.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nLatch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Latch.kt\nandroidx/compose/runtime/Latch\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,86:1\n25#2,5:87\n33#2:92\n33#2:93\n33#2:94\n33#2:104\n318#3,9:95\n327#3,2:105\n*S KotlinDebug\n*F\n+ 1 Latch.kt\nandroidx/compose/runtime/Latch\n*L\n36#1:87,5\n42#1:92\n54#1:93\n58#1:94\n80#1:104\n79#1:95,9\n79#1:105,2\n*E\n"})
/* loaded from: classes.dex */
public final class Latch {
    public static final int $stable = 8;
    @NotNull
    private final Object lock = new Object();
    @NotNull
    private List<rs.c<Unit>> awaiters = new ArrayList();
    @NotNull
    private List<rs.c<Unit>> spareList = new ArrayList();
    private boolean _isOpen = true;

    @Nullable
    public final Object await(@NotNull rs.c<? super Unit> cVar) {
        if (isOpen()) {
            return Unit.f60915a;
        }
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        synchronized (this.lock) {
            this.awaiters.add(eVar);
        }
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Latch$await$2$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th2) {
                Object obj = Latch.this.lock;
                Latch latch = Latch.this;
                gt.i<Unit> iVar = eVar;
                synchronized (obj) {
                    latch.awaiters.remove(iVar);
                    Unit unit = Unit.f60915a;
                }
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    public final void closeLatch() {
        synchronized (this.lock) {
            this._isOpen = false;
            Unit unit = Unit.f60915a;
        }
    }

    public final boolean isOpen() {
        boolean z10;
        synchronized (this.lock) {
            z10 = this._isOpen;
        }
        return z10;
    }

    public final void openLatch() {
        synchronized (this.lock) {
            try {
                if (isOpen()) {
                    return;
                }
                List<rs.c<Unit>> list = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = list;
                this._isOpen = true;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Result.a aVar = Result.f60901b;
                    list.get(i10).resumeWith(Result.d(Unit.f60915a));
                }
                list.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final <R> R withClosed(@NotNull Function0<? extends R> function0) {
        closeLatch();
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            openLatch();
            InlineMarker.finallyEnd(1);
        }
    }
}
