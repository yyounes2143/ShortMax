package k5;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;
/* compiled from: EventStore.java */
@WorkerThread
/* loaded from: classes4.dex */
public interface d extends Closeable {
    void O(Iterable<k> iterable);

    Iterable<c5.p> Q();

    Iterable<k> X(c5.p pVar);

    @Nullable
    k e(c5.p pVar, c5.i iVar);

    long j(c5.p pVar);

    void k0(Iterable<k> iterable);

    boolean n(c5.p pVar);

    void v0(c5.p pVar, long j10);

    int z();
}
