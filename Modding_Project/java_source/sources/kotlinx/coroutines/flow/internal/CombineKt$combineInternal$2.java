package kotlinx.coroutines.flow.internal;

import at.n;
import gt.g0;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Combine.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {51, 73, 76}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f61755h;

    /* renamed from: i  reason: collision with root package name */
    Object f61756i;

    /* renamed from: j  reason: collision with root package name */
    int f61757j;

    /* renamed from: k  reason: collision with root package name */
    int f61758k;

    /* renamed from: l  reason: collision with root package name */
    int f61759l;

    /* renamed from: m  reason: collision with root package name */
    private /* synthetic */ Object f61760m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ kt.b<T>[] f61761n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ Function0<T[]> f61762o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ n<kt.c<? super R>, T[], rs.c<? super Unit>, Object> f61763p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ kt.c<R> f61764q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Combine.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {28}, m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f61765h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ kt.b<T>[] f61766i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f61767j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f61768k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ jt.d<IndexedValue<Object>> f61769l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Combine.kt */
        @Metadata
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C08561<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ jt.d<IndexedValue<Object>> f61770a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f61771b;

            C08561(jt.d<IndexedValue<Object>> dVar, int i10) {
                this.f61770a = dVar;
                this.f61771b = i10;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[RETURN] */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(T r7, rs.c<? super kotlin.Unit> r8) {
                /*
                    r6 = this;
                    boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r8
                    kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1) r0
                    int r1 = r0.f61774j
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f61774j = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
                    r0.<init>(r6, r8)
                L18:
                    java.lang.Object r8 = r0.f61772h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f61774j
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L38
                    if (r2 == r4) goto L34
                    if (r2 != r3) goto L2c
                    kotlin.f.b(r8)
                    goto L56
                L2c:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r8)
                    throw r7
                L34:
                    kotlin.f.b(r8)
                    goto L4d
                L38:
                    kotlin.f.b(r8)
                    jt.d<kotlin.collections.IndexedValue<java.lang.Object>> r8 = r6.f61770a
                    kotlin.collections.IndexedValue r2 = new kotlin.collections.IndexedValue
                    int r5 = r6.f61771b
                    r2.<init>(r5, r7)
                    r0.f61774j = r4
                    java.lang.Object r7 = r8.p(r2, r0)
                    if (r7 != r1) goto L4d
                    return r1
                L4d:
                    r0.f61774j = r3
                    java.lang.Object r7 = gt.a2.a(r0)
                    if (r7 != r1) goto L56
                    return r1
                L56:
                    kotlin.Unit r7 = kotlin.Unit.f60915a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.AnonymousClass1.C08561.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kt.b<? extends T>[] bVarArr, int i10, AtomicInteger atomicInteger, jt.d<IndexedValue<Object>> dVar, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f61766i = bVarArr;
            this.f61767j = i10;
            this.f61768k = atomicInteger;
            this.f61769l = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f61766i, this.f61767j, this.f61768k, this.f61769l, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AtomicInteger atomicInteger;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f61765h;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    kt.b[] bVarArr = this.f61766i;
                    int i11 = this.f61767j;
                    kt.b bVar = bVarArr[i11];
                    C08561 c08561 = new C08561(this.f61769l, i11);
                    this.f61765h = 1;
                    if (bVar.collect(c08561, this) == f10) {
                        return f10;
                    }
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    h.a.a(this.f61769l, null, 1, null);
                }
                return Unit.f60915a;
            } finally {
                if (this.f61768k.decrementAndGet() == 0) {
                    h.a.a(this.f61769l, null, 1, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$combineInternal$2(kt.b<? extends T>[] bVarArr, Function0<T[]> function0, n<? super kt.c<? super R>, ? super T[], ? super rs.c<? super Unit>, ? extends Object> nVar, kt.c<? super R> cVar, rs.c<? super CombineKt$combineInternal$2> cVar2) {
        super(2, cVar2);
        this.f61761n = bVarArr;
        this.f61762o = function0;
        this.f61763p = nVar;
        this.f61764q = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.f61761n, this.f61762o, this.f61763p, this.f61764q, cVar);
        combineKt$combineInternal$2.f61760m = obj;
        return combineKt$combineInternal$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CombineKt$combineInternal$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca A[LOOP:0: B:28:0x00ca->B:34:0x00ed, LOOP_START, PHI: r6 r10 
      PHI: (r6v6 int) = (r6v5 int), (r6v7 int) binds: [B:25:0x00c5, B:34:0x00ed] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v8 kotlin.collections.IndexedValue) = (r10v7 kotlin.collections.IndexedValue), (r10v21 kotlin.collections.IndexedValue) binds: [B:25:0x00c5, B:34:0x00ed] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r15v0, types: [kt.b<T>[], kt.b[]] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r6v0, types: [kt.b<T>[]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0135 -> B:45:0x0137). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
