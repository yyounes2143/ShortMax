package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j;
import com.ss.ttm.player.MediaPlayer;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nVastResourceHtml.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastResourceHtml.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastResourceHtmlKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 WebViewRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/WebViewRepository\n*L\n1#1,19:1\n1057#2,3:20\n1060#2,3:24\n20#3:23\n*S KotlinDebug\n*F\n+ 1 VastResourceHtml.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastResourceHtmlKt\n*L\n13#1:20,3\n13#1:24,3\n14#1:23\n*E\n"})
/* loaded from: classes6.dex */
public final class q0 {
    public static final Unit a(j.a aVar, Modifier modifier, int i10, int i11, Composer composer, int i12) {
        b(aVar, modifier, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void b(@NotNull final j.a htmlResource, @Nullable final Modifier modifier, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        Map map;
        Intrinsics.checkNotNullParameter(htmlResource, "htmlResource");
        Composer startRestartGroup = composer.startRestartGroup(-1230364815);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(htmlResource)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        int i15 = 2 & i11;
        if (i15 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i12 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i15 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1230364815, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastResourceHtml (VastResourceHtml.kt:11)");
            }
            startRestartGroup.startReplaceableGroup(-1944712831);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.e0 e0Var = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.e0.f33962a;
                int a10 = htmlResource.a();
                map = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.e0.f33963b;
                Object obj = map.get(Integer.valueOf(a10));
                if (!(obj instanceof C3281d)) {
                    obj = null;
                }
                rememberedValue = (C3281d) obj;
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            C3281d c3281d = (C3281d) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            if (c3281d == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
                if (endRestartGroup != null) {
                    endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.o0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return q0.a(j.a.this, modifier, i10, i11, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.a.d(c3281d, modifier, null, startRestartGroup, (i12 & 112) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 != null) {
            endRestartGroup2.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.p0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return q0.c(j.a.this, modifier, i10, i11, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    public static final Unit c(j.a aVar, Modifier modifier, int i10, int i11, Composer composer, int i12) {
        b(aVar, modifier, composer, i10 | 1, i11);
        return Unit.f60915a;
    }
}
