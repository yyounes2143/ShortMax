package tp;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes8.dex */
public abstract class b0 implements y, u, w, v, a0, z, j {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final jq.b f67601a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f67602b = new CopyOnWriteArrayList();

    /* loaded from: classes8.dex */
    class a extends b {
        a() {
            super(null);
        }

        @Override // yq.m
        public void s() {
            b0.this.r().h();
            b0.this.f67602b.remove(this);
        }
    }

    /* loaded from: classes8.dex */
    private static abstract class b implements r {

        /* renamed from: a  reason: collision with root package name */
        private long f67604a;

        /* renamed from: b  reason: collision with root package name */
        private long f67605b;

        private b() {
        }

        private long e() {
            return Math.max(this.f67605b - System.currentTimeMillis(), 0L);
        }

        public void a() {
            this.f67604a = e();
            sq.j.d(this);
        }

        public void c(long j10) {
            this.f67604a = j10;
            this.f67605b = System.currentTimeMillis() + j10;
            d();
        }

        public void d() {
            long j10 = this.f67604a;
            if (j10 > 0) {
                sq.j.l(this, j10);
            } else {
                sq.j.k(this);
            }
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public b0(@NonNull jq.b bVar) {
        this.f67601a = bVar;
    }

    @Override // tp.a0
    public void a(@Nullable String str) {
    }

    public void b() {
    }

    public void e() {
    }

    @Override // tp.y
    public void l() {
        for (b bVar : this.f67602b) {
            bVar.d();
        }
    }

    @Override // tp.y
    public void pause() {
        for (b bVar : this.f67602b) {
            bVar.a();
        }
    }

    @NonNull
    public jq.b r() {
        return this.f67601a;
    }

    @NonNull
    public abstract String s();

    public void a(@Nullable Integer num) {
    }

    public void b(@Nullable Integer num) {
    }

    @Override // tp.v
    public void e(long j10, long j11, float f10) {
    }

    @Override // tp.y
    public void a(long j10) {
        a aVar = new a();
        this.f67602b.add(aVar);
        aVar.c(j10);
    }

    @CallSuper
    public void a() {
        for (b bVar : this.f67602b) {
            bVar.a();
        }
        this.f67602b.clear();
    }

    public void k() {
    }
}
