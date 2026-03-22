package gt;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventLoop.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
/* loaded from: classes8.dex */
public final class u1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final u1 f52561a = new u1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<u0> f52562b = mt.k0.a(new mt.a0("ThreadLocalEventLoop"));

    private u1() {
    }

    @Nullable
    public final u0 a() {
        return f52562b.get();
    }

    @NotNull
    public final u0 b() {
        ThreadLocal<u0> threadLocal = f52562b;
        u0 u0Var = threadLocal.get();
        if (u0Var == null) {
            u0 a10 = x0.a();
            threadLocal.set(a10);
            return a10;
        }
        return u0Var;
    }

    public final void c() {
        f52562b.set(null);
    }

    public final void d(@NotNull u0 u0Var) {
        f52562b.set(u0Var);
    }
}
