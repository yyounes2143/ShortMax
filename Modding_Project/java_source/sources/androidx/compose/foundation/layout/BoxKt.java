package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
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
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Box.kt */
@Metadata
/* loaded from: classes.dex */
public final class BoxKt {
    @NotNull
    private static final MeasurePolicy DefaultBoxMeasurePolicy = boxMeasurePolicy(Alignment.Companion.getTopStart(), false);
    @NotNull
    private static final MeasurePolicy EmptyBoxMeasurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.layout.BoxKt$EmptyBoxMeasurePolicy$1
        @Override // androidx.compose.ui.layout.MeasurePolicy
        @NotNull
        /* renamed from: measure-3p2s80s */
        public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope MeasurePolicy, @NotNull List<? extends Measurable> list, long j10) {
            Intrinsics.checkNotNullParameter(MeasurePolicy, "$this$MeasurePolicy");
            Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
            return MeasureScope.layout$default(MeasurePolicy, Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$EmptyBoxMeasurePolicy$1$measure$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.f60915a;
                }
            }, 4, null);
        }
    };

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void Box(@Nullable Modifier modifier, @Nullable Alignment alignment, boolean z10, @NotNull n<? super BoxScope, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(733328855);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i11 & 2) != 0) {
            alignment = Alignment.Companion.getTopStart();
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        MeasurePolicy rememberBoxMeasurePolicy = rememberBoxMeasurePolicy(alignment, z10, composer, (i10 >> 3) & 126);
        composer.startReplaceableGroup(-1323940314);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
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
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        composer.startReplaceableGroup(-2137368960);
        content.invoke(BoxScopeInstance.INSTANCE, composer, Integer.valueOf(((i10 >> 6) & 112) | 6));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    @NotNull
    public static final MeasurePolicy boxMeasurePolicy(@NotNull final Alignment alignment, final boolean z10) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return new MeasurePolicy() { // from class: androidx.compose.foundation.layout.BoxKt$boxMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo42measure3p2s80s(@NotNull final MeasureScope MeasurePolicy, @NotNull final List<? extends Measurable> measurables, long j10) {
                long m3996copyZbe2FdA$default;
                int i10;
                int i11;
                boolean matchesParentSize;
                boolean matchesParentSize2;
                boolean matchesParentSize3;
                int m4007getMinWidthimpl;
                final Placeable mo3335measureBRTryo0;
                int i12;
                Intrinsics.checkNotNullParameter(MeasurePolicy, "$this$MeasurePolicy");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (measurables.isEmpty()) {
                    return MeasureScope.layout$default(MeasurePolicy, Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$boxMeasurePolicy$1$measure$1
                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }
                    }, 4, null);
                }
                if (z10) {
                    m3996copyZbe2FdA$default = j10;
                } else {
                    m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 10, null);
                }
                if (measurables.size() == 1) {
                    final Measurable measurable = measurables.get(0);
                    matchesParentSize3 = BoxKt.getMatchesParentSize(measurable);
                    if (!matchesParentSize3) {
                        Placeable mo3335measureBRTryo02 = measurable.mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        int max = Math.max(Constraints.m4007getMinWidthimpl(j10), mo3335measureBRTryo02.getWidth());
                        i12 = Math.max(Constraints.m4006getMinHeightimpl(j10), mo3335measureBRTryo02.getHeight());
                        mo3335measureBRTryo0 = mo3335measureBRTryo02;
                        m4007getMinWidthimpl = max;
                    } else {
                        m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
                        int m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
                        mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(Constraints.Companion.m4013fixedJhjzzOo(Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10)));
                        i12 = m4006getMinHeightimpl;
                    }
                    final Alignment alignment2 = alignment;
                    final int i13 = m4007getMinWidthimpl;
                    final int i14 = i12;
                    return MeasureScope.layout$default(MeasurePolicy, m4007getMinWidthimpl, i12, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$boxMeasurePolicy$1$measure$2
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
                            BoxKt.placeInBox(layout, Placeable.this, measurable, MeasurePolicy.getLayoutDirection(), i13, i14, alignment2);
                        }
                    }, 4, null);
                }
                final Placeable[] placeableArr = new Placeable[measurables.size()];
                final Ref.IntRef intRef = new Ref.IntRef();
                intRef.element = Constraints.m4007getMinWidthimpl(j10);
                final Ref.IntRef intRef2 = new Ref.IntRef();
                intRef2.element = Constraints.m4006getMinHeightimpl(j10);
                int size = measurables.size();
                boolean z11 = false;
                for (int i15 = 0; i15 < size; i15++) {
                    Measurable measurable2 = measurables.get(i15);
                    matchesParentSize2 = BoxKt.getMatchesParentSize(measurable2);
                    if (!matchesParentSize2) {
                        Placeable mo3335measureBRTryo03 = measurable2.mo3335measureBRTryo0(m3996copyZbe2FdA$default);
                        placeableArr[i15] = mo3335measureBRTryo03;
                        intRef.element = Math.max(intRef.element, mo3335measureBRTryo03.getWidth());
                        intRef2.element = Math.max(intRef2.element, mo3335measureBRTryo03.getHeight());
                    } else {
                        z11 = true;
                    }
                }
                if (z11) {
                    int i16 = intRef.element;
                    if (i16 != Integer.MAX_VALUE) {
                        i10 = i16;
                    } else {
                        i10 = 0;
                    }
                    int i17 = intRef2.element;
                    if (i17 != Integer.MAX_VALUE) {
                        i11 = i17;
                    } else {
                        i11 = 0;
                    }
                    long Constraints = ConstraintsKt.Constraints(i10, i16, i11, i17);
                    int size2 = measurables.size();
                    for (int i18 = 0; i18 < size2; i18++) {
                        Measurable measurable3 = measurables.get(i18);
                        matchesParentSize = BoxKt.getMatchesParentSize(measurable3);
                        if (matchesParentSize) {
                            placeableArr[i18] = measurable3.mo3335measureBRTryo0(Constraints);
                        }
                    }
                }
                int i19 = intRef.element;
                int i20 = intRef2.element;
                final Alignment alignment3 = alignment;
                return MeasureScope.layout$default(MeasurePolicy, i19, i20, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$boxMeasurePolicy$1$measure$5
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
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
                        Placeable[] placeableArr2 = placeableArr;
                        List<Measurable> list = measurables;
                        MeasureScope measureScope = MeasurePolicy;
                        Ref.IntRef intRef3 = intRef;
                        Ref.IntRef intRef4 = intRef2;
                        Alignment alignment4 = alignment3;
                        int length = placeableArr2.length;
                        int i21 = 0;
                        int i22 = 0;
                        while (i22 < length) {
                            Placeable placeable = placeableArr2[i22];
                            int i23 = i21 + 1;
                            if (placeable != null) {
                                BoxKt.placeInBox(layout, placeable, list.get(i21), measureScope.getLayoutDirection(), intRef3.element, intRef4.element, alignment4);
                                i22++;
                                i21 = i23;
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.layout.Placeable");
                            }
                        }
                    }
                }, 4, null);
            }
        };
    }

    private static final BoxChildData getBoxChildData(Measurable measurable) {
        Object parentData = measurable.getParentData();
        if (parentData instanceof BoxChildData) {
            return (BoxChildData) parentData;
        }
        return null;
    }

    @NotNull
    public static final MeasurePolicy getDefaultBoxMeasurePolicy() {
        return DefaultBoxMeasurePolicy;
    }

    @NotNull
    public static final MeasurePolicy getEmptyBoxMeasurePolicy() {
        return EmptyBoxMeasurePolicy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getMatchesParentSize(Measurable measurable) {
        BoxChildData boxChildData = getBoxChildData(measurable);
        if (boxChildData != null) {
            return boxChildData.getMatchParentSize();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeInBox(Placeable.PlacementScope placementScope, Placeable placeable, Measurable measurable, LayoutDirection layoutDirection, int i10, int i11, Alignment alignment) {
        Alignment alignment2;
        Alignment alignment3;
        BoxChildData boxChildData = getBoxChildData(measurable);
        if (boxChildData != null && (alignment3 = boxChildData.getAlignment()) != null) {
            alignment2 = alignment3;
        } else {
            alignment2 = alignment;
        }
        Placeable.PlacementScope.m3377place70tqf50$default(placementScope, placeable, alignment2.mo1514alignKFBX0sM(IntSizeKt.IntSize(placeable.getWidth(), placeable.getHeight()), IntSizeKt.IntSize(i10, i11), layoutDirection), 0.0f, 2, null);
    }

    @Composable
    @NotNull
    public static final MeasurePolicy rememberBoxMeasurePolicy(@NotNull Alignment alignment, boolean z10, @Nullable Composer composer, int i10) {
        MeasurePolicy measurePolicy;
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        composer.startReplaceableGroup(56522820);
        if (Intrinsics.areEqual(alignment, Alignment.Companion.getTopStart()) && !z10) {
            measurePolicy = DefaultBoxMeasurePolicy;
        } else {
            Boolean valueOf = Boolean.valueOf(z10);
            composer.startReplaceableGroup(511388516);
            boolean changed = composer.changed(valueOf) | composer.changed(alignment);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = boxMeasurePolicy(alignment, z10);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            measurePolicy = (MeasurePolicy) rememberedValue;
        }
        composer.endReplaceableGroup();
        return measurePolicy;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void Box(@NotNull final Modifier modifier, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Composer startRestartGroup = composer.startRestartGroup(-211209833);
        if ((i10 & 14) == 0) {
            i11 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            MeasurePolicy measurePolicy = EmptyBoxMeasurePolicy;
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
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
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(1021196736);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.layout.BoxKt$Box$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer2, int i12) {
                BoxKt.Box(Modifier.this, composer2, i10 | 1);
            }
        });
    }
}
