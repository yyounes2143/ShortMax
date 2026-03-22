package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListItem.kt */
@Metadata
/* loaded from: classes.dex */
final class OneLine {
    private static final float ContentLeftPadding;
    private static final float ContentRightPadding;
    private static final float IconLeftPadding;
    private static final float TrailingRightPadding;
    @NotNull
    public static final OneLine INSTANCE = new OneLine();
    private static final float MinHeight = Dp.m4049constructorimpl(48);
    private static final float MinHeightWithIcon = Dp.m4049constructorimpl(56);
    private static final float IconMinPaddedWidth = Dp.m4049constructorimpl(40);
    private static final float IconVerticalPadding = Dp.m4049constructorimpl(8);

    static {
        float f10 = 16;
        IconLeftPadding = Dp.m4049constructorimpl(f10);
        ContentLeftPadding = Dp.m4049constructorimpl(f10);
        ContentRightPadding = Dp.m4049constructorimpl(f10);
        TrailingRightPadding = Dp.m4049constructorimpl(f10);
    }

    private OneLine() {
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public final void ListItem(@Nullable Modifier modifier, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @NotNull final Function2<? super Composer, ? super Integer, Unit> text, @Nullable final Function2<? super Composer, ? super Integer, Unit> function22, @Nullable Composer composer, final int i10, final int i11) {
        Modifier.Companion companion;
        int i12;
        Intrinsics.checkNotNullParameter(text, "text");
        Composer startRestartGroup = composer.startRestartGroup(-1884451315);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            companion = modifier;
        } else if ((i10 & 14) == 0) {
            companion = modifier;
            i12 = (startRestartGroup.changed(companion) ? 4 : 2) | i10;
        } else {
            companion = modifier;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= startRestartGroup.changed(function2) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            i12 |= startRestartGroup.changed(text) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= startRestartGroup.changed(function22) ? 2048 : 1024;
        }
        if ((i11 & 16) != 0) {
            i12 |= 24576;
        } else if ((57344 & i10) == 0) {
            i12 |= startRestartGroup.changed(this) ? 16384 : 8192;
        }
        if ((46811 & i12) == 9362 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i13 != 0) {
                companion = Modifier.Companion;
            }
            Modifier m476heightInVpY3zN4$default = SizeKt.m476heightInVpY3zN4$default(companion, function2 == null ? MinHeight : MinHeightWithIcon, 0.0f, 2, null);
            startRestartGroup.startReplaceableGroup(693286680);
            Arrangement.Horizontal start = Arrangement.INSTANCE.getStart();
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(start, companion2.getTop(), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m476heightInVpY3zN4$default);
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
            Updater.m1383setimpl(m1376constructorimpl, rowMeasurePolicy, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-678309503);
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-2040473487);
            startRestartGroup.startReplaceableGroup(1825884304);
            if (function2 != null) {
                Modifier align = rowScopeInstance.align(Modifier.Companion, companion2.getCenterVertically());
                float f10 = IconLeftPadding;
                Modifier m495widthInVpY3zN4$default = SizeKt.m495widthInVpY3zN4$default(align, Dp.m4049constructorimpl(f10 + IconMinPaddedWidth), 0.0f, 2, null);
                float f11 = IconVerticalPadding;
                Modifier m451paddingqDBjuR0$default = PaddingKt.m451paddingqDBjuR0$default(m495widthInVpY3zN4$default, f10, f11, 0.0f, f11, 4, null);
                Alignment centerStart = companion2.getCenterStart();
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(centerStart, false, startRestartGroup, 6);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor2 = companion3.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m451paddingqDBjuR0$default);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor2);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl2 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion3.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl2, density2, companion3.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion3.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion3.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                startRestartGroup.startReplaceableGroup(722575250);
                function2.invoke(startRestartGroup, Integer.valueOf((i12 >> 3) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            Modifier.Companion companion4 = Modifier.Companion;
            Modifier m451paddingqDBjuR0$default2 = PaddingKt.m451paddingqDBjuR0$default(rowScopeInstance.align(RowScope.weight$default(rowScopeInstance, companion4, 1.0f, false, 2, null), companion2.getCenterVertically()), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
            Alignment centerStart2 = companion2.getCenterStart();
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(centerStart2, false, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor3 = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m451paddingqDBjuR0$default2);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor3);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl3 = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy2, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl3, density3, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-869001737);
            text.invoke(startRestartGroup, Integer.valueOf((i12 >> 6) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (function22 != null) {
                Modifier m451paddingqDBjuR0$default3 = PaddingKt.m451paddingqDBjuR0$default(rowScopeInstance.align(companion4, companion2.getCenterVertically()), 0.0f, 0.0f, TrailingRightPadding, 0.0f, 11, null);
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density4 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection4 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor4 = companion3.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(m451paddingqDBjuR0$default3);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor4);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl4 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl4, rememberBoxMeasurePolicy3, companion3.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl4, density4, companion3.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl4, layoutDirection4, companion3.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl4, viewConfiguration4, companion3.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf4.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                startRestartGroup.startReplaceableGroup(9272137);
                function22.invoke(startRestartGroup, Integer.valueOf((i12 >> 9) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
        }
        final Modifier modifier2 = companion;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.OneLine$ListItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer2, int i14) {
                OneLine.this.ListItem(modifier2, function2, text, function22, composer2, i10 | 1, i11);
            }
        });
    }
}
