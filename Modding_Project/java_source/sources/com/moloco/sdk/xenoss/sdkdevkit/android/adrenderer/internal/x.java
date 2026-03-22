package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import jt.h;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.m;
import kt.i;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final gt.g0 f36539a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.e<i<ms.n>> f36540b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final i<ms.n> f36541c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ResettableCountdownSecondsStateFlow$countdownSecondsStateFlow$1", f = "CountdownFlow.kt", l = {82}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<h<? super ms.n>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36542h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36543i;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ResettableCountdownSecondsStateFlow$countdownSecondsStateFlow$1$1", f = "CountdownFlow.kt", l = {83}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0593a extends SuspendLambda implements Function2<i<? extends ms.n>, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36545h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f36546i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ h<ms.n> f36547j;

            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.x$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0594a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ h<ms.n> f36548a;

                /* JADX WARN: Multi-variable type inference failed */
                public C0594a(h<? super ms.n> hVar) {
                    this.f36548a = hVar;
                }

                public final Object a(int i10, rs.c<? super Unit> cVar) {
                    Object p10 = this.f36548a.p(ms.n.a(i10), cVar);
                    if (p10 == kotlin.coroutines.intrinsics.a.f()) {
                        return p10;
                    }
                    return Unit.f60915a;
                }

                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                    return a(((ms.n) obj).g(), cVar);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0593a(h<? super ms.n> hVar, rs.c<? super C0593a> cVar) {
                super(2, cVar);
                this.f36547j = hVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C0593a c0593a = new C0593a(this.f36547j, cVar);
                c0593a.f36546i = obj;
                return c0593a;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(i<ms.n> iVar, rs.c<? super Unit> cVar) {
                return ((C0593a) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f36545h;
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f.b(obj);
                } else {
                    f.b(obj);
                    C0594a c0594a = new C0594a(this.f36547j);
                    this.f36545h = 1;
                    if (((i) this.f36546i).collect(c0594a, this) == f10) {
                        return f10;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f36543i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(h<? super ms.n> hVar, rs.c<? super Unit> cVar) {
            return ((a) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36542h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.e eVar = x.this.f36540b;
                C0593a c0593a = new C0593a((h) this.f36543i, null);
                this.f36542h = 1;
                if (kotlinx.coroutines.flow.c.m(eVar, c0593a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public /* synthetic */ x(int i10, gt.g0 g0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, g0Var);
    }

    @NotNull
    public final i<ms.n> b() {
        return this.f36541c;
    }

    public final void c(int i10) {
        this.f36540b.setValue(g.b(i10, this.f36539a));
    }

    public x(int i10, gt.g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f36539a = scope;
        kt.e<i<ms.n>> a10 = kotlinx.coroutines.flow.o.a(g.b(i10, scope));
        this.f36540b = a10;
        this.f36541c = kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.k(new a(null)), scope, m.a.b(m.f61804a, 0L, 0L, 3, null), a10.getValue().getValue());
    }
}
