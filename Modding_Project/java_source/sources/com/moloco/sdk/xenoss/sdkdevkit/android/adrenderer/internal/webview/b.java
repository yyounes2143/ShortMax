package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAdWebViewRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,306:1\n67#2,6:307\n73#2:339\n77#2:356\n67#2,6:357\n73#2:389\n77#2:406\n67#2,6:407\n73#2:439\n77#2:462\n75#3:313\n76#3,11:315\n89#3:355\n75#3:363\n76#3,11:365\n89#3:405\n75#3:413\n76#3,11:415\n89#3:461\n76#4:314\n76#4:364\n76#4:414\n460#5,13:326\n473#5,3:352\n460#5,13:376\n473#5,3:402\n460#5,13:426\n473#5,3:458\n1057#6,6:340\n1057#6,6:346\n1057#6,6:390\n1057#6,6:396\n1057#6,6:440\n1057#6,6:446\n1057#6,6:452\n76#7:463\n155#8:464\n*S KotlinDebug\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt\n*L\n76#1:307,6\n76#1:339\n76#1:356\n202#1:357,6\n202#1:389\n202#1:406\n272#1:407,6\n272#1:439\n272#1:462\n76#1:313\n76#1:315,11\n76#1:355\n202#1:363\n202#1:365,11\n202#1:405\n272#1:413\n272#1:415,11\n272#1:461\n76#1:314\n202#1:364\n272#1:414\n76#1:326,13\n76#1:352,3\n202#1:376,13\n202#1:402,3\n272#1:426,13\n272#1:458,3\n84#1:340,6\n93#1:346,6\n208#1:390,6\n258#1:396,6\n278#1:440,6\n287#1:446,6\n302#1:452,6\n216#1:463\n47#1:464\n*E\n"})
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a */
    public static final float f36435a = Dp.m4049constructorimpl(12);

    @SourceDebugExtension({"SMAP\nAdWebViewRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt$MraidAdContainerScreen$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,306:1\n1057#2,6:307\n*S KotlinDebug\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt$MraidAdContainerScreen$1$1\n*L\n231#1:307,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.n<i.a, Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> f36436a;

        /* renamed from: b */
        public final /* synthetic */ WebView f36437b;

        /* renamed from: c */
        public final /* synthetic */ int f36438c;

        /* renamed from: d */
        public final /* synthetic */ kt.e<Boolean> f36439d;

        /* renamed from: e */
        public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f36440e;

        /* renamed from: f */
        public final /* synthetic */ Function0<Unit> f36441f;

        /* renamed from: g */
        public final /* synthetic */ g0 f36442g;

        /* JADX WARN: Multi-variable type inference failed */
        public a(at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> tVar, WebView webView, int i10, kt.e<Boolean> eVar, Function1<? super a.AbstractC0597a.c, Unit> function1, Function0<Unit> function0, g0 g0Var) {
            this.f36436a = tVar;
            this.f36437b = webView;
            this.f36438c = i10;
            this.f36439d = eVar;
            this.f36440e = function1;
            this.f36441f = function0;
            this.f36442g = g0Var;
        }

        public static final View a(at.t tVar, WebView webView, int i10, final kt.e eVar, Function1 function1, g0 g0Var, final Function0 function0, Context it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return (View) tVar.invoke(it, webView, Integer.valueOf(i10), eVar, function1, new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.p
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a.b(kt.e.this, function0);
                }
            }, g0Var, Dp.m4047boximpl(b.a()), Boolean.TRUE);
        }

        public static final Unit b(kt.e eVar, Function0 function0) {
            b.n(eVar, function0);
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void c(i.a aVar, Composer composer, int i10) {
            int i11;
            if ((i10 & 6) == 0) {
                if (composer.changed(aVar)) {
                    i11 = 4;
                } else {
                    i11 = 2;
                }
                i10 |= i11;
            }
            if ((i10 & 19) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1684775380, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.MraidAdContainerScreen.<anonymous>.<anonymous> (AdWebViewRenderer.kt:218)");
            }
            if (aVar instanceof i.a.C0565a) {
                composer.startReplaceableGroup(1825931895);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.c) {
                composer.startReplaceableGroup(1825994391);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.b) {
                composer.startReplaceableGroup(-1880756851);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.f.d(((i.a.b) aVar).b(), null, null, SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), composer, 3504, 0);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.d) {
                composer.startReplaceableGroup(-1880747644);
                composer.startReplaceableGroup(-1880746209);
                boolean changed = composer.changed(this.f36436a) | composer.changed(this.f36437b) | composer.changed(this.f36438c) | composer.changed(this.f36439d) | composer.changed(this.f36440e) | composer.changed(this.f36441f) | composer.changed(this.f36442g);
                final at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> tVar = this.f36436a;
                final WebView webView = this.f36437b;
                final int i12 = this.f36438c;
                final kt.e<Boolean> eVar = this.f36439d;
                final Function1<a.AbstractC0597a.c, Unit> function1 = this.f36440e;
                final g0 g0Var = this.f36442g;
                final Function0<Unit> function0 = this.f36441f;
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.o
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return b.a.a(at.t.this, webView, i12, eVar, function1, g0Var, function0, (Context) obj);
                        }
                    };
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                AndroidView_androidKt.AndroidView((Function1) rememberedValue, null, null, composer, 0, 6);
                composer.endReplaceableGroup();
            } else if (aVar == null) {
                composer.startReplaceableGroup(1826950307);
                composer.endReplaceableGroup();
            } else {
                composer.startReplaceableGroup(-1880762669);
                composer.endReplaceableGroup();
                throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(i.a aVar, Composer composer, Integer num) {
            c(aVar, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b$b */
    /* loaded from: classes6.dex */
    public static final class C0590b implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final C0590b f36443a = new C0590b();

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(-1994751775);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1994751775, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.defaultAdWebViewRenderer.<anonymous> (AdWebViewRenderer.kt:141)");
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = c0.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class c implements Function2<Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ kt.e<Boolean> f36444a;

        /* renamed from: b */
        public final /* synthetic */ WebView f36445b;

        /* renamed from: c */
        public final /* synthetic */ int f36446c;

        /* renamed from: d */
        public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f36447d;

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f36448e;

        /* renamed from: f */
        public final /* synthetic */ long f36449f;

        /* renamed from: g */
        public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36450g;

        /* renamed from: h */
        public final /* synthetic */ g0 f36451h;

        /* renamed from: i */
        public final /* synthetic */ Dp f36452i;

        /* renamed from: j */
        public final /* synthetic */ boolean f36453j;

        @SourceDebugExtension({"SMAP\nAdWebViewRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt$defaultAdWebViewRenderer$2$1$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,306:1\n1057#2,6:307\n1057#2,6:313\n*S KotlinDebug\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt$defaultAdWebViewRenderer$2$1$1$1\n*L\n149#1:307,6\n153#1:313,6\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a implements Function2<Composer, Integer, Unit> {

            /* renamed from: a */
            public final /* synthetic */ kt.e<Boolean> f36454a;

            /* renamed from: b */
            public final /* synthetic */ WebView f36455b;

            /* renamed from: c */
            public final /* synthetic */ int f36456c;

            /* renamed from: d */
            public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f36457d;

            /* renamed from: e */
            public final /* synthetic */ Function0<Unit> f36458e;

            /* renamed from: f */
            public final /* synthetic */ long f36459f;

            /* renamed from: g */
            public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36460g;

            /* renamed from: h */
            public final /* synthetic */ g0 f36461h;

            /* renamed from: i */
            public final /* synthetic */ Dp f36462i;

            /* renamed from: j */
            public final /* synthetic */ boolean f36463j;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.AdWebViewRendererKt$defaultAdWebViewRenderer$2$1$1$1$1$1", f = "AdWebViewRenderer.kt", l = {155}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b$c$a$a */
            /* loaded from: classes6.dex */
            public static final class C0591a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                /* renamed from: h */
                public int f36464h;

                /* renamed from: i */
                public final /* synthetic */ MutableState<Boolean> f36465i;

                /* renamed from: j */
                public final /* synthetic */ kt.e<Boolean> f36466j;

                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b$c$a$a$a */
                /* loaded from: classes6.dex */
                public static final class C0592a<T> implements kt.c {

                    /* renamed from: a */
                    public final /* synthetic */ kt.e<Boolean> f36467a;

                    public C0592a(kt.e<Boolean> eVar) {
                        this.f36467a = eVar;
                    }

                    public final Object a(boolean z10, rs.c<? super Unit> cVar) {
                        this.f36467a.setValue(kotlin.coroutines.jvm.internal.a.a(z10));
                        return Unit.f60915a;
                    }

                    @Override // kt.c
                    public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                        return a(((Boolean) obj).booleanValue(), cVar);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0591a(MutableState<Boolean> mutableState, kt.e<Boolean> eVar, rs.c<? super C0591a> cVar) {
                    super(2, cVar);
                    this.f36465i = mutableState;
                    this.f36466j = eVar;
                }

                public static final boolean i(MutableState mutableState) {
                    return ((Boolean) mutableState.getValue()).booleanValue();
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                    return ((C0591a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0591a(this.f36465i, this.f36466j, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f36464h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            kotlin.f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        kotlin.f.b(obj);
                        final MutableState<Boolean> mutableState = this.f36465i;
                        kt.b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Boolean.valueOf(b.c.a.C0591a.i(MutableState.this));
                            }
                        });
                        C0592a c0592a = new C0592a(this.f36466j);
                        this.f36464h = 1;
                        if (snapshotFlow.collect(c0592a, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a(kt.e<Boolean> eVar, WebView webView, int i10, Function1<? super a.AbstractC0597a.c, Unit> function1, Function0<Unit> function0, long j10, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function2, g0 g0Var, Dp dp2, boolean z10) {
                this.f36454a = eVar;
                this.f36455b = webView;
                this.f36456c = i10;
                this.f36457d = function1;
                this.f36458e = function0;
                this.f36459f = j10;
                this.f36460g = function2;
                this.f36461h = g0Var;
                this.f36462i = dp2;
                this.f36463j = z10;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Composer composer, int i10) {
                if ((i10 & 3) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-126697744, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.defaultAdWebViewRenderer.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AdWebViewRenderer.kt:148)");
                }
                composer.startReplaceableGroup(1335678415);
                kt.e<Boolean> eVar = this.f36454a;
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(eVar.getValue(), null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                composer.endReplaceableGroup();
                Unit unit = Unit.f60915a;
                composer.startReplaceableGroup(1335682252);
                boolean changed = composer.changed(mutableState) | composer.changed(this.f36454a);
                kt.e<Boolean> eVar2 = this.f36454a;
                Object rememberedValue2 = composer.rememberedValue();
                if (changed || rememberedValue2 == companion.getEmpty()) {
                    rememberedValue2 = new C0591a(mutableState, eVar2, null);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue2, composer, 6);
                b.m(this.f36455b, this.f36456c, mutableState, this.f36457d, this.f36458e, null, this.f36459f, this.f36460g.invoke(composer, 0), this.f36461h, this.f36462i.m4063unboximpl(), this.f36463j, composer, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0, 32);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(kt.e<Boolean> eVar, WebView webView, int i10, Function1<? super a.AbstractC0597a.c, Unit> function1, Function0<Unit> function0, long j10, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function2, g0 g0Var, Dp dp2, boolean z10) {
            this.f36444a = eVar;
            this.f36445b = webView;
            this.f36446c = i10;
            this.f36447d = function1;
            this.f36448e = function0;
            this.f36449f = j10;
            this.f36450g = function2;
            this.f36451h = g0Var;
            this.f36452i = dp2;
            this.f36453j = z10;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1932677773, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.defaultAdWebViewRenderer.<anonymous>.<anonymous>.<anonymous> (AdWebViewRenderer.kt:147)");
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.d.b(false, ComposableLambdaKt.composableLambda(composer, -126697744, true, new a(this.f36444a, this.f36445b, this.f36446c, this.f36447d, this.f36448e, this.f36449f, this.f36450g, this.f36451h, this.f36452i, this.f36453j)), composer, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    public static final float a() {
        return f36435a;
    }

    public static final View b(at.t tVar, WebView webView, int i10, final kt.e eVar, Function1 function1, g0 g0Var, final Function0 function0, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (View) tVar.invoke(it, webView, Integer.valueOf(i10), eVar, function1, new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.r(kt.e.this, function0);
            }
        }, g0Var, Dp.m4047boximpl(f36435a), Boolean.FALSE);
    }

    public static final ComposeView c(long j10, Function2 function2, Context context, WebView webView, int i10, kt.e canClose, Function1 onButtonRendered, Function0 onClose, g0 g0Var, Dp dp2, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(canClose, "canClose");
        Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        ComposeView composeView = new ComposeView(context, null, 0, 6, null);
        composeView.setId(com.moloco.sdk.p.f33609a);
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(-1932677773, true, new c(canClose, webView, i10, onButtonRendered, onClose, j10, function2, g0Var, dp2, z10)));
        return composeView;
    }

    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]]]")
    @NotNull
    public static final at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> d(final long j10, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> adCloseCountdownButton) {
        Intrinsics.checkNotNullParameter(adCloseCountdownButton, "adCloseCountdownButton");
        return new at.t() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.l
            @Override // at.t
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9) {
                return b.c(j10, adCloseCountdownButton, (Context) obj, (WebView) obj2, ((Integer) obj3).intValue(), (kt.e) obj4, (Function1) obj5, (Function0) obj6, (g0) obj7, (Dp) obj8, ((Boolean) obj9).booleanValue());
            }
        };
    }

    public static /* synthetic */ at.t e(long j10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = Color.Companion.m1868getBlack0d7_KjU();
        }
        if ((i10 & 2) != 0) {
            function2 = C0590b.f36443a;
        }
        return d(j10, function2);
    }

    public static final i.a f(State<? extends i.a> state) {
        return state.getValue();
    }

    public static final Unit g(Activity activity, WebView webView, int i10, Function1 function1, Function0 function0, at.t tVar, g0 g0Var, int i11, Composer composer, int i12) {
        k(activity, webView, i10, function1, function0, tVar, g0Var, composer, i11 | 1);
        return Unit.f60915a;
    }

    public static final Unit h(Activity activity, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, WebView webView, int i10, Function1 function1, Function0 function0, at.t tVar, g0 g0Var, at.a aVar, at.a aVar2, int i11, Composer composer, int i12) {
        l(activity, iVar, webView, i10, function1, function0, tVar, g0Var, aVar, aVar2, composer, i11 | 1);
        return Unit.f60915a;
    }

    public static final Unit i(WebView webView, int i10, MutableState mutableState, Function1 function1, Function0 function0, Modifier modifier, long j10, at.a aVar, g0 g0Var, float f10, boolean z10, int i11, int i12, int i13, Composer composer, int i14) {
        m(webView, i10, mutableState, function1, function0, modifier, j10, aVar, g0Var, f10, z10, composer, i11 | 1, i12, i13);
        return Unit.f60915a;
    }

    public static final Unit j(MutableState mutableState) {
        mutableState.setValue(Boolean.TRUE);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void k(@NotNull final Activity activity, @NotNull final WebView webView, final int i10, @NotNull final Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, @NotNull final Function0<Unit> onClose, @NotNull final at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> adWebViewRenderer, @Nullable final g0 g0Var, @Nullable Composer composer, final int i11) {
        int i12;
        boolean z10;
        int i13;
        Composer composer2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        Intrinsics.checkNotNullParameter(adWebViewRenderer, "adWebViewRenderer");
        Composer startRestartGroup = composer.startRestartGroup(-1336318846);
        if ((i11 & 6) == 0) {
            if (startRestartGroup.changed(activity)) {
                i20 = 4;
            } else {
                i20 = 2;
            }
            i12 = i20 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            if (startRestartGroup.changed(webView)) {
                i19 = 32;
            } else {
                i19 = 16;
            }
            i12 |= i19;
        }
        if ((i11 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(i10)) {
                i18 = 256;
            } else {
                i18 = 128;
            }
            i12 |= i18;
        }
        if ((i11 & 3072) == 0) {
            if (startRestartGroup.changed(onButtonRendered)) {
                i17 = 2048;
            } else {
                i17 = 1024;
            }
            i12 |= i17;
        }
        if ((i11 & 24576) == 0) {
            if (startRestartGroup.changed(onClose)) {
                i16 = 16384;
            } else {
                i16 = 8192;
            }
            i12 |= i16;
        }
        if ((196608 & i11) == 0) {
            if (startRestartGroup.changed(adWebViewRenderer)) {
                i15 = 131072;
            } else {
                i15 = 65536;
            }
            i12 |= i15;
        }
        if ((1572864 & i11) == 0) {
            if (startRestartGroup.changed(g0Var)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i12 |= i14;
        }
        int i21 = i12;
        if ((599187 & i21) == 599186 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1336318846, i21, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.StaticAdWebViewScreen (AdWebViewRenderer.kt:270)");
            }
            Modifier m200backgroundbw27NRU$default = BackgroundKt.m200backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), Color.Companion.m1868getBlack0d7_KjU(), null, 2, null);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            at.n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m200backgroundbw27NRU$default);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(1609892771);
            boolean changed = startRestartGroup.changed(i10);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                if (i10 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                rememberedValue = kotlinx.coroutines.flow.o.a(Boolean.valueOf(z10));
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final kt.e eVar = (kt.e) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1609900314);
            boolean changed2 = startRestartGroup.changed(adWebViewRenderer) | startRestartGroup.changed(webView) | startRestartGroup.changed(i10) | startRestartGroup.changed(eVar) | startRestartGroup.changed(onButtonRendered) | startRestartGroup.changed(onClose) | startRestartGroup.changed(g0Var);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (!changed2 && rememberedValue2 != Composer.Companion.getEmpty()) {
                i13 = i21;
                composer2 = startRestartGroup;
            } else {
                i13 = i21;
                composer2 = startRestartGroup;
                Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return b.b(at.t.this, webView, i10, eVar, onButtonRendered, g0Var, onClose, (Context) obj);
                    }
                };
                composer2.updateRememberedValue(function1);
                rememberedValue2 = function1;
            }
            composer2.endReplaceableGroup();
            AndroidView_androidKt.AndroidView((Function1) rememberedValue2, null, null, composer2, 0, 6);
            composer2.startReplaceableGroup(1609912856);
            boolean changed3 = composer2.changed(eVar) | composer2.changed(onClose);
            Object rememberedValue3 = composer2.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.s(kt.e.this, onClose);
                    }
                };
                composer2.updateRememberedValue(rememberedValue3);
            }
            composer2.endReplaceableGroup();
            BackHandlerKt.BackHandler(false, (Function0) rememberedValue3, composer2, 0, 1);
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.s.b(activity, composer2, i13 & 14);
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.h
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return b.g(activity, webView, i10, onButtonRendered, onClose, adWebViewRenderer, g0Var, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[_][_]]")
    public static final void l(@NotNull final Activity activity, @NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i adViewModel, @NotNull final WebView webView, final int i10, @NotNull final Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, @NotNull final Function0<Unit> onClose, @NotNull final at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> adWebViewRenderer, @Nullable final g0 g0Var, @Nullable final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar, @Nullable final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar2, @Nullable Composer composer, final int i11) {
        int i12;
        boolean z10;
        Composer composer2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(adViewModel, "adViewModel");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        Intrinsics.checkNotNullParameter(adWebViewRenderer, "adWebViewRenderer");
        Composer startRestartGroup = composer.startRestartGroup(-476084514);
        if ((i11 & 6) == 0) {
            if (startRestartGroup.changed(activity)) {
                i22 = 4;
            } else {
                i22 = 2;
            }
            i12 = i22 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            if (startRestartGroup.changed(adViewModel)) {
                i21 = 32;
            } else {
                i21 = 16;
            }
            i12 |= i21;
        }
        if ((i11 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(webView)) {
                i20 = 256;
            } else {
                i20 = 128;
            }
            i12 |= i20;
        }
        if ((i11 & 3072) == 0) {
            if (startRestartGroup.changed(i10)) {
                i19 = 2048;
            } else {
                i19 = 1024;
            }
            i12 |= i19;
        }
        if ((i11 & 24576) == 0) {
            if (startRestartGroup.changed(onButtonRendered)) {
                i18 = 16384;
            } else {
                i18 = 8192;
            }
            i12 |= i18;
        }
        if ((196608 & i11) == 0) {
            if (startRestartGroup.changed(onClose)) {
                i17 = 131072;
            } else {
                i17 = 65536;
            }
            i12 |= i17;
        }
        if ((1572864 & i11) == 0) {
            if (startRestartGroup.changed(adWebViewRenderer)) {
                i16 = 1048576;
            } else {
                i16 = 524288;
            }
            i12 |= i16;
        }
        if ((12582912 & i11) == 0) {
            if (startRestartGroup.changed(g0Var)) {
                i15 = 8388608;
            } else {
                i15 = 4194304;
            }
            i12 |= i15;
        }
        if ((100663296 & i11) == 0) {
            if (startRestartGroup.changed(aVar)) {
                i14 = 67108864;
            } else {
                i14 = 33554432;
            }
            i12 |= i14;
        }
        if ((805306368 & i11) == 0) {
            if (startRestartGroup.changed(aVar2)) {
                i13 = 536870912;
            } else {
                i13 = 268435456;
            }
            i12 |= i13;
        }
        int i23 = i12;
        if ((306783379 & i23) == 306783378 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-476084514, i23, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.MraidAdContainerScreen (AdWebViewRenderer.kt:200)");
            }
            Modifier testTag = TestTagKt.testTag(BackgroundKt.m200backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), Color.Companion.m1868getBlack0d7_KjU(), null, 2, null), "MraidAdContainerScreen");
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            at.n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(testTag);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(1204536538);
            boolean changed = startRestartGroup.changed(i10);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                if (i10 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                rememberedValue = kotlinx.coroutines.flow.o.a(Boolean.valueOf(z10));
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final kt.e eVar = (kt.e) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            State collectAsState = SnapshotStateKt.collectAsState(adViewModel.k(), null, startRestartGroup, 0, 1);
            CrossfadeKt.Crossfade(f(collectAsState), null, null, ComposableLambdaKt.composableLambda(startRestartGroup, 1684775380, true, new a(adWebViewRenderer, webView, i10, eVar, onButtonRendered, onClose, g0Var)), startRestartGroup, 3072, 6);
            composer2 = startRestartGroup;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e.e(boxScopeInstance, adViewModel, f(collectAsState), aVar2, aVar, composer2, (i23 & 112) | 6 | ((i23 >> 18) & 7168) | ((i23 >> 12) & 57344));
            composer2.startReplaceableGroup(1204592495);
            boolean changed2 = composer2.changed(eVar) | composer2.changed(onClose);
            Object rememberedValue2 = composer2.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.j
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.o(kt.e.this, onClose);
                    }
                };
                composer2.updateRememberedValue(rememberedValue2);
            }
            composer2.endReplaceableGroup();
            BackHandlerKt.BackHandler(false, (Function0) rememberedValue2, composer2, 0, 1);
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.s.b(activity, composer2, i23 & 14);
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return b.h(activity, adViewModel, webView, i10, onButtonRendered, onClose, adWebViewRenderer, g0Var, aVar, aVar2, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:249:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:363:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m(final android.webkit.WebView r34, final int r35, final androidx.compose.runtime.MutableState<java.lang.Boolean> r36, final kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, kotlin.Unit> r37, final kotlin.jvm.functions.Function0<kotlin.Unit> r38, androidx.compose.ui.Modifier r39, long r40, at.a<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super java.lang.Boolean, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, kotlin.Unit>, ? super java.lang.Boolean, ? super ms.n, ? super ms.n, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 r43, final float r44, final boolean r45, androidx.compose.runtime.Composer r46, final int r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b.m(android.webkit.WebView, int, androidx.compose.runtime.MutableState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, long, at.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, float, boolean, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final void n(kt.e<Boolean> eVar, Function0<Unit> function0) {
        if (eVar.getValue().booleanValue()) {
            function0.invoke();
        }
    }

    public static final Unit o(kt.e eVar, Function0 function0) {
        n(eVar, function0);
        return Unit.f60915a;
    }

    public static final void q(kt.e<Boolean> eVar, Function0<Unit> function0) {
        if (eVar.getValue().booleanValue()) {
            function0.invoke();
        }
    }

    public static final Unit r(kt.e eVar, Function0 function0) {
        q(eVar, function0);
        return Unit.f60915a;
    }

    public static final Unit s(kt.e eVar, Function0 function0) {
        q(eVar, function0);
        return Unit.f60915a;
    }
}
