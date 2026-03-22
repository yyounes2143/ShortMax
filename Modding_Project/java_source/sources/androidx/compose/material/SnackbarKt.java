package androidx.compose.material;

import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snackbar.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnackbarKt {
    private static final float HorizontalSpacingButtonSide;
    private static final float TextEndExtraSpacing;
    private static final float HeightToFirstLine = Dp.m4049constructorimpl(30);
    private static final float HorizontalSpacing = Dp.m4049constructorimpl(16);
    private static final float SeparateButtonExtraY = Dp.m4049constructorimpl(2);
    private static final float SnackbarVerticalPadding = Dp.m4049constructorimpl(6);
    private static final float LongButtonVerticalOffset = Dp.m4049constructorimpl(12);
    private static final float SnackbarMinHeightOneLine = Dp.m4049constructorimpl(48);
    private static final float SnackbarMinHeightTwoLines = Dp.m4049constructorimpl(68);

    static {
        float f10 = 8;
        HorizontalSpacingButtonSide = Dp.m4049constructorimpl(f10);
        TextEndExtraSpacing = Dp.m4049constructorimpl(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void NewLineButtonSnackbar(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(-1229075900);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function22)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Modifier.Companion companion = Modifier.Companion;
            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
            float f10 = HorizontalSpacing;
            float f11 = HorizontalSpacingButtonSide;
            Modifier m451paddingqDBjuR0$default = PaddingKt.m451paddingqDBjuR0$default(fillMaxWidth$default, f10, 0.0f, f11, SeparateButtonExtraY, 2, null);
            startRestartGroup.startReplaceableGroup(-483455358);
            Arrangement.Vertical top = Arrangement.INSTANCE.getTop();
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(top, companion2.getStart(), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m451paddingqDBjuR0$default);
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
            Updater.m1383setimpl(m1376constructorimpl, columnMeasurePolicy, companion3.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion3.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion3.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion3.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-1163856341);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-1214415430);
            Modifier m451paddingqDBjuR0$default2 = PaddingKt.m451paddingqDBjuR0$default(AlignmentLineKt.m374paddingFromBaselineVpY3zN4(companion, HeightToFirstLine, LongButtonVerticalOffset), 0.0f, 0.0f, f11, 0.0f, 11, null);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m451paddingqDBjuR0$default2);
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
            startRestartGroup.startReplaceableGroup(1193033152);
            function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier align = columnScopeInstance.align(companion, companion2.getEnd());
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion2.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor3 = companion3.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(align);
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
            startRestartGroup.startReplaceableGroup(-2100387721);
            function22.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SnackbarKt$NewLineButtonSnackbar$2
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
                    SnackbarKt.NewLineButtonSnackbar(function2, function22, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void OneRowSnackbar(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(-534813202);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function22)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Modifier.Companion companion = Modifier.Companion;
            Modifier m451paddingqDBjuR0$default = PaddingKt.m451paddingqDBjuR0$default(companion, HorizontalSpacing, 0.0f, HorizontalSpacingButtonSide, 0.0f, 10, null);
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.SnackbarKt$OneRowSnackbar$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    float f10;
                    boolean z10;
                    float f11;
                    float f12;
                    int i14;
                    final int i15;
                    final int height;
                    float f13;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    String str = r1;
                    for (Measurable measurable : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), str)) {
                            final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
                            int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10) - mo3335measureBRTryo0.getWidth();
                            f10 = SnackbarKt.TextEndExtraSpacing;
                            int e10 = e.e(m4005getMaxWidthimpl - Layout.mo336roundToPx0680j_4(f10), Constraints.m4007getMinWidthimpl(j10));
                            String str2 = r2;
                            for (Measurable measurable2 : list) {
                                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), str2)) {
                                    final Placeable mo3335measureBRTryo02 = measurable2.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, e10, 0, 0, 9, null));
                                    int i16 = mo3335measureBRTryo02.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
                                    if (i16 != Integer.MIN_VALUE) {
                                        int i17 = mo3335measureBRTryo02.get(androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline());
                                        if (i17 != Integer.MIN_VALUE) {
                                            int i18 = 0;
                                            if (i16 == i17) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            final int m4005getMaxWidthimpl2 = Constraints.m4005getMaxWidthimpl(j10) - mo3335measureBRTryo0.getWidth();
                                            if (z10) {
                                                f13 = SnackbarKt.SnackbarMinHeightOneLine;
                                                i14 = Math.max(Layout.mo336roundToPx0680j_4(f13), mo3335measureBRTryo0.getHeight());
                                                int height2 = (i14 - mo3335measureBRTryo02.getHeight()) / 2;
                                                int i19 = mo3335measureBRTryo0.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
                                                if (i19 != Integer.MIN_VALUE) {
                                                    i18 = (i16 + height2) - i19;
                                                }
                                                height = i18;
                                                i15 = height2;
                                            } else {
                                                f11 = SnackbarKt.HeightToFirstLine;
                                                int mo336roundToPx0680j_4 = Layout.mo336roundToPx0680j_4(f11) - i16;
                                                f12 = SnackbarKt.SnackbarMinHeightTwoLines;
                                                int max = Math.max(Layout.mo336roundToPx0680j_4(f12), mo3335measureBRTryo02.getHeight() + mo336roundToPx0680j_4);
                                                i14 = max;
                                                i15 = mo336roundToPx0680j_4;
                                                height = (max - mo3335measureBRTryo0.getHeight()) / 2;
                                            }
                                            return MeasureScope.layout$default(Layout, Constraints.m4005getMaxWidthimpl(j10), i14, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.SnackbarKt$OneRowSnackbar$2$measure$4
                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                                    invoke2(placementScope);
                                                    return Unit.f60915a;
                                                }

                                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                                public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                                                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                                    Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, i15, 0.0f, 4, null);
                                                    Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, m4005getMaxWidthimpl2, height, 0.0f, 4, null);
                                                }
                                            }, 4, null);
                                        }
                                        throw new IllegalArgumentException("No baselines for text");
                                    }
                                    throw new IllegalArgumentException("No baselines for text");
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m451paddingqDBjuR0$default);
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
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-643033641);
            Modifier m449paddingVpY3zN4$default = PaddingKt.m449paddingVpY3zN4$default(LayoutIdKt.layoutId(companion, MimeTypes.BASE_TYPE_TEXT), 0.0f, SnackbarVerticalPadding, 1, null);
            startRestartGroup.startReplaceableGroup(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m449paddingVpY3zN4$default);
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
            Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl2, density2, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(1616738193);
            function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier layoutId = LayoutIdKt.layoutId(companion, TextureRenderKeys.KEY_IS_ACTION);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor3 = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(layoutId);
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
            Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy2, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl3, density3, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            startRestartGroup.startReplaceableGroup(-1690150342);
            function22.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SnackbarKt$OneRowSnackbar$3
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
                    SnackbarKt.OneRowSnackbar(function2, function22, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0122  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: Snackbar-7zSek6w  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1181Snackbar7zSek6w(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r29, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r32, long r33, long r35, float r37, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r38, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r39, final int r40, final int r41) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SnackbarKt.m1181Snackbar7zSek6w(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.graphics.Shape, long, long, float, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0122  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: Snackbar-sPrSdHI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1182SnackbarsPrSdHI(@org.jetbrains.annotations.NotNull final androidx.compose.material.SnackbarData r29, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r32, long r33, long r35, long r37, float r39, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SnackbarKt.m1182SnackbarsPrSdHI(androidx.compose.material.SnackbarData, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void TextOnlySnackbar(final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i10) {
        int i11;
        int i12;
        Composer startRestartGroup = composer.startRestartGroup(917397959);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            SnackbarKt$TextOnlySnackbar$2 snackbarKt$TextOnlySnackbar$2 = new MeasurePolicy() { // from class: androidx.compose.material.SnackbarKt$TextOnlySnackbar$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    if (measurables.size() == 1) {
                        final Placeable mo3335measureBRTryo0 = ((Measurable) CollectionsKt.r0(measurables)).mo3335measureBRTryo0(j10);
                        int i13 = mo3335measureBRTryo0.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
                        int i14 = mo3335measureBRTryo0.get(androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline());
                        if (i13 != Integer.MIN_VALUE) {
                            if (i14 != Integer.MIN_VALUE) {
                                final int max = Math.max(Layout.mo336roundToPx0680j_4(i13 == i14 ? SnackbarKt.SnackbarMinHeightOneLine : SnackbarKt.SnackbarMinHeightTwoLines), mo3335measureBRTryo0.getHeight());
                                return MeasureScope.layout$default(Layout, Constraints.m4005getMaxWidthimpl(j10), max, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.SnackbarKt$TextOnlySnackbar$2$measure$4
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                        invoke2(placementScope);
                                        return Unit.f60915a;
                                    }

                                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                    public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                        Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, 0, (max - mo3335measureBRTryo0.getHeight()) / 2, 0.0f, 4, null);
                                    }
                                }, 4, null);
                            }
                            throw new IllegalArgumentException("No baselines for text");
                        }
                        throw new IllegalArgumentException("No baselines for text");
                    }
                    throw new IllegalArgumentException("text for Snackbar expected to have exactly only one child");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
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
            Updater.m1383setimpl(m1376constructorimpl, snackbarKt$TextOnlySnackbar$2, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-266728784);
            Modifier m448paddingVpY3zN4 = PaddingKt.m448paddingVpY3zN4(companion, HorizontalSpacing, SnackbarVerticalPadding);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m448paddingVpY3zN4);
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
            Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl2, density2, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(1392363114);
            function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SnackbarKt$TextOnlySnackbar$3
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

                public final void invoke(@Nullable Composer composer2, int i13) {
                    SnackbarKt.TextOnlySnackbar(function2, composer2, i10 | 1);
                }
            });
        }
    }
}
