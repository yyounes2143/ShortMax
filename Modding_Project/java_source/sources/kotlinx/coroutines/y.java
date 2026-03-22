package kotlinx.coroutines;

import gt.g1;
import gt.s0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interruptible.kt */
@Metadata
/* loaded from: classes8.dex */
final class y extends g1 {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61919g = AtomicIntegerFieldUpdater.newUpdater(y.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;

    /* renamed from: e  reason: collision with root package name */
    private final Thread f61920e = Thread.currentThread();
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private s0 f61921f;

    private final Void z(int i10) {
        throw new IllegalStateException(("Illegal state " + i10).toString());
    }

    public final void A(@NotNull r rVar) {
        s0 o10;
        int i10;
        o10 = JobKt__JobKt.o(rVar, false, this, 1, null);
        this.f61921f = o10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61919g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 2 && i10 != 3) {
                    z(i10);
                    throw new KotlinNothingValueException();
                }
                return;
            }
        } while (!f61919g.compareAndSet(this, i10, 0));
    }

    @Override // gt.g1
    public boolean u() {
        return true;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61919g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2 && i10 != 3) {
                    z(i10);
                    throw new KotlinNothingValueException();
                }
                return;
            }
        } while (!f61919g.compareAndSet(this, i10, 2));
        this.f61920e.interrupt();
        f61919g.set(this, 3);
    }

    public final void x() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61919g;
        while (true) {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        z(i10);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f61919g.compareAndSet(this, i10, 1)) {
                s0 s0Var = this.f61921f;
                if (s0Var != null) {
                    s0Var.dispose();
                    return;
                }
                return;
            }
        }
    }
}
