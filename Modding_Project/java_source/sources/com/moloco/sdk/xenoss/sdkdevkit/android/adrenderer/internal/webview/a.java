package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAdWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,51:1\n1057#2,6:52\n1057#2,6:59\n1#3:58\n62#4,5:65\n*S KotlinDebug\n*F\n+ 1 AdWebView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewKt\n*L\n18#1:52,6\n45#1:59,6\n46#1:65,5\n*E\n"})
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0589a implements Function2<Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Unit f36433a;

        public C0589a(Unit unit) {
            this.f36433a = unit;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1018657295, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.AdWebView.<anonymous>.<anonymous> (AdWebView.kt:40)");
            }
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

    @SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 AdWebView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewKt\n*L\n1#1,483:1\n47#2,2:484\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b implements DisposableEffectResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ WebView f36434a;

        public b(WebView webView) {
            this.f36434a = webView;
        }

        @Override // androidx.compose.runtime.DisposableEffectResult
        public void dispose() {
            ViewGroup viewGroup;
            ViewParent parent = this.f36434a.getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeView(this.f36434a);
            }
        }
    }

    public static final FrameLayout a(WebView webView, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        FrameLayout frameLayout = new FrameLayout(it);
        webView.setBackgroundColor(0);
        webView.setVisibility(0);
        frameLayout.addView(webView, new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    public static final DisposableEffectResult b(WebView webView, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        return new b(webView);
    }

    public static final Unit c(WebView webView, Modifier modifier, g0 g0Var, int i10, int i11, Composer composer, int i12) {
        d(webView, modifier, g0Var, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void d(@NotNull final WebView webView, @Nullable Modifier modifier, @Nullable final g0 g0Var, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Intrinsics.checkNotNullParameter(webView, "webView");
        Composer startRestartGroup = composer.startRestartGroup(-1111633024);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(webView)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        int i16 = i11 & 2;
        if (i16 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(g0Var)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        int i17 = i12;
        if ((i17 & 147) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i16 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1111633024, i17, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.AdWebView (AdWebView.kt:13)");
            }
            startRestartGroup.startReplaceableGroup(1539490980);
            startRestartGroup.startReplaceableGroup(1539458953);
            boolean changed = startRestartGroup.changed(webView);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return a.a(webView, (Context) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            AndroidView_androidKt.AndroidView((Function1) rememberedValue, modifier, null, startRestartGroup, i17 & 112, 4);
            Unit unit = Unit.f60915a;
            startRestartGroup.startReplaceableGroup(1539491745);
            if (g0Var != null) {
                g0Var.a(ComposableLambdaKt.composableLambda(startRestartGroup, 1018657295, true, new C0589a(unit)), startRestartGroup, ((i17 >> 3) & 112) | 6);
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1539498319);
            boolean changed2 = startRestartGroup.changed(webView);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return a.b(webView, (DisposableEffectScope) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.DisposableEffect(webView, (Function1) rememberedValue2, startRestartGroup, i17 & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return a.c(webView, modifier2, g0Var, i10, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
