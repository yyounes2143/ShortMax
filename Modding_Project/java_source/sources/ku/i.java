package ku;
/* compiled from: Subscriber.java */
/* loaded from: classes8.dex */
public abstract class i<T> implements d<T>, j {

    /* renamed from: a  reason: collision with root package name */
    private final pu.b f62051a;

    /* renamed from: b  reason: collision with root package name */
    private final i<?> f62052b;

    /* renamed from: c  reason: collision with root package name */
    private e f62053c;

    /* renamed from: d  reason: collision with root package name */
    private long f62054d;

    /* JADX INFO: Access modifiers changed from: protected */
    public i() {
        this(null, false);
    }

    private void f(long j10) {
        long j11 = this.f62054d;
        if (j11 == Long.MIN_VALUE) {
            this.f62054d = j10;
            return;
        }
        long j12 = j11 + j10;
        if (j12 < 0) {
            this.f62054d = Long.MAX_VALUE;
        } else {
            this.f62054d = j12;
        }
    }

    public final void c(j jVar) {
        this.f62051a.a(jVar);
    }

    @Override // ku.j
    public final boolean d() {
        return this.f62051a.d();
    }

    @Override // ku.j
    public final void e() {
        this.f62051a.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(long j10) {
        if (j10 >= 0) {
            synchronized (this) {
                e eVar = this.f62053c;
                if (eVar != null) {
                    eVar.request(j10);
                    return;
                } else {
                    f(j10);
                    return;
                }
            }
        }
        throw new IllegalArgumentException("number requested cannot be negative: " + j10);
    }

    public void i(e eVar) {
        long j10;
        i<?> iVar;
        boolean z10;
        synchronized (this) {
            j10 = this.f62054d;
            this.f62053c = eVar;
            iVar = this.f62052b;
            if (iVar != null && j10 == Long.MIN_VALUE) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            iVar.i(eVar);
        } else if (j10 == Long.MIN_VALUE) {
            eVar.request(Long.MAX_VALUE);
        } else {
            eVar.request(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(i<?> iVar) {
        this(iVar, true);
    }

    protected i(i<?> iVar, boolean z10) {
        this.f62054d = Long.MIN_VALUE;
        this.f62052b = iVar;
        this.f62051a = (!z10 || iVar == null) ? new pu.b() : iVar.f62051a;
    }

    public void g() {
    }
}
