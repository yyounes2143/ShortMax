package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.m;
import kt.i;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class g {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.CountdownFlowKt$countdownSecondsFlow$1", f = "CountdownFlow.kt", l = {26, 29, 30}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<kt.c<? super ms.n>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34055h;

        /* renamed from: i  reason: collision with root package name */
        public int f34056i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f34057j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ int f34058k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i10, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34058k = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f34058k, cVar);
            aVar.f34057j = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super ms.n> cVar, rs.c<? super Unit> cVar2) {
            return ((a) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0075 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0073 -> B:16:0x0049). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r7.f34056i
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2e
                if (r1 == r4) goto L24
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L24
            L12:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1a:
                int r1 = r7.f34055h
                java.lang.Object r4 = r7.f34057j
                kt.c r4 = (kt.c) r4
                kotlin.f.b(r8)
                goto L5f
            L24:
                int r1 = r7.f34055h
                java.lang.Object r4 = r7.f34057j
                kt.c r4 = (kt.c) r4
                kotlin.f.b(r8)
                goto L49
            L2e:
                kotlin.f.b(r8)
                java.lang.Object r8 = r7.f34057j
                kt.c r8 = (kt.c) r8
                int r1 = r7.f34058k
                ms.n r5 = ms.n.a(r1)
                r7.f34057j = r8
                r7.f34055h = r1
                r7.f34056i = r4
                java.lang.Object r4 = r8.emit(r5, r7)
                if (r4 != r0) goto L48
                return r0
            L48:
                r4 = r8
            L49:
                r8 = 0
                int r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.i0.a(r1, r8)
                if (r8 <= 0) goto L76
                r7.f34057j = r4
                r7.f34055h = r1
                r7.f34056i = r3
                r5 = 1000(0x3e8, double:4.94E-321)
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r5, r7)
                if (r8 != r0) goto L5f
                return r0
            L5f:
                int r1 = r1 + (-1)
                int r1 = ms.n.b(r1)
                ms.n r8 = ms.n.a(r1)
                r7.f34057j = r4
                r7.f34055h = r1
                r7.f34056i = r2
                java.lang.Object r8 = r4.emit(r8, r7)
                if (r8 != r0) goto L49
                return r0
            L76:
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.CountdownFlowKt$countdownSecondsStateFlow$1", f = "CountdownFlow.kt", l = {53}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<kt.c<? super ms.n>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34059h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34060i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Ref.IntRef f34061j;

        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Ref.IntRef f34062a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ kt.c<ms.n> f34063b;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Ref.IntRef intRef, kt.c<? super ms.n> cVar) {
                this.f34062a = intRef;
                this.f34063b = cVar;
            }

            public final Object a(int i10, rs.c<? super Unit> cVar) {
                this.f34062a.element = i10;
                Object emit = this.f34063b.emit(ms.n.a(i10), cVar);
                if (emit == kotlin.coroutines.intrinsics.a.f()) {
                    return emit;
                }
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((ms.n) obj).g(), cVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Ref.IntRef intRef, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34061j = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f34061j, cVar);
            bVar.f34060i = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super ms.n> cVar, rs.c<? super Unit> cVar2) {
            return ((b) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34059h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.b<ms.n> a10 = g.a(this.f34061j.element);
                a aVar = new a(this.f34061j, (kt.c) this.f34060i);
                this.f34059h = 1;
                if (a10.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @NotNull
    public static final kt.b<ms.n> a(int i10) {
        return kotlinx.coroutines.flow.c.F(new a(i10, null));
    }

    @NotNull
    public static final i<ms.n> b(int i10, @NotNull gt.g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10;
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.F(new b(intRef, null)), scope, m.a.b(m.f61804a, 0L, 0L, 3, null), ms.n.a(i10));
    }
}
