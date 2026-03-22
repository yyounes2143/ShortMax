package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class y implements m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36549a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final gt.g0 f36550b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f36551c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f36552d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<Boolean> f36553e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final i<Boolean> f36554f;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticAdLoad$load$1", f = "StaticAdLoad.kt", l = {23}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36555h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f36557j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m.a f36558k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j10, m.a aVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36557j = j10;
            this.f36558k = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f36557j, this.f36558k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36555h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar = y.this.f36551c;
                String str = y.this.f36549a;
                long j10 = this.f36557j;
                this.f36555h = 1;
                obj = aVar.b(str, j10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) obj;
            if (g0Var instanceof g0.b) {
                y.this.f36553e.setValue(kotlin.coroutines.jvm.internal.a.a(true));
                m.a aVar2 = this.f36558k;
                if (aVar2 != null) {
                    aVar2.a();
                }
            } else if (g0Var instanceof g0.a) {
                m.a aVar3 = this.f36558k;
                if (aVar3 != null) {
                    aVar3.a((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) ((g0.a) g0Var).a());
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return Unit.f60915a;
        }
    }

    public y(@NotNull String adm, @NotNull gt.g0 scope, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a staticWebView) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(staticWebView, "staticWebView");
        this.f36549a = adm;
        this.f36550b = scope;
        this.f36551c = staticWebView;
        this.f36552d = "StaticAdLoad";
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f36553e = a10;
        this.f36554f = a10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        gt.g.d(this.f36550b, null, null, new a(j10, aVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public i<Boolean> isLoaded() {
        return this.f36554f;
    }
}
