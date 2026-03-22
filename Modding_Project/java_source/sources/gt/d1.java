package gt;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d1 {
    @NotNull
    public static final Executor a(@NotNull c0 c0Var) {
        b1 b1Var;
        Executor m10;
        if (c0Var instanceof b1) {
            b1Var = (b1) c0Var;
        } else {
            b1Var = null;
        }
        if (b1Var == null || (m10 = b1Var.m()) == null) {
            return new p0(c0Var);
        }
        return m10;
    }

    @NotNull
    public static final c0 b(@NotNull Executor executor) {
        p0 p0Var;
        c0 c0Var;
        if (executor instanceof p0) {
            p0Var = (p0) executor;
        } else {
            p0Var = null;
        }
        if (p0Var == null || (c0Var = p0Var.f52550a) == null) {
            return new c1(executor);
        }
        return c0Var;
    }

    @NotNull
    public static final b1 c(@NotNull ExecutorService executorService) {
        return new c1(executorService);
    }
}
