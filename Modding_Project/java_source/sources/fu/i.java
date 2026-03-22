package fu;

import fu.e;
import fu.i;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;
/* compiled from: DefaultCallAdapterFactory.java */
/* loaded from: classes8.dex */
final class i extends e.a {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f52037a;

    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes8.dex */
    class a implements e<Object, d<?>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Type f52038a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Executor f52039b;

        a(Type type, Executor executor) {
            this.f52038a = type;
            this.f52039b = executor;
        }

        @Override // fu.e
        public Type b() {
            return this.f52038a;
        }

        @Override // fu.e
        /* renamed from: c */
        public d<Object> a(d<Object> dVar) {
            Executor executor = this.f52039b;
            if (executor != null) {
                return new b(executor, dVar);
            }
            return dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes8.dex */
    public static final class b<T> implements d<T> {

        /* renamed from: a  reason: collision with root package name */
        final Executor f52041a;

        /* renamed from: b  reason: collision with root package name */
        final d<T> f52042b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DefaultCallAdapterFactory.java */
        /* loaded from: classes8.dex */
        public class a implements f<T> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ f f52043a;

            a(f fVar) {
                this.f52043a = fVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void e(f fVar, Throwable th2) {
                fVar.a(b.this, th2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void f(f fVar, c0 c0Var) {
                if (b.this.f52042b.isCanceled()) {
                    fVar.a(b.this, new IOException("Canceled"));
                } else {
                    fVar.b(b.this, c0Var);
                }
            }

            @Override // fu.f
            public void a(d<T> dVar, final Throwable th2) {
                Executor executor = b.this.f52041a;
                final f fVar = this.f52043a;
                executor.execute(new Runnable() { // from class: fu.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.b.a.this.e(fVar, th2);
                    }
                });
            }

            @Override // fu.f
            public void b(d<T> dVar, final c0<T> c0Var) {
                Executor executor = b.this.f52041a;
                final f fVar = this.f52043a;
                executor.execute(new Runnable() { // from class: fu.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.b.a.this.f(fVar, c0Var);
                    }
                });
            }
        }

        b(Executor executor, d<T> dVar) {
            this.f52041a = executor;
            this.f52042b = dVar;
        }

        @Override // fu.d
        public void cancel() {
            this.f52042b.cancel();
        }

        @Override // fu.d
        public void d(f<T> fVar) {
            Objects.requireNonNull(fVar, "callback == null");
            this.f52042b.d(new a(fVar));
        }

        @Override // fu.d
        public c0<T> execute() throws IOException {
            return this.f52042b.execute();
        }

        @Override // fu.d
        public boolean isCanceled() {
            return this.f52042b.isCanceled();
        }

        @Override // fu.d
        public Request request() {
            return this.f52042b.request();
        }

        @Override // fu.d
        /* renamed from: clone */
        public d<T> m4852clone() {
            return new b(this.f52041a, this.f52042b.clone());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Executor executor) {
        this.f52037a = executor;
    }

    @Override // fu.e.a
    public e<?, ?> a(Type type, Annotation[] annotationArr, d0 d0Var) {
        Executor executor = null;
        if (e.a.c(type) != d.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type g10 = h0.g(0, (ParameterizedType) type);
            if (!h0.l(annotationArr, f0.class)) {
                executor = this.f52037a;
            }
            return new a(g10, executor);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
