package mt;

import androidx.core.internal.view.SupportMenu;
import gt.m1;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,265:1\n248#2,4:266\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n221#1:266,4\n*E\n"})
/* loaded from: classes8.dex */
public abstract class x<S extends x<S>> extends c<S> implements m1 {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f62708d = AtomicIntegerFieldUpdater.newUpdater(x.class, "cleanedAndPointers$volatile");

    /* renamed from: c  reason: collision with root package name */
    public final long f62709c;
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    public x(long j10, @Nullable S s10, int i10) {
        super(s10);
        this.f62709c = j10;
        this.cleanedAndPointers$volatile = i10 << 16;
    }

    @Override // mt.c
    public boolean k() {
        if (f62708d.get(this) == r() && !l()) {
            return true;
        }
        return false;
    }

    public final boolean p() {
        if (f62708d.addAndGet(this, SupportMenu.CATEGORY_MASK) == r() && !l()) {
            return true;
        }
        return false;
    }

    public abstract int r();

    public abstract void s(int i10, @Nullable Throwable th2, @NotNull CoroutineContext coroutineContext);

    public final void t() {
        if (f62708d.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f62708d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
