package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nTrackableButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackableButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/TrackableButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,35:1\n1057#2,6:36\n1057#2,6:42\n76#3:48\n102#3,2:49\n*S KotlinDebug\n*F\n+ 1 TrackableButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/TrackableButtonKt\n*L\n24#1:36,6\n29#1:42,6\n24#1:48\n24#1:49,2\n*E\n"})
/* loaded from: classes6.dex */
public final class k0 {
    public static final a.AbstractC0597a.c a(MutableState<a.AbstractC0597a.c> mutableState) {
        return mutableState.getValue();
    }

    public static final Unit b(Modifier modifier, a.AbstractC0597a.c.EnumC0599a enumC0599a, Function1 function1, at.n nVar, int i10, int i11, Composer composer, int i12) {
        e(modifier, enumC0599a, function1, nVar, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    public static final Unit c(Function1 function1, MutableState mutableState, a.AbstractC0597a.c it) {
        Intrinsics.checkNotNullParameter(it, "it");
        d(mutableState, it);
        function1.invoke(it);
        return Unit.f60915a;
    }

    public static final void d(MutableState<a.AbstractC0597a.c> mutableState, a.AbstractC0597a.c cVar) {
        mutableState.setValue(cVar);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void e(@Nullable Modifier modifier, @NotNull final a.AbstractC0597a.c.EnumC0599a buttonType, @NotNull final Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, @NotNull final at.n<? super Modifier, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1040306081);
        int i17 = i11 & 1;
        if (i17 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(buttonType)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(onButtonRendered)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 3072) == 0) {
            if (startRestartGroup.changed(content)) {
                i16 = 2048;
            } else {
                i16 = 1024;
            }
            i12 |= i16;
        }
        if ((i12 & DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i17 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1040306081, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.TrackableButton (TrackableButton.kt:22)");
            }
            startRestartGroup.startReplaceableGroup(-334659178);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.b.a(buttonType), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            a.AbstractC0597a.c a10 = a(mutableState);
            startRestartGroup.startReplaceableGroup(-334654626);
            boolean changed = startRestartGroup.changed(mutableState) | startRestartGroup.changed(onButtonRendered);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.i0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return k0.c(Function1.this, mutableState, (a.AbstractC0597a.c) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            content.invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.modifiers.b.a(modifier, a10, (Function1) rememberedValue2), startRestartGroup, Integer.valueOf((i12 >> 6) & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.j0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return k0.b(Modifier.this, buttonType, onButtonRendered, content, i10, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
