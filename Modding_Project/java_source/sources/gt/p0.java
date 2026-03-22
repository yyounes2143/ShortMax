package gt;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p0 implements Executor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final c0 f52550a;

    public p0(@NotNull c0 c0Var) {
        this.f52550a = c0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        c0 c0Var = this.f52550a;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f61040a;
        if (mt.i.d(c0Var, emptyCoroutineContext)) {
            mt.i.c(this.f52550a, emptyCoroutineContext, runnable);
        } else {
            runnable.run();
        }
    }

    @NotNull
    public String toString() {
        return this.f52550a.toString();
    }
}
