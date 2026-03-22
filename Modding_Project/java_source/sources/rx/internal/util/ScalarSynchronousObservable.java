package rx.internal.util;

import java.util.concurrent.atomic.AtomicBoolean;
import ku.c;
import ku.e;
import ku.f;
import ku.i;
import ku.j;
/* loaded from: classes8.dex */
public final class ScalarSynchronousObservable<T> extends ku.c<T> {

    /* renamed from: c  reason: collision with root package name */
    static final boolean f66175c = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();

    /* renamed from: b  reason: collision with root package name */
    final T f66176b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static final class ScalarAsyncProducer<T> extends AtomicBoolean implements e, mu.a {

        /* renamed from: a  reason: collision with root package name */
        final i<? super T> f66177a;

        /* renamed from: b  reason: collision with root package name */
        final T f66178b;

        /* renamed from: c  reason: collision with root package name */
        final mu.c<mu.a, j> f66179c;

        public ScalarAsyncProducer(i<? super T> iVar, T t10, mu.c<mu.a, j> cVar) {
            this.f66177a = iVar;
            this.f66178b = t10;
            this.f66179c = cVar;
        }

        @Override // mu.a
        public void call() {
            i<? super T> iVar = this.f66177a;
            if (iVar.d()) {
                return;
            }
            Object obj = (T) this.f66178b;
            try {
                iVar.b(obj);
                if (iVar.d()) {
                    return;
                }
                iVar.a();
            } catch (Throwable th2) {
                lu.a.e(th2, iVar, obj);
            }
        }

        @Override // ku.e
        public void request(long j10) {
            int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i10 >= 0) {
                if (i10 != 0 && compareAndSet(false, true)) {
                    this.f66177a.c(this.f66179c.a(this));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("n >= 0 required but it was " + j10);
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean
        public String toString() {
            return "ScalarAsyncProducer[" + this.f66178b + ", " + get() + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class a implements mu.c<mu.a, j> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ou.a f66180a;

        a(ou.a aVar) {
            this.f66180a = aVar;
        }

        @Override // mu.c
        /* renamed from: b */
        public j a(mu.a aVar) {
            return this.f66180a.b(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class b implements mu.c<mu.a, j> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f66182a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes8.dex */
        public class a implements mu.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ mu.a f66184a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ f.a f66185b;

            a(mu.a aVar, f.a aVar2) {
                this.f66184a = aVar;
                this.f66185b = aVar2;
            }

            @Override // mu.a
            public void call() {
                try {
                    this.f66184a.call();
                } finally {
                    this.f66185b.e();
                }
            }
        }

        b(f fVar) {
            this.f66182a = fVar;
        }

        @Override // mu.c
        /* renamed from: b */
        public j a(mu.a aVar) {
            f.a a10 = this.f66182a.a();
            a10.a(new a(aVar, a10));
            return a10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static final class c<T> implements c.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f66187a;

        /* renamed from: b  reason: collision with root package name */
        final mu.c<mu.a, j> f66188b;

        c(T t10, mu.c<mu.a, j> cVar) {
            this.f66187a = t10;
            this.f66188b = cVar;
        }

        @Override // mu.b
        /* renamed from: b */
        public void a(i<? super T> iVar) {
            iVar.i(new ScalarAsyncProducer(iVar, this.f66187a, this.f66188b));
        }
    }

    public ku.c<T> h(f fVar) {
        mu.c bVar;
        if (fVar instanceof ou.a) {
            bVar = new a((ou.a) fVar);
        } else {
            bVar = new b(fVar);
        }
        return ku.c.f(new c(this.f66176b, bVar));
    }
}
