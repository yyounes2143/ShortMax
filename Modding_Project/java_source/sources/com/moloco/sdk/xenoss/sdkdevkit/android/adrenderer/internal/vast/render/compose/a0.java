package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class a0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final at.p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> f35824a = i.f35896a.a();

    @SourceDebugExtension({"SMAP\nPlaybackControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/PlaybackControlKt$defaultPlaybackControl$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,60:1\n1057#2,6:61\n*S KotlinDebug\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/PlaybackControlKt$defaultPlaybackControl$1\n*L\n33#1:61,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, ? extends Unit>, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ at.p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> f35825a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(at.p<? super BoxScope, ? super Boolean, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit> pVar) {
            this.f35825a = pVar;
        }

        public static final Unit a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, Function0 function0, Function1 function1, boolean z10) {
            if (iVar instanceof i.a) {
                function0.invoke();
            } else {
                function1.invoke(Boolean.valueOf(!z10));
            }
            return Unit.f60915a;
        }

        @Composable
        public final void b(BoxScope boxScope, final boolean z10, final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i progress, final Function1<? super Boolean, Unit> onShouldPlay, final Function0<Unit> onShouldReplay, Composer composer, int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(progress, "progress");
            Intrinsics.checkNotNullParameter(onShouldPlay, "onShouldPlay");
            Intrinsics.checkNotNullParameter(onShouldReplay, "onShouldReplay");
            if ((i10 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i11 = i16 | i10;
            } else {
                i11 = i10;
            }
            if ((i10 & 48) == 0) {
                if (composer.changed(z10)) {
                    i15 = 32;
                } else {
                    i15 = 16;
                }
                i11 |= i15;
            }
            if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(progress)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i11 |= i14;
            }
            if ((i10 & 3072) == 0) {
                if (composer.changed(onShouldPlay)) {
                    i13 = 2048;
                } else {
                    i13 = 1024;
                }
                i11 |= i13;
            }
            if ((i10 & 24576) == 0) {
                if (composer.changed(onShouldReplay)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i11 |= i12;
            }
            if ((74899 & i11) == 74898 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1901828083, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultPlaybackControl.<anonymous> (PlaybackControl.kt:32)");
            }
            composer.startReplaceableGroup(263769922);
            boolean changed = composer.changed(progress) | composer.changed(onShouldReplay) | composer.changed(onShouldPlay) | composer.changed(z10);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.z
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return a0.a.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i.this, onShouldReplay, onShouldPlay, z10);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            this.f35825a.invoke(boxScope, Boolean.valueOf(z10), (Function0) rememberedValue, composer, Integer.valueOf(i11 & 126));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.r
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, Function1<? super Boolean, ? extends Unit> function1, Function0<? extends Unit> function0, Composer composer, Integer num) {
            b(boxScope, bool.booleanValue(), iVar, function1, function0, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @Composable
    @NotNull
    public static final at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, Unit>, Function0<Unit>, Composer, Integer, Unit> a(@Nullable at.p<? super BoxScope, ? super Boolean, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit> pVar, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(718660168);
        if ((i11 & 1) != 0) {
            pVar = f35824a;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(718660168, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultPlaybackControl (PlaybackControl.kt:30)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, 1901828083, true, new a(pVar));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }
}
