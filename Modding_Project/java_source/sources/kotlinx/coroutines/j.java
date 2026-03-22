package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builders.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j<T> extends mt.w<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61824e = AtomicIntegerFieldUpdater.newUpdater(j.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    public j(@NotNull CoroutineContext coroutineContext, @NotNull rs.c<? super T> cVar) {
        super(coroutineContext, cVar);
    }

    private final boolean X0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61824e;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f61824e.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean Y0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f61824e;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f61824e.compareAndSet(this, 0, 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mt.w, kotlinx.coroutines.JobSupport
    public void G(@Nullable Object obj) {
        Q0(obj);
    }

    @Override // mt.w, kotlinx.coroutines.a
    protected void Q0(@Nullable Object obj) {
        if (X0()) {
            return;
        }
        mt.i.b(kotlin.coroutines.intrinsics.a.c(this.f62707d), gt.u.a(obj, this.f62707d));
    }

    @Nullable
    public final Object V0() {
        if (Y0()) {
            return kotlin.coroutines.intrinsics.a.f();
        }
        Object h10 = u.h(e0());
        if (!(h10 instanceof gt.t)) {
            return h10;
        }
        throw ((gt.t) h10).f52556a;
    }
}
