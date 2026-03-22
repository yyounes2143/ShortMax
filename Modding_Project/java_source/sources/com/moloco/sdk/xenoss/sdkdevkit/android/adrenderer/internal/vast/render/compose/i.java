package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f35896a = new i();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static at.p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> f35897b = ComposableLambdaKt.composableLambdaInstance(-1970835476, false, a.f35898a);

    @SourceDebugExtension({"SMAP\nPlaybackControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/ComposableSingletons$PlaybackControlKt$lambda-1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,60:1\n155#2:61\n*S KotlinDebug\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/ComposableSingletons$PlaybackControlKt$lambda-1$1\n*L\n52#1:61\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.p<BoxScope, Boolean, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f35898a = new a();

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0573a implements at.n<Boolean, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f35899a;

            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.i$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0574a implements at.n<RowScope, Composer, Integer, Unit> {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ boolean f35900a;

                public C0574a(boolean z10) {
                    this.f35900a = z10;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void a(RowScope TextButton, Composer composer, int i10) {
                    String str;
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    if ((i10 & 17) == 16 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-919554769, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.ComposableSingletons$PlaybackControlKt.lambda-1.<anonymous>.<anonymous>.<anonymous> (PlaybackControl.kt:55)");
                    }
                    if (this.f35900a) {
                        str = "Pause";
                    } else {
                        str = "Play";
                    }
                    TextKt.m1270TextfLXpl1I(str, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, null, null, composer, 0, 0, 65534);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                    a(rowScope, composer, num.intValue());
                    return Unit.f60915a;
                }
            }

            public C0573a(Function0<Unit> function0) {
                this.f35899a = function0;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(boolean z10, Composer composer, int i10) {
                int i11;
                int i12;
                if ((i10 & 6) == 0) {
                    if (composer.changed(z10)) {
                        i12 = 4;
                    } else {
                        i12 = 2;
                    }
                    i11 = i10 | i12;
                } else {
                    i11 = i10;
                }
                if ((i11 & 19) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(170935244, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.ComposableSingletons$PlaybackControlKt.lambda-1.<anonymous>.<anonymous> (PlaybackControl.kt:54)");
                }
                ButtonKt.TextButton(this.f35899a, null, false, null, null, null, null, null, null, ComposableLambdaKt.composableLambda(composer, -919554769, true, new C0574a(z10)), composer, 805306368, 510);
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

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(BoxScope boxScope, boolean z10, Function0<Unit> onClick, Composer composer, int i10) {
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
                ComposerKt.traceEventStart(-1970835476, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.ComposableSingletons$PlaybackControlKt.lambda-1.<anonymous> (PlaybackControl.kt:48)");
            }
            CrossfadeKt.Crossfade(Boolean.valueOf(z10), PaddingKt.m447padding3ABfNKs(boxScope.align(Modifier.Companion, Alignment.Companion.getBottomCenter()), Dp.m4049constructorimpl(4)), null, ComposableLambdaKt.composableLambda(composer, 170935244, true, new C0573a(onClick)), composer, ((i11 >> 3) & 14) | 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.p
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, Function0<? extends Unit> function0, Composer composer, Integer num) {
            a(boxScope, bool.booleanValue(), function0, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @NotNull
    public final at.p<BoxScope, Boolean, Function0<Unit>, Composer, Integer, Unit> a() {
        return f35897b;
    }
}
