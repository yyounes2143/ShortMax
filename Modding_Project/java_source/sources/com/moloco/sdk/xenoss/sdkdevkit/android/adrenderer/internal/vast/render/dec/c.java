package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.k0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final k0 f36172a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final n0 f36173b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f36174c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final g f36175d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final d f36176e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.d<b> f36177f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.b<b> f36178g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f36179h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f36180i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final String f36181j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final String f36182k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final q f36183l;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.DECControllerImpl$onEvent$1", f = "DECControllerImpl.kt", l = {53}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36184h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ b f36186j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b bVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36186j = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f36186j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36184h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.d dVar = c.this.f36177f;
                b bVar = this.f36186j;
                this.f36184h = 1;
                if (dVar.emit(bVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public /* synthetic */ c(k0 k0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e eVar, int i10, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, n0 n0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(k0Var, eVar, i10, context, aVar, n0Var);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public void C(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        String g10 = this.f36172a.g();
        if (g10 != null) {
            this.f36176e.d(position);
            this.f36173b.a(g10);
            j(b.f36169b);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a
    public void E() {
        this.f36176e.e();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e
    @Nullable
    public String H() {
        return this.f36182k;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a
    @NotNull
    public kt.b<b> a() {
        return this.f36178g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e
    public void b() {
        this.f36176e.a();
        j(b.f36168a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        i.e(this.f36174c, null, 1, null);
        this.f36183l.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e
    @Nullable
    public String g() {
        return this.f36181j;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f36176e.c(button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void i() {
        this.f36183l.i();
    }

    public final r j(b bVar) {
        r d10;
        d10 = gt.g.d(this.f36174c, null, null, new a(bVar, null), 3, null);
        return d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f36175d.m();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public boolean p() {
        return this.f36179h;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g
    public void reset() {
        this.f36175d.reset();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void v() {
        this.f36183l.v();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    @NotNull
    public kt.i<j> y() {
        return this.f36183l.y();
    }

    public c(k0 dec, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e eVar, int i10, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, n0 externalLinkHandler) {
        Intrinsics.checkNotNullParameter(dec, "dec");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        this.f36172a = dec;
        this.f36173b = externalLinkHandler;
        g0 a10 = i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f36174c = a10;
        this.f36175d = h.a(i10, a10);
        this.f36176e = new d(customUserEventBuilderService, CollectionsKt.r(dec.f()), CollectionsKt.r(dec.h()), CollectionsKt.r(dec.i()), null, null, 48, null);
        kt.d<b> b10 = kt.g.b(0, 0, null, 7, null);
        this.f36177f = b10;
        this.f36178g = b10;
        this.f36179h = dec.g() != null;
        this.f36180i = dec.c();
        this.f36181j = dec.d();
        this.f36182k = dec.e();
        this.f36183l = t.a(eVar != null ? eVar.f() : null, eVar != null ? Integer.valueOf(eVar.h()) : null, eVar != null ? Integer.valueOf(eVar.d()) : null, eVar != null ? eVar.a() : null, a10, context, customUserEventBuilderService, externalLinkHandler, null, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f36176e.b(buttonType);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e
    @Nullable
    public String l() {
        return this.f36180i;
    }
}
