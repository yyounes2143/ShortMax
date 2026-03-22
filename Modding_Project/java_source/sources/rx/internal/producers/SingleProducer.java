package rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import ku.e;
import ku.i;
import lu.a;
/* loaded from: classes8.dex */
public final class SingleProducer<T> extends AtomicBoolean implements e {

    /* renamed from: a  reason: collision with root package name */
    final i<? super T> f66165a;

    /* renamed from: b  reason: collision with root package name */
    final T f66166b;

    public SingleProducer(i<? super T> iVar, T t10) {
        this.f66165a = iVar;
        this.f66166b = t10;
    }

    @Override // ku.e
    public void request(long j10) {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (i10 != 0 && compareAndSet(false, true)) {
                i<? super T> iVar = this.f66165a;
                if (iVar.d()) {
                    return;
                }
                Object obj = (T) this.f66166b;
                try {
                    iVar.b(obj);
                    if (iVar.d()) {
                        return;
                    }
                    iVar.a();
                    return;
                } catch (Throwable th2) {
                    a.e(th2, iVar, obj);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("n >= 0 required");
    }
}
