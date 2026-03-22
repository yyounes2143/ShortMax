package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata
@SourceDebugExtension({"SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"})
/* loaded from: classes8.dex */
final class o1 implements Runnable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c0 f52548a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i<Unit> f52549b;

    /* JADX WARN: Multi-variable type inference failed */
    public o1(@NotNull c0 c0Var, @NotNull i<? super Unit> iVar) {
        this.f52548a = c0Var;
        this.f52549b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f52549b.f(this.f52548a, Unit.f60915a);
    }
}
