package gt;

import gt.v0;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class w0 extends u0 {
    @NotNull
    protected abstract Thread Y();

    /* JADX INFO: Access modifiers changed from: protected */
    public void Z(long j10, @NotNull v0.c cVar) {
        i0.f52539g.o0(j10, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a0() {
        Thread Y = Y();
        if (Thread.currentThread() != Y) {
            b.a();
            LockSupport.unpark(Y);
        }
    }
}
