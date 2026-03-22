package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.ButtonDefaults;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import coil.compose.SingletonAsyncImageKt;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nDEC.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DEC.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/DECKt\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,100:1\n78#2,2:101\n80#2:129\n84#2:137\n75#3:103\n76#3,11:105\n89#3:136\n76#4:104\n460#5,13:116\n473#5,3:133\n155#6:130\n155#6:131\n155#6:132\n*S KotlinDebug\n*F\n+ 1 DEC.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/DECKt\n*L\n38#1:101,2\n38#1:129\n38#1:137\n38#1:103\n38#1:105,11\n38#1:136\n38#1:104\n38#1:116,13\n38#1:133,3\n47#1:130\n53#1:131\n64#1:132\n*E\n"})
/* loaded from: classes6.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    public static final long f34738a = ColorKt.Color$default(71, 118, 238, 0, 8, null);

    /* renamed from: b  reason: collision with root package name */
    public static final long f34739b = Color.Companion.m1879getWhite0d7_KjU();

    /* loaded from: classes6.dex */
    public static final class a implements at.n<RowScope, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f34740a;

        public a(String str) {
            this.f34740a = str;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(RowScope Button, Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            if ((i10 & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1091822665, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.DEC.<anonymous>.<anonymous> (DEC.kt:73)");
            }
            String str = this.f34740a;
            if (str == null) {
                str = "";
            }
            TextKt.m1270TextfLXpl1I(str, null, b0.f34739b, 0L, null, FontWeight.Companion.getBold(), null, 0L, null, null, 0L, TextOverflow.Companion.m3991getEllipsisgIe3tQ8(), false, 1, null, null, composer, 196992, 3120, 55258);
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

    public static final Unit b(Modifier modifier, String str, String str2, String str3, Function0 function0, int i10, int i11, Composer composer, int i12) {
        c(modifier, str, str2, str3, function0, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void c(@Nullable Modifier modifier, @Nullable final String str, @Nullable final String str2, @Nullable final String str3, @NotNull final Function0<Unit> onClick, @Nullable Composer composer, final int i10, final int i11) {
        Modifier.Companion companion;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Composer composer2;
        Modifier.Companion companion2;
        Composer composer3;
        final Modifier modifier2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer startRestartGroup = composer.startRestartGroup(267258467);
        int i18 = i11 & 1;
        if (i18 != 0) {
            i12 = i10 | 6;
            companion = modifier;
        } else if ((i10 & 6) == 0) {
            companion = modifier;
            if (startRestartGroup.changed(companion)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            companion = modifier;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(str)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(str2)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 3072) == 0) {
            if (startRestartGroup.changed(str3)) {
                i16 = 2048;
            } else {
                i16 = 1024;
            }
            i12 |= i16;
        }
        if ((i11 & 16) != 0) {
            i12 |= 24576;
        } else if ((i10 & 24576) == 0) {
            if (startRestartGroup.changed(onClick)) {
                i17 = 16384;
            } else {
                i17 = 8192;
            }
            i12 |= i17;
        }
        if ((i12 & 9363) == 9362 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            modifier2 = companion;
            composer3 = startRestartGroup;
        } else {
            if (i18 != 0) {
                companion = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(267258467, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.DEC (DEC.kt:36)");
            }
            Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null);
            Color.Companion companion3 = Color.Companion;
            Modifier modifier3 = companion;
            int i19 = i12;
            Modifier m219clickableXHw0xAI$default = ClickableKt.m219clickableXHw0xAI$default(BackgroundKt.m200backgroundbw27NRU$default(fillMaxSize$default, companion3.m1868getBlack0d7_KjU(), null, 2, null), false, null, null, onClick, 7, null);
            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
            startRestartGroup.startReplaceableGroup(-483455358);
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, startRestartGroup, 54);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion4.getConstructor();
            at.n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m219clickableXHw0xAI$default);
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
            Updater.m1383setimpl(m1376constructorimpl, columnMeasurePolicy, companion4.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion4.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion4.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion4.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-1163856341);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            Modifier.Companion companion5 = Modifier.Companion;
            SingletonAsyncImageKt.a(str, null, SizeKt.m488size3ABfNKs(companion5, Dp.m4049constructorimpl(128)), null, null, null, null, 0.0f, null, 0, startRestartGroup, ((i19 >> 3) & 14) | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, 1016);
            startRestartGroup.startReplaceableGroup(-707855849);
            if (str2 != null) {
                SpacerKt.Spacer(SizeKt.m474height3ABfNKs(companion5, Dp.m4049constructorimpl(12)), startRestartGroup, 6);
                composer2 = startRestartGroup;
                companion2 = companion5;
                TextKt.m1270TextfLXpl1I(str2, null, companion3.m1879getWhite0d7_KjU(), 0L, null, FontWeight.Companion.getBold(), null, 0L, null, null, 0L, TextOverflow.Companion.m3991getEllipsisgIe3tQ8(), false, 2, null, null, composer2, ((i19 >> 6) & 14) | 196992, 3120, 55258);
            } else {
                composer2 = startRestartGroup;
                companion2 = companion5;
            }
            composer2.endReplaceableGroup();
            Composer composer4 = composer2;
            SpacerKt.Spacer(SizeKt.m474height3ABfNKs(companion2, Dp.m4049constructorimpl(8)), composer4, 6);
            composer3 = composer4;
            ButtonKt.Button(onClick, null, false, null, null, RoundedCornerShapeKt.getCircleShape(), null, ButtonDefaults.INSTANCE.m953buttonColorsro_MJ88(f34738a, f34739b, 0L, 0L, composer4, (ButtonDefaults.$stable << 12) | 54, 12), null, ComposableLambdaKt.composableLambda(composer4, 1091822665, true, new a(str3)), composer4, ((i19 >> 12) & 14) | 805306368, TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG);
            composer3.endReplaceableGroup();
            composer3.endReplaceableGroup();
            composer3.endNode();
            composer3.endReplaceableGroup();
            composer3.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        }
        ScopeUpdateScope endRestartGroup = composer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.a0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return b0.b(Modifier.this, str, str2, str3, onClick, i10, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
