package retrofit2;

import fu.c0;
import fu.s;
import gt.i;
import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KotlinExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nKotlinExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinExtensions.kt\nretrofit2/KotlinExtensions\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,126:1\n426#2,11:127\n426#2,11:138\n426#2,11:149\n*S KotlinDebug\n*F\n+ 1 KotlinExtensions.kt\nretrofit2/KotlinExtensions\n*L\n32#1:127,11\n66#1:138,11\n93#1:149,11\n*E\n"})
/* loaded from: classes8.dex */
public final class KotlinExtensions {

    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    static final class a implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ fu.d<T> f65809a;

        a(fu.d<T> dVar) {
            this.f65809a = dVar;
        }

        public final void a(Throwable th2) {
            this.f65809a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b<T> implements fu.f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<T> f65810a;

        /* JADX WARN: Multi-variable type inference failed */
        b(i<? super T> iVar) {
            this.f65810a = iVar;
        }

        @Override // fu.f
        public void a(fu.d<T> call, Throwable t10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t10, "t");
            i<T> iVar = this.f65810a;
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(kotlin.f.a(t10)));
        }

        @Override // fu.f
        public void b(fu.d<T> call, c0<T> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            if (response.d()) {
                T a10 = response.a();
                if (a10 == null) {
                    Object k10 = call.request().k(s.class);
                    Intrinsics.checkNotNull(k10);
                    s sVar = (s) k10;
                    Class<?> b10 = sVar.b();
                    Method a11 = sVar.a();
                    KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException("Response from " + b10.getName() + '.' + a11.getName() + " was null but response body type was declared as non-null");
                    i<T> iVar = this.f65810a;
                    Result.a aVar = Result.f60901b;
                    iVar.resumeWith(Result.d(kotlin.f.a(kotlinNullPointerException)));
                    return;
                }
                this.f65810a.resumeWith(Result.d(a10));
                return;
            }
            i<T> iVar2 = this.f65810a;
            Result.a aVar2 = Result.f60901b;
            iVar2.resumeWith(Result.d(kotlin.f.a(new HttpException(response))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ fu.d<T> f65811a;

        c(fu.d<T> dVar) {
            this.f65811a = dVar;
        }

        public final void a(Throwable th2) {
            this.f65811a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class d<T> implements fu.f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<T> f65812a;

        /* JADX WARN: Multi-variable type inference failed */
        d(i<? super T> iVar) {
            this.f65812a = iVar;
        }

        @Override // fu.f
        public void a(fu.d<T> call, Throwable t10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t10, "t");
            i<T> iVar = this.f65812a;
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(kotlin.f.a(t10)));
        }

        @Override // fu.f
        public void b(fu.d<T> call, c0<T> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            if (response.d()) {
                i<T> iVar = this.f65812a;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(response.a()));
                return;
            }
            i<T> iVar2 = this.f65812a;
            Result.a aVar2 = Result.f60901b;
            iVar2.resumeWith(Result.d(kotlin.f.a(new HttpException(response))));
        }
    }

    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    static final class e implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ fu.d<T> f65813a;

        e(fu.d<T> dVar) {
            this.f65813a = dVar;
        }

        public final void a(Throwable th2) {
            this.f65813a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class f<T> implements fu.f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<c0<T>> f65814a;

        /* JADX WARN: Multi-variable type inference failed */
        f(i<? super c0<T>> iVar) {
            this.f65814a = iVar;
        }

        @Override // fu.f
        public void a(fu.d<T> call, Throwable t10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t10, "t");
            i<c0<T>> iVar = this.f65814a;
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(kotlin.f.a(t10)));
        }

        @Override // fu.f
        public void b(fu.d<T> call, c0<T> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            this.f65814a.resumeWith(Result.d(response));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KotlinExtensions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ rs.c<?> f65815a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f65816b;

        g(rs.c<?> cVar, Throwable th2) {
            this.f65815a = cVar;
            this.f65816b = th2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            rs.c c10 = kotlin.coroutines.intrinsics.a.c(this.f65815a);
            Result.a aVar = Result.f60901b;
            c10.resumeWith(Result.d(kotlin.f.a(this.f65816b)));
        }
    }

    @Nullable
    public static final <T> Object a(@NotNull fu.d<T> dVar, @NotNull rs.c<? super T> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        eVar.u(new a(dVar));
        dVar.d(new b(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final <T> Object b(@NotNull fu.d<T> dVar, @NotNull rs.c<? super T> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        eVar.u(new c(dVar));
        dVar.d(new d(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final <T> Object c(@NotNull fu.d<T> dVar, @NotNull rs.c<? super c0<T>> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        eVar.u(new e(dVar));
        dVar.d(new f(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final Object d(@NotNull fu.d<Unit> dVar, @NotNull rs.c<? super Unit> cVar) {
        Intrinsics.checkNotNull(dVar, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
        return b(dVar, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(@org.jetbrains.annotations.NotNull java.lang.Throwable r4, @org.jetbrains.annotations.NotNull rs.c<?> r5) {
        /*
            boolean r0 = r5 instanceof retrofit2.KotlinExtensions$suspendAndThrow$1
            if (r0 == 0) goto L13
            r0 = r5
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions$suspendAndThrow$1) r0
            int r1 = r0.f65819j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f65819j = r1
            goto L18
        L13:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f65818i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f65819j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            java.lang.Object r4 = r0.f65817h
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            kotlin.f.b(r5)
            goto L5c
        L35:
            kotlin.f.b(r5)
            r0.f65817h = r4
            r0.f65819j = r3
            gt.c0 r5 = gt.q0.a()
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            retrofit2.KotlinExtensions$g r3 = new retrofit2.KotlinExtensions$g
            r3.<init>(r0, r4)
            r5.dispatch(r2, r3)
            java.lang.Object r4 = kotlin.coroutines.intrinsics.a.f()
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
            if (r4 != r5) goto L59
            kotlin.coroutines.jvm.internal.f.c(r0)
        L59:
            if (r4 != r1) goto L5c
            return r1
        L5c:
            kotlin.KotlinNothingValueException r4 = new kotlin.KotlinNothingValueException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.e(java.lang.Throwable, rs.c):java.lang.Object");
    }
}
