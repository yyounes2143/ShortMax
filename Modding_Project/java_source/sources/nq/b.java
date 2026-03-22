package nq;

import io.bidmachine.rendering.internal.state.a;
import io.bidmachine.util.Tag;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public class b implements io.bidmachine.rendering.internal.state.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Tag f63019a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f63020b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f63021c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f63022d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f63023e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f63024f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f63025g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f63026h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f63027i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f63028j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final AtomicBoolean f63029k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f63030l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Set<a.b> f63031m;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements a.b {
        a() {
        }

        @Override // io.bidmachine.rendering.internal.state.a.b
        public void a(@NotNull io.bidmachine.rendering.internal.state.a source, @NotNull a.EnumC0820a event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            Tag tag = b.this.f63019a;
            s.g(tag, "Event: " + event, new Object[0]);
        }
    }

    public b(@NotNull String parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.f63019a = new Tag("DefaultAdState(" + parent + ')');
        this.f63020b = new AtomicBoolean(false);
        this.f63021c = new AtomicBoolean(false);
        this.f63022d = new AtomicBoolean(false);
        this.f63023e = new AtomicBoolean(false);
        this.f63024f = new AtomicBoolean(false);
        this.f63025g = new AtomicBoolean(false);
        this.f63026h = new AtomicBoolean(false);
        this.f63027i = new AtomicBoolean(false);
        this.f63028j = new AtomicBoolean(false);
        this.f63029k = new AtomicBoolean(false);
        this.f63030l = new AtomicBoolean(false);
        this.f63031m = new LinkedHashSet();
        a(new a());
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public final void a(@NotNull a.b observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (h()) {
            return;
        }
        synchronized (this.f63031m) {
            this.f63031m.add(observer);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean b() {
        return this.f63020b.get() && !h();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean d() {
        return this.f63022d.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean e() {
        boolean compareAndSet = this.f63027i.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.Clicked);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean f() {
        boolean compareAndSet = this.f63026h.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.FailedToShow);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean g() {
        return this.f63028j.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean h() {
        return this.f63023e.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean i() {
        boolean compareAndSet = this.f63025g.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.Shown);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean j() {
        boolean compareAndSet = this.f63028j.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.Finished);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean k() {
        boolean compareAndSet = this.f63030l.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.Expired);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public void l() {
        this.f63022d.set(true);
        d(a.EnumC0820a.ShowInitiated);
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean m() {
        return this.f63025g.get();
    }

    private final void d(a.EnumC0820a enumC0820a) {
        synchronized (this.f63031m) {
            try {
                for (a.b bVar : this.f63031m) {
                    bVar.a(this, enumC0820a);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public final void b(@NotNull a.b observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        synchronized (this.f63031m) {
            this.f63031m.remove(observer);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean c() {
        boolean compareAndSet = this.f63021c.compareAndSet(false, true);
        if (compareAndSet) {
            d(a.EnumC0820a.LoadingStarted);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean a(boolean z10) {
        boolean z11 = false;
        this.f63021c.set(false);
        this.f63020b.set(z10);
        if (this.f63024f.compareAndSet(false, true) && !h()) {
            z11 = true;
        }
        if (z11) {
            d(z10 ? a.EnumC0820a.Loaded : a.EnumC0820a.FailedToLoad);
        }
        return z11;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean b(boolean z10) {
        boolean compareAndSet = this.f63029k.compareAndSet(!z10, z10);
        if (compareAndSet) {
            d(z10 ? a.EnumC0820a.Appeared : a.EnumC0820a.Disappeared);
        }
        return compareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public void a() {
        this.f63023e.set(true);
        this.f63020b.set(false);
        this.f63021c.set(false);
        this.f63022d.set(false);
        this.f63024f.set(false);
        this.f63025g.set(false);
        this.f63026h.set(false);
        this.f63027i.set(false);
        this.f63028j.set(false);
        this.f63029k.set(false);
        this.f63030l.set(false);
        d(a.EnumC0820a.Destroyed);
        synchronized (this.f63031m) {
            this.f63031m.clear();
            Unit unit = Unit.f60915a;
        }
    }
}
