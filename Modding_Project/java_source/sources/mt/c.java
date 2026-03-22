package mt;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentLinkedList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n*E\n"})
/* loaded from: classes8.dex */
public abstract class c<N extends c<N>> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f62657a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_next$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f62658b = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public c(@Nullable N n10) {
        this._prev$volatile = n10;
    }

    private final N d() {
        N h10 = h();
        while (h10 != null && h10.k()) {
            h10 = (N) f62658b.get(h10);
        }
        return h10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [mt.c] */
    private final N e() {
        N f10 = f();
        Intrinsics.checkNotNull(f10);
        while (f10.k()) {
            ?? f11 = f10.f();
            if (f11 == 0) {
                return f10;
            }
            f10 = f11;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g() {
        return f62657a.get(this);
    }

    public final void c() {
        f62658b.set(this, null);
    }

    @Nullable
    public final N f() {
        Object g10 = g();
        if (g10 == b.a()) {
            return null;
        }
        return (N) g10;
    }

    @Nullable
    public final N h() {
        return (N) f62658b.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        if (f() == null) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        return androidx.concurrent.futures.a.a(f62657a, this, null, b.a());
    }

    public final void n() {
        Object obj;
        N n10;
        if (l()) {
            return;
        }
        while (true) {
            N d10 = d();
            N e10 = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f62658b;
            do {
                obj = atomicReferenceFieldUpdater.get(e10);
                if (((c) obj) == null) {
                    n10 = null;
                } else {
                    n10 = d10;
                }
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, e10, obj, n10));
            if (d10 != null) {
                f62657a.set(d10, e10);
            }
            if (!e10.k() || e10.l()) {
                if (d10 == null || !d10.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(@NotNull N n10) {
        return androidx.concurrent.futures.a.a(f62657a, this, null, n10);
    }
}
