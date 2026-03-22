package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.f f36270a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f36271b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f36272c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f36273d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final n0 f36274e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final g0 f36275f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.d<d> f36276g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.b<d> f36277h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final String f36278i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final kt.e<Boolean> f36279j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final kt.i<Boolean> f36280k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final kt.e<p<Long>> f36281l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final kt.i<p<Long>> f36282m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f36283n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final String f36284o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f36285p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.b f36286q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public final q f36287r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public final kt.e<Boolean> f36288s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> f36289t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public final kt.e<Boolean> f36290u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public final kt.i<Boolean> f36291v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public final l f36292w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public final j f36293x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f36294y;

    /* renamed from: z  reason: collision with root package name */
    public int f36295z;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.LinearControllerImpl$1", f = "LinearControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36296h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f36297i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f36297i = ((Boolean) obj).booleanValue();
            return aVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((a) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36296h == 0) {
                kotlin.f.b(obj);
                if (this.f36297i) {
                    e.this.f36292w.g(kotlin.coroutines.jvm.internal.a.d(e.this.S()), e.this.f36278i);
                } else {
                    e.this.f36292w.f(kotlin.coroutines.jvm.internal.a.d(e.this.S()), e.this.f36278i);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.LinearControllerImpl$onEvent$1", f = "LinearControllerImpl.kt", l = {53}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36299h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ d f36301j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d dVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f36301j = dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f36301j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36299h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = e.this.f36276g;
                d dVar2 = this.f36301j;
                this.f36299h = 1;
                if (dVar.emit(dVar2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.LinearControllerImpl$vastPrivacyIcon$1", f = "LinearControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements at.n<Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36302h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f36303i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f36304j;

        public c(rs.c<? super c> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f36303i = z10;
            cVar2.f36304j = jVar;
            return cVar2.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> cVar) {
            return i(bool.booleanValue(), jVar, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36302h == 0) {
                kotlin.f.b(obj);
                boolean z10 = this.f36303i;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j) this.f36304j;
                if (!z10) {
                    return null;
                }
                return jVar;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public e(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.f linear, int i10, boolean z10, @Nullable Boolean bool, int i11, boolean z11, boolean z12, @NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull n0 externalLinkHandler) {
        String absolutePath;
        List<String> list;
        List<String> list2;
        a0 a0Var;
        Integer num;
        Integer num2;
        String str;
        Intrinsics.checkNotNullParameter(linear, "linear");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        this.f36270a = linear;
        this.f36271b = z11;
        this.f36272c = z12;
        this.f36273d = customUserEventBuilderService;
        this.f36274e = externalLinkHandler;
        g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f36275f = a10;
        kt.d<d> b10 = kt.g.b(0, 0, null, 7, null);
        this.f36276g = b10;
        this.f36277h = b10;
        this.f36278i = linear.g();
        kt.e<Boolean> a11 = o.a(Boolean.valueOf(z10));
        this.f36279j = a11;
        this.f36280k = a11;
        kt.e<p<Long>> a12 = o.a(new p(Long.valueOf(i10)));
        this.f36281l = a12;
        this.f36282m = kotlinx.coroutines.flow.c.d(a12);
        this.f36283n = b.g.f33651a.b().d();
        if (s()) {
            absolutePath = linear.g();
        } else {
            absolutePath = linear.e().getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        }
        this.f36284o = absolutePath;
        this.f36285p = linear.c() != null;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d10 = linear.d();
        if (d10 != null) {
            list = d10.b();
        } else {
            list = null;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d11 = linear.d();
        if (d11 != null) {
            list2 = d11.g();
        } else {
            list2 = null;
        }
        this.f36286q = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.b(list, list2, null, 4, null);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d12 = linear.d();
        if (d12 != null) {
            a0Var = d12.f();
        } else {
            a0Var = null;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d13 = linear.d();
        if (d13 != null) {
            num = Integer.valueOf(d13.h());
        } else {
            num = null;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d14 = linear.d();
        if (d14 != null) {
            num2 = Integer.valueOf(d14.d());
        } else {
            num2 = null;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e d15 = linear.d();
        if (d15 != null) {
            str = d15.a();
        } else {
            str = null;
        }
        q a13 = t.a(a0Var, num, num2, str, a10, context, customUserEventBuilderService, externalLinkHandler, new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.c0(e.this);
            }
        }, new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.d0(e.this);
            }
        });
        this.f36287r = a13;
        Boolean bool2 = Boolean.FALSE;
        kt.e<Boolean> a14 = o.a(bool2);
        this.f36288s = a14;
        this.f36289t = kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.n(a14, a13.y(), new c(null)), a10, m.a.b(kotlinx.coroutines.flow.m.f61804a, 0L, 0L, 3, null), null);
        kt.e<Boolean> a15 = o.a(bool2);
        this.f36290u = a15;
        this.f36291v = a15;
        this.f36292w = l.f36320p.a(linear.i(), customUserEventBuilderService);
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(isPlaying(), new a(null)), a10);
        this.f36293x = k.d(bool, i11, linear.h());
    }

    public static final Unit c0(e eVar) {
        eVar.f36286q.a(Integer.valueOf(eVar.S()), eVar.f36278i);
        return Unit.f60915a;
    }

    public static final Unit d0(e eVar) {
        eVar.f36286q.b(Integer.valueOf(eVar.S()), eVar.f36278i);
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c
    public void A() {
        if (!isPlaying().getValue().booleanValue() && this.f36281l.getValue().a().longValue() == 0 && S() == 0) {
            return;
        }
        this.f36281l.setValue(new p<>(0L));
        this.f36292w.h(Integer.valueOf(S()), this.f36278i);
        this.f36294y = false;
        this.f36295z = 0;
        this.f36293x.o();
        T();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    @NotNull
    public kt.i<p<Long>> B() {
        return this.f36282m;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public void C(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        Y(true, position);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void I(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i progress) {
        Pair a10;
        Intrinsics.checkNotNullParameter(progress, "progress");
        boolean z10 = progress instanceof i.a;
        if (z10) {
            int a11 = (int) ((i.a) progress).a();
            a10 = ms.k.a(Integer.valueOf(a11), Integer.valueOf(a11));
        } else if (progress instanceof i.c) {
            i.c cVar = (i.c) progress;
            a10 = ms.k.a(Integer.valueOf((int) cVar.a()), Integer.valueOf((int) cVar.b()));
        } else if (progress instanceof i.d) {
            a10 = ms.k.a(0, Integer.valueOf((int) ((i.d) progress).a()));
        } else if (Intrinsics.areEqual(progress, i.b.f36226a)) {
            return;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        int intValue = ((Number) a10.b()).intValue();
        int intValue2 = ((Number) a10.d()).intValue();
        this.f36295z = intValue;
        if (!this.f36294y && !(progress instanceof i.d)) {
            this.f36292w.d(this.f36278i, intValue, intValue2);
        }
        if (z10) {
            if (!this.f36294y) {
                X(d.b.f36266a);
                U();
            }
            this.f36294y = false;
        }
        this.f36293x.a(intValue, intValue2);
        a0(intValue, intValue2);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void O(boolean z10) {
        this.f36279j.setValue(Boolean.valueOf(z10));
        l lVar = this.f36292w;
        if (z10) {
            lVar.e(Integer.valueOf(S()), this.f36278i);
        } else {
            lVar.j(Integer.valueOf(S()), this.f36278i);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void P(boolean z10) {
        this.f36290u.setValue(Boolean.valueOf(z10));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void Q() {
        this.f36293x.D();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void R() {
        this.f36293x.pause();
    }

    public int S() {
        return this.f36295z;
    }

    public final void T() {
        this.f36288s.setValue(Boolean.FALSE);
    }

    public final void U() {
        if (this.f36272c) {
            Y(false, i.a());
        }
    }

    public final void V() {
        if (this.f36271b) {
            Y(false, i.a());
        }
    }

    public final r X(d dVar) {
        r d10;
        d10 = gt.g.d(this.f36275f, null, null, new b(dVar, null), 3, null);
        return d10;
    }

    public final void Y(boolean z10, a.AbstractC0597a.f fVar) {
        String c10 = this.f36270a.c();
        if (c10 != null) {
            if (z10) {
                this.f36292w.c(fVar, Integer.valueOf(S()), this.f36278i);
            }
            this.f36274e.a(c10);
            X(d.a.f36265a);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c
    @NotNull
    public kt.b<d> a() {
        return this.f36277h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r9 >= r10) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        if (r9 <= r6) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a0(int r9, int r10) {
        /*
            r8 = this;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.f r0 = r8.f36270a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e r0 = r0.d()
            if (r0 != 0) goto L9
            return
        L9:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t r1 = r0.e()
            java.lang.Long r0 = r0.c()
            boolean r2 = r1 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t.a
            r3 = 0
            if (r2 == 0) goto L20
            int r2 = r10 / 100
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t$a r1 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t.a) r1
            int r1 = r1.a()
            int r2 = r2 * r1
            goto L2d
        L20:
            boolean r2 = r1 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t.b
            if (r2 == 0) goto L2c
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t$b r1 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t.b) r1
            long r1 = r1.a()
            int r2 = (int) r1
            goto L2d
        L2c:
            r2 = r3
        L2d:
            kotlin.ranges.IntRange r1 = new kotlin.ranges.IntRange
            r1.<init>(r3, r10)
            int r10 = kotlin.ranges.e.o(r2, r1)
            kt.e<java.lang.Boolean> r1 = r8.f36288s
            if (r0 != 0) goto L3d
            if (r9 < r10) goto L4d
            goto L4c
        L3d:
            long r4 = (long) r10
            long r6 = r0.longValue()
            long r6 = r6 + r4
            long r9 = (long) r9
            int r0 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r0 > 0) goto L4d
            int r9 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r9 > 0) goto L4d
        L4c:
            r3 = 1
        L4d:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r3)
            r1.setValue(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.e.a0(int, int):void");
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void b() {
        X(d.c.f36267a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f36275f, null, 1, null);
        this.f36287r.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void h() {
        this.f36294y = true;
        this.f36292w.i(Integer.valueOf(S()), this.f36278i);
        X(d.e.f36269a);
        V();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void i() {
        this.f36287r.i();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c
    @NotNull
    public kt.i<Boolean> isPlaying() {
        return this.f36291v;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f36293x.m();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    @NotNull
    public String n() {
        return this.f36284o;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public boolean p() {
        return this.f36285p;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public boolean s() {
        return this.f36283n;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void v() {
        this.f36287r.v();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> y() {
        return this.f36289t;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    @NotNull
    public kt.i<Boolean> z() {
        return this.f36280k;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f36292w.a(buttonType);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m
    public void v(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l error) {
        Intrinsics.checkNotNullParameter(error, "error");
        X(new d.C0584d(error));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f36292w.b(button);
    }
}
