package kotlinx.coroutines;

import gt.g1;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
final class p extends g1 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61830f = AtomicIntegerFieldUpdater.newUpdater(p.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Function1<Throwable, Unit> f61831e;

    /* JADX WARN: Multi-variable type inference failed */
    public p(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f61831e = function1;
    }

    @Override // gt.g1
    public boolean u() {
        return true;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        if (f61830f.compareAndSet(this, 0, 1)) {
            this.f61831e.invoke(th2);
        }
    }
}
