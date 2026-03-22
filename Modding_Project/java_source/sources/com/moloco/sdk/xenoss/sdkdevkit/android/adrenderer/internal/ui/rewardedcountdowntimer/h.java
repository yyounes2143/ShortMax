package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nAggregateRewardedCountDownTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregateRewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/AggregateRewardedCountDownTimerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,69:1\n155#2:70\n1#3:71\n68#4,5:72\n73#4:103\n77#4:132\n75#5:77\n76#5,11:79\n89#5:131\n76#6:78\n460#7,13:90\n473#7,3:128\n1057#8,6:104\n1057#8,6:110\n1057#8,6:116\n1057#8,6:122\n*S KotlinDebug\n*F\n+ 1 AggregateRewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/AggregateRewardedCountDownTimerKt\n*L\n19#1:70\n24#1:72,5\n24#1:103\n24#1:132\n24#1:77\n24#1:79,11\n24#1:131\n24#1:78\n24#1:90,13\n24#1:128,3\n34#1:104,6\n33#1:110,6\n51#1:116,6\n50#1:122,6\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    public static final float a(int i10, int i11) {
        return ((float) ms.u.c(i10)) / ((float) ms.u.c(i11));
    }

    public static final Unit b() {
        return Unit.f60915a;
    }

    public static final Unit c(com.moloco.sdk.internal.ortb.model.i iVar, int i10, int i11, int i12, Composer composer, int i13) {
        e(iVar, i10, i11, composer, i12 | 1);
        return Unit.f60915a;
    }

    public static final Unit d(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0260  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void e(@org.jetbrains.annotations.NotNull final com.moloco.sdk.internal.ortb.model.i r24, final int r25, final int r26, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r27, final int r28) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.h.e(com.moloco.sdk.internal.ortb.model.i, int, int, androidx.compose.runtime.Composer, int):void");
    }

    public static final Unit f() {
        return Unit.f60915a;
    }

    public static final Unit g(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }
}
