package mt;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeTaskQueue.kt */
@Metadata
/* loaded from: classes8.dex */
public class n<E> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f62688a = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public n(boolean z10) {
        this._cur$volatile = new o(8, z10);
    }

    public final boolean a(@NotNull E e10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62688a;
        while (true) {
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            int a10 = oVar.a(e10);
            if (a10 == 0) {
                return true;
            }
            if (a10 != 1) {
                if (a10 == 2) {
                    return false;
                }
            } else {
                androidx.concurrent.futures.a.a(f62688a, this, oVar, oVar.l());
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62688a;
        while (true) {
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            if (oVar.d()) {
                return;
            }
            androidx.concurrent.futures.a.a(f62688a, this, oVar, oVar.l());
        }
    }

    public final int c() {
        return ((o) f62688a.get(this)).g();
    }

    @Nullable
    public final E e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62688a;
        while (true) {
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            E e10 = (E) oVar.m();
            if (e10 != o.f62696h) {
                return e10;
            }
            androidx.concurrent.futures.a.a(f62688a, this, oVar, oVar.l());
        }
    }
}
