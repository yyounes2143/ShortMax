package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: Runnable.kt */
@Metadata
/* loaded from: classes.dex */
final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    @NotNull
    private final rs.c<Unit> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(@NotNull rs.c<? super Unit> cVar) {
        super(false);
        this.continuation = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (compareAndSet(false, true)) {
            rs.c<Unit> cVar = this.continuation;
            Result.a aVar = Result.f60901b;
            cVar.resumeWith(Result.d(Unit.f60915a));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
