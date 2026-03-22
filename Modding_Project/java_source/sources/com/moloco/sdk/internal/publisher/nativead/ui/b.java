package com.moloco.sdk.internal.publisher.nativead.ui;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import at.n;
import at.p;
import com.moloco.sdk.internal.publisher.nativead.ui.b;
import com.moloco.sdk.o;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e0;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f32904a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> f32905b = ComposableLambdaKt.composableLambdaInstance(1019496058, false, a.f32906a);

    @SourceDebugExtension({"SMAP\nNativeVideoPlaybackControlUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeVideoPlaybackControlUI.kt\ncom/moloco/sdk/internal/publisher/nativead/ui/ComposableSingletons$NativeVideoPlaybackControlUIKt$lambda-1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,43:1\n155#2:44\n1057#3,6:45\n*S KotlinDebug\n*F\n+ 1 NativeVideoPlaybackControlUI.kt\ncom/moloco/sdk/internal/publisher/nativead/ui/ComposableSingletons$NativeVideoPlaybackControlUIKt$lambda-1$1\n*L\n22#1:44\n23#1:45,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements p<BoxScope, Boolean, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32906a = new a();

        /* renamed from: com.moloco.sdk.internal.publisher.nativead.ui.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0486a implements n<Boolean, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f32907a;

            public C0486a(Function0<Unit> function0) {
                this.f32907a = function0;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(boolean z10, Composer composer, int i10) {
                int i11;
                int i12;
                int i13;
                if ((i10 & 6) == 0) {
                    if (composer.changed(z10)) {
                        i13 = 4;
                    } else {
                        i13 = 2;
                    }
                    i11 = i10 | i13;
                } else {
                    i11 = i10;
                }
                if ((i11 & 19) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1776469658, i11, -1, "com.moloco.sdk.internal.publisher.nativead.ui.ComposableSingletons$NativeVideoPlaybackControlUIKt.lambda-1.<anonymous>.<anonymous> (NativeVideoPlaybackControlUI.kt:30)");
                }
                if (z10) {
                    i12 = o.f33603h;
                } else {
                    i12 = o.f33604i;
                }
                e0.b(PainterResources_androidKt.painterResource(i12, composer, 0), this.f32907a, null, false, "play/pause", Color.Companion.m1879getWhite0d7_KjU(), 0L, 0L, null, 0L, composer, 221184, TTVideoEngineInterface.PLAYER_OPTION_GSKEY_CPU_NATIVE_REFRESH);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, Composer composer, Integer num) {
                a(bool.booleanValue(), composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public static final Unit a(String str, SemanticsPropertyReceiver semantics) {
            Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
            SemanticsPropertiesKt.setContentDescription(semantics, str);
            SemanticsPropertiesKt.setTestTag(semantics, str);
            return Unit.f60915a;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void b(BoxScope boxScope, boolean z10, Function0<Unit> onClick, Composer composer, int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onClick, "onClick");
            if ((i10 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i14 = 4;
                } else {
                    i14 = 2;
                }
                i11 = i14 | i10;
            } else {
                i11 = i10;
            }
            if ((i10 & 48) == 0) {
                if (composer.changed(z10)) {
                    i13 = 32;
                } else {
                    i13 = 16;
                }
                i11 |= i13;
            }
            if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(onClick)) {
                    i12 = 256;
                } else {
                    i12 = 128;
                }
                i11 |= i12;
            }
            if ((i11 & DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE) == 1170 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1019496058, i11, -1, "com.moloco.sdk.internal.publisher.nativead.ui.ComposableSingletons$NativeVideoPlaybackControlUIKt.lambda-1.<anonymous> (NativeVideoPlaybackControlUI.kt:17)");
            }
            Modifier m447padding3ABfNKs = PaddingKt.m447padding3ABfNKs(boxScope.align(Modifier.Companion, Alignment.Companion.getBottomCenter()), Dp.m4049constructorimpl(4));
            composer.startReplaceableGroup(277443603);
            boolean changed = composer.changed("playback_control_button");
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.internal.publisher.nativead.ui.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return b.a.a(r1, (SemanticsPropertyReceiver) obj);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            CrossfadeKt.Crossfade(Boolean.valueOf(z10), SemanticsModifierKt.semantics$default(m447padding3ABfNKs, false, (Function1) rememberedValue, 1, null), null, ComposableLambdaKt.composableLambda(composer, 1776469658, true, new C0486a(onClick)), composer, ((i11 >> 3) & 14) | 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.p
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, Function0<? extends Unit> function0, Composer composer, Integer num) {
            b(boxScope, bool.booleanValue(), function0, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @NotNull
    public final p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> a() {
        return f32905b;
    }
}
