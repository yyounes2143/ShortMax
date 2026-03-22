package ou;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import ku.f;
import ku.j;
import rx.internal.util.RxThreadFactory;
/* compiled from: EventLoopsScheduler.java */
/* loaded from: classes8.dex */
public final class a extends f {

    /* renamed from: b  reason: collision with root package name */
    static final int f64410b;

    /* renamed from: c  reason: collision with root package name */
    static final c f64411c;

    /* renamed from: d  reason: collision with root package name */
    static final b f64412d;

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<b> f64413a;

    /* compiled from: EventLoopsScheduler.java */
    /* renamed from: ou.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0892a extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private final pu.b f64414a;

        /* renamed from: b  reason: collision with root package name */
        private final ru.a f64415b;

        /* renamed from: c  reason: collision with root package name */
        private final pu.b f64416c;

        /* renamed from: d  reason: collision with root package name */
        private final c f64417d;

        /* compiled from: EventLoopsScheduler.java */
        /* renamed from: ou.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class C0893a implements mu.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ mu.a f64418a;

            C0893a(mu.a aVar) {
                this.f64418a = aVar;
            }

            @Override // mu.a
            public void call() {
                if (C0892a.this.d()) {
                    return;
                }
                this.f64418a.call();
            }
        }

        C0892a(c cVar) {
            pu.b bVar = new pu.b();
            this.f64414a = bVar;
            ru.a aVar = new ru.a();
            this.f64415b = aVar;
            this.f64416c = new pu.b(bVar, aVar);
            this.f64417d = cVar;
        }

        @Override // ku.f.a
        public j a(mu.a aVar) {
            if (d()) {
                return ru.b.a();
            }
            return this.f64417d.j(new C0893a(aVar), 0L, null, this.f64414a);
        }

        @Override // ku.j
        public boolean d() {
            return this.f64416c.d();
        }

        @Override // ku.j
        public void e() {
            this.f64416c.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventLoopsScheduler.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f64420a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f64421b;

        /* renamed from: c  reason: collision with root package name */
        long f64422c;

        b(ThreadFactory threadFactory, int i10) {
            this.f64420a = i10;
            this.f64421b = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                this.f64421b[i11] = new c(threadFactory);
            }
        }

        public c a() {
            int i10 = this.f64420a;
            if (i10 == 0) {
                return a.f64411c;
            }
            c[] cVarArr = this.f64421b;
            long j10 = this.f64422c;
            this.f64422c = 1 + j10;
            return cVarArr[(int) (j10 % i10)];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventLoopsScheduler.java */
    /* loaded from: classes8.dex */
    public static final class c extends ou.b {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int intValue = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (intValue <= 0 || intValue > availableProcessors) {
            intValue = availableProcessors;
        }
        f64410b = intValue;
        c cVar = new c(RxThreadFactory.f66173b);
        f64411c = cVar;
        cVar.e();
        f64412d = new b(null, 0);
    }

    @Override // ku.f
    public f.a a() {
        return new C0892a(this.f64413a.get().a());
    }

    public j b(mu.a aVar) {
        return this.f64413a.get().a().i(aVar, -1L, TimeUnit.NANOSECONDS);
    }
}
