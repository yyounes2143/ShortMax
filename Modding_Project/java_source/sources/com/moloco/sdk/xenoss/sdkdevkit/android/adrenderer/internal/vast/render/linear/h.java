package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.x;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting(otherwise = 2)
/* loaded from: classes6.dex */
public final class h implements j {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final t f36307a;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public x f36310d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public r f36311e;

    /* renamed from: f  reason: collision with root package name */
    public int f36312f;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f36308b = "LinearGoNextActionImpl";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f36309c = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.e<d.a> f36313g = o.a(d.a.c.f36167a);

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.LinearGoNextActionImpl$startTimer$1", f = "LinearGoNextAction.kt", l = {126}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36314h;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.LinearGoNextActionImpl$startTimer$1$1", f = "LinearGoNextAction.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0585a extends SuspendLambda implements Function2<ms.n, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36316h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ int f36317i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ h f36318j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0585a(h hVar, rs.c<? super C0585a> cVar) {
                super(2, cVar);
                this.f36318j = hVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C0585a c0585a = new C0585a(this.f36318j, cVar);
                c0585a.f36317i = ((ms.n) obj).g();
                return c0585a;
            }

            public final Object i(int i10, rs.c<? super Unit> cVar) {
                return ((C0585a) create(ms.n.a(i10), cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ms.n nVar, rs.c<? super Unit> cVar) {
                return i(nVar.g(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                d.a h10;
                d.a h11;
                kotlin.coroutines.intrinsics.a.f();
                if (this.f36316h == 0) {
                    kotlin.f.b(obj);
                    int i10 = this.f36317i;
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    String str = this.f36318j.f36308b;
                    MolocoLogger.info$default(molocoLogger, str, "Updating countdown to " + ((Object) ms.n.f(i10)), null, false, 12, null);
                    this.f36318j.f36312f = i10;
                    String str2 = this.f36318j.f36308b;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Propagating state: ");
                    h10 = k.h(i10);
                    sb2.append(h10);
                    MolocoLogger.info$default(molocoLogger, str2, sb2.toString(), null, false, 12, null);
                    kt.e<d.a> m10 = this.f36318j.m();
                    h11 = k.h(i10);
                    m10.setValue(h11);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kt.i<ms.n> b10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36314h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                if (h.this.f36310d == null) {
                    h.this.f36310d = new x(h.this.f36312f, h.this.f36309c, null);
                } else {
                    x xVar = h.this.f36310d;
                    if (xVar != null) {
                        xVar.c(h.this.f36312f);
                    }
                }
                x xVar2 = h.this.f36310d;
                if (xVar2 != null && (b10 = xVar2.b()) != null) {
                    C0585a c0585a = new C0585a(h.this, null);
                    this.f36314h = 1;
                    if (kotlinx.coroutines.flow.c.m(b10, c0585a, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    public h(@Nullable t tVar) {
        this.f36307a = tVar;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.j
    public void D() {
        int compare;
        compare = Integer.compare(this.f36312f ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE);
        if (compare > 0) {
            b(this.f36312f & 4294967295L);
        }
    }

    public final void b(long j10) {
        boolean i10;
        r d10;
        i10 = k.i(this.f36311e);
        if (i10) {
            this.f36312f = ms.n.b((int) j10);
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = this.f36308b;
            MolocoLogger.info$default(molocoLogger, str, "Start timer for duration: " + j10 + " seconds", null, false, 12, null);
            d10 = gt.g.d(this.f36309c, null, null, new a(null), 3, null);
            this.f36311e = d10;
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    /* renamed from: i */
    public kt.e<d.a> m() {
        return this.f36313g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.j
    public void o() {
        m().setValue(d.a.c.f36167a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.j
    public void pause() {
        MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36308b, "Canceling timer", null, false, 12, null);
        r rVar = this.f36311e;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.j
    public void a(int i10, int i11) {
        long g10;
        int f10;
        double d10 = (i10 / i11) * 100;
        if (i10 >= i11) {
            m().setValue(d.a.C0583a.f36165a);
        } else if (this.f36307a == null) {
            m().setValue(d.a.c.f36167a);
        } else if (this.f36311e == null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, this.f36308b, "Starting timer", null, false, 12, null);
            t tVar = this.f36307a;
            if (tVar instanceof t.a) {
                MolocoLogger.info$default(molocoLogger, this.f36308b, "Offset Percents detected", null, false, 12, null);
                f10 = k.f(new IntRange((int) d10, ((t.a) this.f36307a).a()), i11);
                b(f10 & 4294967295L);
            } else if (tVar instanceof t.b) {
                MolocoLogger.info$default(molocoLogger, this.f36308b, "Offset Millis detected", null, false, 12, null);
                g10 = k.g(((t.b) this.f36307a).a());
                b(g10);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
    }
}
