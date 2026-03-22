package fu;

import android.annotation.TargetApi;
import fu.e;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.HttpException;
/* compiled from: CompletableFutureCallAdapterFactory.java */
@TargetApi(24)
@IgnoreJRERequirement
/* loaded from: classes8.dex */
final class g extends e.a {

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    private static final class a<R> implements e<R, CompletableFuture<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final Type f52021a;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: CompletableFutureCallAdapterFactory.java */
        @IgnoreJRERequirement
        /* renamed from: fu.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0748a implements f<R> {

            /* renamed from: a  reason: collision with root package name */
            private final CompletableFuture<R> f52022a;

            public C0748a(CompletableFuture<R> completableFuture) {
                this.f52022a = completableFuture;
            }

            @Override // fu.f
            public void a(d<R> dVar, Throwable th2) {
                this.f52022a.completeExceptionally(th2);
            }

            @Override // fu.f
            public void b(d<R> dVar, c0<R> c0Var) {
                if (c0Var.d()) {
                    this.f52022a.complete(c0Var.a());
                } else {
                    this.f52022a.completeExceptionally(new HttpException(c0Var));
                }
            }
        }

        a(Type type) {
            this.f52021a = type;
        }

        @Override // fu.e
        public Type b() {
            return this.f52021a;
        }

        @Override // fu.e
        /* renamed from: c */
        public CompletableFuture<R> a(d<R> dVar) {
            b bVar = new b(dVar);
            dVar.d(new C0748a(bVar));
            return bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    public static final class b<T> extends CompletableFuture<T> {

        /* renamed from: a  reason: collision with root package name */
        private final d<?> f52024a;

        b(d<?> dVar) {
            this.f52024a = dVar;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            if (z10) {
                this.f52024a.cancel();
            }
            return super.cancel(z10);
        }
    }

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    private static final class c<R> implements e<R, CompletableFuture<c0<R>>> {

        /* renamed from: a  reason: collision with root package name */
        private final Type f52025a;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: CompletableFutureCallAdapterFactory.java */
        @IgnoreJRERequirement
        /* loaded from: classes8.dex */
        public class a implements f<R> {

            /* renamed from: a  reason: collision with root package name */
            private final CompletableFuture<c0<R>> f52026a;

            public a(CompletableFuture<c0<R>> completableFuture) {
                this.f52026a = completableFuture;
            }

            @Override // fu.f
            public void a(d<R> dVar, Throwable th2) {
                this.f52026a.completeExceptionally(th2);
            }

            @Override // fu.f
            public void b(d<R> dVar, c0<R> c0Var) {
                this.f52026a.complete(c0Var);
            }
        }

        c(Type type) {
            this.f52025a = type;
        }

        @Override // fu.e
        public Type b() {
            return this.f52025a;
        }

        @Override // fu.e
        /* renamed from: c */
        public CompletableFuture<c0<R>> a(d<R> dVar) {
            b bVar = new b(dVar);
            dVar.d(new a(bVar));
            return bVar;
        }
    }

    @Override // fu.e.a
    public e<?, ?> a(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (e.a.c(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type b10 = e.a.b(0, (ParameterizedType) type);
            if (e.a.c(b10) != c0.class) {
                return new a(b10);
            }
            if (b10 instanceof ParameterizedType) {
                return new c(e.a.b(0, (ParameterizedType) b10));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}
