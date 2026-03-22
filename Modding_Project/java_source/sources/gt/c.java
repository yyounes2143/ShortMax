package gt;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
/* loaded from: classes8.dex */
public final class c<T> extends kotlinx.coroutines.a<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Thread f52528d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u0 f52529e;

    public c(@NotNull CoroutineContext coroutineContext, @NotNull Thread thread, @Nullable u0 u0Var) {
        super(coroutineContext, true, true);
        this.f52528d = thread;
        this.f52529e = u0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void G(@Nullable Object obj) {
        if (!Intrinsics.areEqual(Thread.currentThread(), this.f52528d)) {
            Thread thread = this.f52528d;
            b.a();
            LockSupport.unpark(thread);
        }
    }

    public final T U0() {
        long j10;
        b.a();
        try {
            u0 u0Var = this.f52529e;
            t tVar = null;
            if (u0Var != null) {
                u0.w(u0Var, false, 1, null);
            }
            while (true) {
                u0 u0Var2 = this.f52529e;
                if (u0Var2 != null) {
                    j10 = u0Var2.R();
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (isCompleted()) {
                    break;
                }
                b.a();
                LockSupport.parkNanos(this, j10);
                if (Thread.interrupted()) {
                    K(new InterruptedException());
                }
            }
            u0 u0Var3 = this.f52529e;
            if (u0Var3 != null) {
                u0.o(u0Var3, false, 1, null);
            }
            b.a();
            T t10 = (T) kotlinx.coroutines.u.h(e0());
            if (t10 instanceof t) {
                tVar = (t) t10;
            }
            if (tVar == null) {
                return t10;
            }
            throw tVar.f52556a;
        } catch (Throwable th2) {
            b.a();
            throw th2;
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean l0() {
        return true;
    }
}
