package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.MeasureBlocks;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Layout.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutKt {
    @Composable
    @UiComposable
    public static final void Layout(@NotNull Function2<? super Composer, ? super Integer, Unit> content, @Nullable Modifier modifier, @NotNull MeasurePolicy measurePolicy, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        composer.startReplaceableGroup(-1323940314);
        if ((i11 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = materializerOf(modifier);
        int i12 = ((i10 << 9) & 7168) | 6;
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        content.invoke(composer, Integer.valueOf((i12 >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
    }

    @c
    @NotNull
    public static final MeasureBlocks MeasuringIntrinsicsMeasureBlocks(@NotNull final n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> measureBlock) {
        Intrinsics.checkNotNullParameter(measureBlock, "measureBlock");
        return new MeasureBlocks() { // from class: androidx.compose.ui.layout.LayoutKt$MeasuringIntrinsicsMeasureBlocks$1
            @Override // androidx.compose.ui.node.MeasureBlocks
            public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                int MeasuringMaxIntrinsicHeight;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MeasuringMaxIntrinsicHeight = LayoutKt.MeasuringMaxIntrinsicHeight(intrinsicMeasureScope, measureBlock, measurables, i10, intrinsicMeasureScope.getLayoutDirection());
                return MeasuringMaxIntrinsicHeight;
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                int MeasuringMaxIntrinsicWidth;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MeasuringMaxIntrinsicWidth = LayoutKt.MeasuringMaxIntrinsicWidth(intrinsicMeasureScope, measureBlock, measurables, i10, intrinsicMeasureScope.getLayoutDirection());
                return MeasuringMaxIntrinsicWidth;
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            @NotNull
            /* renamed from: measure-3p2s80s  reason: not valid java name */
            public MeasureResult mo3342measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> measurables, long j10) {
                Intrinsics.checkNotNullParameter(measureScope, "measureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return measureBlock.invoke(measureScope, measurables, Constraints.m3993boximpl(j10));
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                int MeasuringMinIntrinsicHeight;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MeasuringMinIntrinsicHeight = LayoutKt.MeasuringMinIntrinsicHeight(intrinsicMeasureScope, measureBlock, measurables, i10, intrinsicMeasureScope.getLayoutDirection());
                return MeasuringMinIntrinsicHeight;
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                int MeasuringMinIntrinsicWidth;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MeasuringMinIntrinsicWidth = LayoutKt.MeasuringMinIntrinsicWidth(intrinsicMeasureScope, measureBlock, measurables, i10, intrinsicMeasureScope.getLayoutDirection());
                return MeasuringMinIntrinsicWidth;
            }

            @NotNull
            public String toString() {
                return JvmActuals_jvmKt.simpleIdentityToString(this, "MeasuringIntrinsicsMeasureBlocks") + "{ measureBlock=" + JvmActuals_jvmKt.simpleIdentityToString(measureBlock, null) + " }";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int MeasuringMaxIntrinsicHeight(Density density, n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> nVar, List<? extends IntrinsicMeasurable> list, int i10, LayoutDirection layoutDirection) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(list.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height));
        }
        return nVar.invoke(new IntrinsicsMeasureScope(density, layoutDirection), arrayList, Constraints.m3993boximpl(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null))).getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int MeasuringMaxIntrinsicWidth(Density density, n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> nVar, List<? extends IntrinsicMeasurable> list, int i10, LayoutDirection layoutDirection) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(list.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width));
        }
        return nVar.invoke(new IntrinsicsMeasureScope(density, layoutDirection), arrayList, Constraints.m3993boximpl(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null))).getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int MeasuringMinIntrinsicHeight(Density density, n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> nVar, List<? extends IntrinsicMeasurable> list, int i10, LayoutDirection layoutDirection) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(list.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height));
        }
        return nVar.invoke(new IntrinsicsMeasureScope(density, layoutDirection), arrayList, Constraints.m3993boximpl(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null))).getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int MeasuringMinIntrinsicWidth(Density density, n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> nVar, List<? extends IntrinsicMeasurable> list, int i10, LayoutDirection layoutDirection) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(list.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width));
        }
        return nVar.invoke(new IntrinsicsMeasureScope(density, layoutDirection), arrayList, Constraints.m3993boximpl(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null))).getWidth();
    }

    @c
    @Composable
    @UiComposable
    public static final void MultiMeasureLayout(@Nullable Modifier modifier, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @NotNull final MeasurePolicy measurePolicy, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(1949933075);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
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
        } else if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(content)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(measurePolicy)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i12 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i16 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier materialize = ComposedModifierKt.materialize(startRestartGroup, modifier);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<LayoutNode> constructor$ui_release = LayoutNode.Companion.getConstructor$ui_release();
            int i17 = ((i12 << 3) & 896) | 6;
            startRestartGroup.startReplaceableGroup(-692256719);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor$ui_release);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Updater.m1383setimpl(m1376constructorimpl, materialize, companion.getSetModifier());
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            Updater.m1380initimpl(m1376constructorimpl, new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.layout.LayoutKt$MultiMeasureLayout$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                    invoke2(layoutNode);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull LayoutNode init) {
                    Intrinsics.checkNotNullParameter(init, "$this$init");
                    init.setCanMultiMeasure$ui_release(true);
                }
            });
            startRestartGroup.enableReusing();
            content.invoke(startRestartGroup, Integer.valueOf((i17 >> 6) & 14));
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutKt$MultiMeasureLayout$2
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

                public final void invoke(@Nullable Composer composer2, int i18) {
                    LayoutKt.MultiMeasureLayout(Modifier.this, content, measurePolicy, composer2, i10 | 1, i11);
                }
            });
        }
    }

    @NotNull
    public static final n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf(@NotNull final Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        return ComposableLambdaKt.composableLambdaInstance(-1586257396, true, new n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutKt$materializerOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(SkippableUpdater<ComposeUiNode> skippableUpdater, Composer composer, Integer num) {
                m3343invokeDeg8D_g(skippableUpdater.m1356unboximpl(), composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            /* renamed from: invoke-Deg8D_g  reason: not valid java name */
            public final void m3343invokeDeg8D_g(@NotNull Composer composer, @Nullable Composer composer2, int i10) {
                Intrinsics.checkNotNullParameter(composer, "$this$null");
                Modifier materialize = ComposedModifierKt.materialize(composer2, Modifier.this);
                composer.startReplaceableGroup(509942095);
                Updater.m1383setimpl(Updater.m1376constructorimpl(composer), materialize, ComposeUiNode.Companion.getSetModifier());
                composer.endReplaceableGroup();
            }
        });
    }

    @c
    @NotNull
    public static final MeasureBlocks measureBlocksOf(@NotNull final n<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> minIntrinsicWidthMeasureBlock, @NotNull final n<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> minIntrinsicHeightMeasureBlock, @NotNull final n<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> maxIntrinsicWidthMeasureBlock, @NotNull final n<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> maxIntrinsicHeightMeasureBlock, @NotNull final n<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> measureBlock) {
        Intrinsics.checkNotNullParameter(minIntrinsicWidthMeasureBlock, "minIntrinsicWidthMeasureBlock");
        Intrinsics.checkNotNullParameter(minIntrinsicHeightMeasureBlock, "minIntrinsicHeightMeasureBlock");
        Intrinsics.checkNotNullParameter(maxIntrinsicWidthMeasureBlock, "maxIntrinsicWidthMeasureBlock");
        Intrinsics.checkNotNullParameter(maxIntrinsicHeightMeasureBlock, "maxIntrinsicHeightMeasureBlock");
        Intrinsics.checkNotNullParameter(measureBlock, "measureBlock");
        return new MeasureBlocks() { // from class: androidx.compose.ui.layout.LayoutKt$measureBlocksOf$1
            @Override // androidx.compose.ui.node.MeasureBlocks
            public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i10)).intValue();
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i10)).intValue();
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            @NotNull
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo3342measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> measurables, long j10) {
                Intrinsics.checkNotNullParameter(measureScope, "measureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return measureBlock.invoke(measureScope, measurables, Constraints.m3993boximpl(j10));
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i10)).intValue();
            }

            @Override // androidx.compose.ui.node.MeasureBlocks
            public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "intrinsicMeasureScope");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i10)).intValue();
            }
        };
    }

    @Composable
    @UiComposable
    public static final void Layout(@Nullable Modifier modifier, @NotNull MeasurePolicy measurePolicy, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        composer.startReplaceableGroup(544976794);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        Modifier materialize = ComposedModifierKt.materialize(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        final Function0<ComposeUiNode> constructor = companion.getConstructor();
        composer.startReplaceableGroup(1405779621);
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(new Function0<ComposeUiNode>() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$$inlined$ReusableComposeNode$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final ComposeUiNode invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        Updater.m1383setimpl(m1376constructorimpl, materialize, companion.getSetModifier());
        composer.enableReusing();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    @ms.c
    @androidx.compose.runtime.Composable
    @androidx.compose.ui.UiComposable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Layout(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r17, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.ui.layout.IntrinsicMeasureScope, ? super java.util.List<? extends androidx.compose.ui.layout.IntrinsicMeasurable>, ? super java.lang.Integer, java.lang.Integer> r18, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.ui.layout.IntrinsicMeasureScope, ? super java.util.List<? extends androidx.compose.ui.layout.IntrinsicMeasurable>, ? super java.lang.Integer, java.lang.Integer> r19, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.ui.layout.IntrinsicMeasureScope, ? super java.util.List<? extends androidx.compose.ui.layout.IntrinsicMeasurable>, ? super java.lang.Integer, java.lang.Integer> r20, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.ui.layout.IntrinsicMeasureScope, ? super java.util.List<? extends androidx.compose.ui.layout.IntrinsicMeasurable>, ? super java.lang.Integer, java.lang.Integer> r21, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r22, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.ui.layout.MeasureScope, ? super java.util.List<? extends androidx.compose.ui.layout.Measurable>, ? super androidx.compose.ui.unit.Constraints, ? extends androidx.compose.ui.layout.MeasureResult> r23, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r24, final int r25, final int r26) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.layout.LayoutKt.Layout(kotlin.jvm.functions.Function2, at.n, at.n, at.n, at.n, androidx.compose.ui.Modifier, at.n, androidx.compose.runtime.Composer, int, int):void");
    }
}
