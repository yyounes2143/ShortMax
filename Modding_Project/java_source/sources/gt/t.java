package gt;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompletionState.kt */
@Metadata
/* loaded from: classes8.dex */
public class t {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f52555b = AtomicIntegerFieldUpdater.newUpdater(t.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f52556a;

    public t(@NotNull Throwable th2, boolean z10) {
        this.f52556a = th2;
        this._handled$volatile = z10 ? 1 : 0;
    }

    public final boolean a() {
        if (f52555b.get(this) == 1) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        return f52555b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return h0.a(this) + '[' + this.f52556a + ']';
    }

    public /* synthetic */ t(Throwable th2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th2, (i10 & 2) != 0 ? false : z10);
    }
}
