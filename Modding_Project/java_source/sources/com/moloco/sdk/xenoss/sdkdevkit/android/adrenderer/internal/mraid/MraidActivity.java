package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.q0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KFunction;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nMraidActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MraidActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,266:1\n1#2:267\n*E\n"})
/* loaded from: classes6.dex */
public final class MraidActivity extends ComponentActivity {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f34215f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f34216g = 8;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> f34217h = kt.g.b(0, 0, null, 7, null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34218a = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f34219b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MraidActivity.l();
        }
    });
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f34220c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public s f34221d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f34222e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean c(@NotNull f adData, @NotNull s controller, @NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p options, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02) {
            Intrinsics.checkNotNullParameter(adData, "adData");
            Intrinsics.checkNotNullParameter(controller, "controller");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(options, "options");
            if (!d(controller)) {
                return false;
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d dVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a;
            dVar.d(adData);
            dVar.f(g0Var);
            dVar.c(options.a());
            dVar.h(options.c());
            dVar.g(function0);
            dVar.e(controller);
            dVar.j(function02);
            Intent intent = new Intent(context, MraidActivity.class);
            q0.a(intent, options.b());
            q0.e(intent, options.d());
            intent.setFlags(268435456);
            context.startActivity(intent);
            return true;
        }

        public final boolean d(s sVar) {
            ViewParent viewParent;
            ViewGroup viewGroup;
            WebView c10;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d dVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a;
            s p10 = dVar.p();
            if (p10 != null && !Intrinsics.areEqual(p10, sVar)) {
                return false;
            }
            dVar.e(null);
            if (p10 != null && (c10 = p10.c()) != null) {
                viewParent = c10.getParent();
            } else {
                viewParent = null;
            }
            if (viewParent instanceof ViewGroup) {
                viewGroup = (ViewGroup) viewParent;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeView(p10.c());
            }
            dVar.c(null);
            dVar.d(null);
            dVar.f(null);
            Activity o10 = dVar.o();
            if (o10 != null) {
                o10.finish();
            }
            dVar.b(null);
            return true;
        }

        public final boolean e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar) {
            return Intrinsics.areEqual(bVar, b.e.f35688a);
        }

        public final boolean g(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar) {
            return bVar instanceof b.f;
        }

        public a() {
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34223a;

        static {
            int[] iArr = new int[p.values().length];
            try {
                iArr[p.f34324b.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[p.f34325c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[p.f34326d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f34223a = iArr;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity$onCreate$1", f = "MraidActivity.kt", l = {116}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34224h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34225i;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f34225i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super Unit> cVar) {
            return ((c) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34224h;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f34225i;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f34225i;
                kt.d dVar = MraidActivity.f34217h;
                this.f34225i = bVar2;
                this.f34224h = 1;
                if (dVar.emit(bVar2, this) == f10) {
                    return f10;
                }
                bVar = bVar2;
            }
            a aVar = MraidActivity.f34215f;
            if (aVar.g(bVar)) {
                MraidActivity.this.finish();
            } else if (aVar.e(bVar)) {
                MraidActivity.this.f34222e = true;
                MraidActivity.this.finish();
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nMraidActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MraidActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity$onCreate$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,266:1\n1057#2,6:267\n1057#2,6:273\n*S KotlinDebug\n*F\n+ 1 MraidActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity$onCreate$2\n*L\n131#1:267,6\n132#1:273,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d implements Function2<Composer, Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f34228b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ s f34229c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, Dp, Boolean, View> f34230d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f34231e;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a extends FunctionReferenceImpl implements Function0<Unit> {
            public a(Object obj) {
                super(0, obj, s.class, "onSkipOrClose", "onSkipOrClose()V", 0);
            }

            public final void b() {
                ((s) this.receiver).N();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar, s sVar, at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, ? super Dp, ? super Boolean, ? extends View> tVar, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function2) {
            this.f34228b = aVar;
            this.f34229c = sVar;
            this.f34230d = tVar;
            this.f34231e = function2;
        }

        public static final Unit a(a.AbstractC0597a.c it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void b(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1048815572, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity.onCreate.<anonymous> (MraidActivity.kt:126)");
            }
            MraidActivity mraidActivity = MraidActivity.this;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f34228b;
            WebView c10 = this.f34229c.c();
            Intent intent = MraidActivity.this.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
            int h10 = q0.h(intent);
            composer.startReplaceableGroup(-674125612);
            Object rememberedValue = composer.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MraidActivity.d.a((a.AbstractC0597a.c) obj);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            composer.endReplaceableGroup();
            s sVar = this.f34229c;
            composer.startReplaceableGroup(-674123563);
            boolean changed = composer.changed(sVar);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new a(sVar);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b.l(mraidActivity, aVar, c10, h10, function1, (Function0) ((KFunction) rememberedValue2), this.f34230d, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a.n(), this.f34231e.invoke(composer, 0), com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.p.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255), composer, 24576);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            b(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class e extends AdaptedFunctionReference implements Function2<x.f, rs.c<? super Unit>, Object> {
        public e(Object obj) {
            super(2, obj, MraidActivity.class, "setOrientation", "setOrientation(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidJsCommand$SetOrientationProperties;)V", 4);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: b */
        public final Object invoke(x.f fVar, rs.c<? super Unit> cVar) {
            return MraidActivity.m((MraidActivity) this.receiver, fVar, cVar);
        }
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a l() {
        return b.k.f33671a.b();
    }

    public static final /* synthetic */ Object m(MraidActivity mraidActivity, x.f fVar, rs.c cVar) {
        mraidActivity.j(fVar);
        return Unit.f60915a;
    }

    public final Integer f(p pVar) {
        int i10 = b.f34223a[pVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            return 0;
        }
        return 1;
    }

    public final void j(x.f fVar) {
        p d10;
        Integer f10;
        if (fVar != null && (d10 = fVar.d()) != null && (f10 = f(d10)) != null) {
            setRequestedOrientation(f10.intValue());
        }
    }

    public final void k(kt.i<x.f> iVar) {
        j(iVar.getValue());
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(iVar, new e(this)), this.f34218a);
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a n() {
        return (com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a) this.f34219b.getValue();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar;
        super.onCreate(bundle);
        com.moloco.sdk.internal.android_context.b.a(getApplicationContext());
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d dVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a;
        dVar.b(this);
        Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> i10 = dVar.i();
        at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, Dp, Boolean, View> k10 = dVar.k();
        if (k10 == null) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidActivity", "can't display ad: MraidRenderer is missing", null, false, 12, null);
            finish();
            return;
        }
        s p10 = dVar.p();
        if (p10 == null) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidActivity", "can't display ad: mraid controller is missing", null, false, 12, null);
            finish();
            return;
        }
        f a10 = dVar.a();
        if (a10 != null) {
            n0 f10 = b.h.f33655a.f();
            Intent intent = getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
            aVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.a(a10, f10, this, p10, q0.k(intent), n());
        } else {
            aVar = null;
        }
        if (aVar == null) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidActivity", "can't display ad: mraid ad data is missing", null, false, 12, null);
            finish();
            return;
        }
        k(p10.e());
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(aVar.a(), new c(null)), this.f34218a);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(-1048815572, true, new d(aVar, p10, k10, i10)), 1, null);
        aVar.d();
        this.f34220c = aVar;
        this.f34221d = p10;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Function0<Unit> m10;
        super.onDestroy();
        if (!this.f34222e && (m10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a.m()) != null) {
            m10.invoke();
        }
        Function0<Unit> l10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.d.f34243a.l();
        if (l10 != null) {
            l10.invoke();
        }
        f34215f.d(this.f34221d);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f34220c;
        if (aVar != null) {
            aVar.destroy();
        }
        this.f34220c = null;
        kotlinx.coroutines.i.e(this.f34218a, null, 1, null);
    }
}
