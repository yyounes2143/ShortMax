package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.c;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.k;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c f35776a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Context f35777b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f35778c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final n0 f35779d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f35780e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final g0 f35781f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final g f35782g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public a.AbstractC0597a.f f35783h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final i f35784i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b> f35785j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b> f35786k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f35787l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public k f35788m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> f35789n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> f35790o;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.CompanionControllerImpl$1", f = "CompanionControllerImpl.kt", l = {104}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f35791h;

        /* renamed from: i  reason: collision with root package name */
        public int f35792i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        public static final Unit i(c cVar) {
            cVar.f35784i.d(cVar.f35783h);
            cVar.l(b.a.f35772a);
            return Unit.f60915a;
        }

        public static final Unit j(c cVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar2) {
            cVar.S(cVar2);
            return Unit.f60915a;
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
            c cVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35792i;
            if (i10 != 0) {
                if (i10 == 1) {
                    cVar = (c) this.f35791h;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                c cVar2 = c.this;
                a0 e10 = cVar2.f35776a.e();
                Context context = c.this.f35777b;
                com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = c.this.f35778c;
                n0 n0Var = c.this.f35779d;
                int f11 = c.this.f35776a.f();
                int d10 = c.this.f35776a.d();
                final c cVar3 = c.this;
                Function0 function0 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a.i(c.this);
                    }
                };
                final c cVar4 = c.this;
                Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return c.a.j(c.this, (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) obj2);
                    }
                };
                boolean z10 = c.this.f35780e;
                this.f35791h = cVar2;
                this.f35792i = 1;
                Object b10 = l.b(e10, context, aVar, n0Var, f11, d10, function0, function1, z10, this);
                if (b10 == f10) {
                    return f10;
                }
                cVar = cVar2;
                obj = b10;
            }
            cVar.U((k) obj);
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.CompanionControllerImpl$onEvent$1", f = "CompanionControllerImpl.kt", l = {55}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35794h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b f35796j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b bVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f35796j = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f35796j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35794h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = c.this.f35785j;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b bVar = this.f35796j;
                this.f35794h = 1;
                if (dVar.emit(bVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public /* synthetic */ c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c cVar, int i10, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, n0 n0Var, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, i10, context, aVar, n0Var, z10);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public void C(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        String a10 = this.f35776a.a();
        if (a10 != null) {
            this.f35784i.d(position);
            this.f35779d.a(a10);
            l(b.a.f35772a);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j
    public void K() {
        l(b.C0566b.f35773a);
    }

    public void S(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c error) {
        Intrinsics.checkNotNullParameter(error, "error");
        l(new b.d(error));
    }

    public final void U(k kVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar;
        this.f35788m = kVar;
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> eVar = this.f35789n;
        if (kVar != null) {
            jVar = kVar.k();
        } else {
            jVar = null;
        }
        eVar.setValue(jVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a
    @NotNull
    public kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b> a() {
        return this.f35786k;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j
    public void b() {
        this.f35784i.a();
        l(b.c.f35774a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f35781f, null, 1, null);
        k kVar = this.f35788m;
        if (kVar != null) {
            kVar.destroy();
        }
        U(null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f35784i.c(button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f35784i.b(buttonType);
    }

    public final r l(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b bVar) {
        r d10;
        d10 = gt.g.d(this.f35781f, null, null, new b(bVar, null), 3, null);
        return d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f35782g.m();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public boolean p() {
        return this.f35787l;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> q() {
        return this.f35790o;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g
    public void reset() {
        this.f35782g.reset();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j
    public void w(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        this.f35783h = position;
    }

    public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c companion, int i10, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, n0 externalLinkHandler, boolean z10) {
        Intrinsics.checkNotNullParameter(companion, "companion");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        this.f35776a = companion;
        this.f35777b = context;
        this.f35778c = customUserEventBuilderService;
        this.f35779d = externalLinkHandler;
        this.f35780e = z10;
        g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f35781f = a10;
        this.f35782g = h.a(i10, a10);
        this.f35783h = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c.f34983a.c(Offset.Companion.m1622getZeroF1C5BW0());
        this.f35784i = new i(customUserEventBuilderService, companion.b(), companion.c(), null, null, 24, null);
        kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b> b10 = kt.g.b(0, 0, null, 7, null);
        this.f35785j = b10;
        this.f35786k = b10;
        this.f35787l = companion.a() != null;
        k kVar = this.f35788m;
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> a11 = o.a(kVar != null ? kVar.k() : null);
        this.f35789n = a11;
        this.f35790o = a11;
        gt.g.d(a10, null, null, new a(null), 3, null);
    }
}
