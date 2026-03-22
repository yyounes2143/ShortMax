package androidx.room.concurrent;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CloseBarrier.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCloseBarrier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloseBarrier.kt\nandroidx/room/concurrent/CloseBarrier\n+ 2 Synchronized.jvmAndroid.kt\nandroidx/room/concurrent/Synchronized_jvmAndroidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Atomics.kt\nandroidx/room/concurrent/AtomicsKt\n*L\n1#1,106:1\n22#2:107\n22#2:108\n22#2:110\n1#3:109\n40#4,2:111\n*S KotlinDebug\n*F\n+ 1 CloseBarrier.kt\nandroidx/room/concurrent/CloseBarrier\n*L\n53#1:107\n69#1:108\n83#1:110\n89#1:111,2\n*E\n"})
/* loaded from: classes2.dex */
public final class CloseBarrier {
    @NotNull
    private final AtomicInteger blockers;
    @NotNull
    private final Function0<Unit> closeAction;
    @NotNull
    private final AtomicBoolean closeInitiated;

    public CloseBarrier(@NotNull Function0<Unit> closeAction) {
        Intrinsics.checkNotNullParameter(closeAction, "closeAction");
        this.closeAction = closeAction;
        this.blockers = new AtomicInteger(0);
        this.closeInitiated = new AtomicBoolean(false);
    }

    private final boolean isClosed() {
        return this.closeInitiated.get();
    }

    public final boolean block$room_runtime() {
        synchronized (this) {
            if (isClosed()) {
                return false;
            }
            this.blockers.incrementAndGet();
            return true;
        }
    }

    public final void close$room_runtime() {
        synchronized (this) {
            if (!this.closeInitiated.compareAndSet(false, true)) {
                return;
            }
            Unit unit = Unit.f60915a;
            do {
            } while (this.blockers.get() != 0);
            this.closeAction.invoke();
        }
    }

    public final void unblock$room_runtime() {
        synchronized (this) {
            this.blockers.decrementAndGet();
            if (this.blockers.get() >= 0) {
                Unit unit = Unit.f60915a;
            } else {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }
}
