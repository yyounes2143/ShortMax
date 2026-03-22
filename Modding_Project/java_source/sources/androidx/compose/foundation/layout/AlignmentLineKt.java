package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AlignmentLine.kt */
@Metadata
/* loaded from: classes.dex */
public final class AlignmentLineKt {
    /* renamed from: alignmentLineOffsetMeasure-tjqqzMA */
    public static final MeasureResult m369alignmentLineOffsetMeasuretjqqzMA(MeasureScope measureScope, final AlignmentLine alignmentLine, final float f10, float f11, Measurable measurable, long j10) {
        long m3996copyZbe2FdA$default;
        int width;
        int m4005getMaxWidthimpl;
        int i10;
        int i11;
        int max;
        int height;
        if (getHorizontal(alignmentLine)) {
            m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null);
        } else {
            m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 14, null);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(m3996copyZbe2FdA$default);
        int i12 = mo3335measureBRTryo0.get(alignmentLine);
        if (i12 == Integer.MIN_VALUE) {
            i12 = 0;
        }
        if (getHorizontal(alignmentLine)) {
            width = mo3335measureBRTryo0.getHeight();
        } else {
            width = mo3335measureBRTryo0.getWidth();
        }
        if (getHorizontal(alignmentLine)) {
            m4005getMaxWidthimpl = Constraints.m4004getMaxHeightimpl(j10);
        } else {
            m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        }
        Dp.Companion companion = Dp.Companion;
        if (!Dp.m4054equalsimpl0(f10, companion.m4069getUnspecifiedD9Ej5fM())) {
            i10 = measureScope.mo336roundToPx0680j_4(f10);
        } else {
            i10 = 0;
        }
        int i13 = m4005getMaxWidthimpl - width;
        final int n10 = kotlin.ranges.e.n(i10 - i12, 0, i13);
        if (!Dp.m4054equalsimpl0(f11, companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = measureScope.mo336roundToPx0680j_4(f11);
        } else {
            i11 = 0;
        }
        final int n11 = kotlin.ranges.e.n((i11 - width) + i12, 0, i13 - n10);
        if (getHorizontal(alignmentLine)) {
            max = mo3335measureBRTryo0.getWidth();
        } else {
            max = Math.max(mo3335measureBRTryo0.getWidth() + n10 + n11, Constraints.m4007getMinWidthimpl(j10));
        }
        final int i14 = max;
        if (getHorizontal(alignmentLine)) {
            height = Math.max(mo3335measureBRTryo0.getHeight() + n10 + n11, Constraints.m4006getMinHeightimpl(j10));
        } else {
            height = mo3335measureBRTryo0.getHeight();
        }
        final int i15 = height;
        return MeasureScope.layout$default(measureScope, i14, i15, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$alignmentLineOffsetMeasure$1
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
                boolean horizontal;
                int width2;
                boolean horizontal2;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                horizontal = AlignmentLineKt.getHorizontal(AlignmentLine.this);
                int i16 = 0;
                if (horizontal) {
                    width2 = 0;
                } else {
                    width2 = !Dp.m4054equalsimpl0(f10, Dp.Companion.m4069getUnspecifiedD9Ej5fM()) ? n10 : (i14 - n11) - mo3335measureBRTryo0.getWidth();
                }
                horizontal2 = AlignmentLineKt.getHorizontal(AlignmentLine.this);
                if (horizontal2) {
                    i16 = !Dp.m4054equalsimpl0(f10, Dp.Companion.m4069getUnspecifiedD9Ej5fM()) ? n10 : (i15 - n11) - mo3335measureBRTryo0.getHeight();
                }
                Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, width2, i16, 0.0f, 4, null);
            }
        }, 4, null);
    }

    public static final boolean getHorizontal(AlignmentLine alignmentLine) {
        return alignmentLine instanceof HorizontalAlignmentLine;
    }

    @Stable
    @NotNull
    /* renamed from: paddingFrom-4j6BHR0 */
    public static final Modifier m370paddingFrom4j6BHR0(@NotNull Modifier paddingFrom, @NotNull final AlignmentLine alignmentLine, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(paddingFrom, "$this$paddingFrom");
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("paddingFrom");
                    inspectorInfo.getProperties().set("alignmentLine", AlignmentLine.this);
                    inspectorInfo.getProperties().set("before", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("after", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return paddingFrom.then(new AlignmentLineOffsetDp(alignmentLine, f10, f11, noInspectorInfo, null));
    }

    /* renamed from: paddingFrom-4j6BHR0$default */
    public static /* synthetic */ Modifier m371paddingFrom4j6BHR0$default(Modifier modifier, AlignmentLine alignmentLine, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 4) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m370paddingFrom4j6BHR0(modifier, alignmentLine, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: paddingFrom-Y_r0B1c */
    public static final Modifier m372paddingFromY_r0B1c(@NotNull Modifier paddingFrom, @NotNull final AlignmentLine alignmentLine, final long j10, final long j11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(paddingFrom, "$this$paddingFrom");
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("paddingFrom");
                    inspectorInfo.getProperties().set("alignmentLine", AlignmentLine.this);
                    inspectorInfo.getProperties().set("before", TextUnit.m4220boximpl(j10));
                    inspectorInfo.getProperties().set("after", TextUnit.m4220boximpl(j11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return paddingFrom.then(new AlignmentLineOffsetTextUnit(alignmentLine, j10, j11, noInspectorInfo, null));
    }

    /* renamed from: paddingFrom-Y_r0B1c$default */
    public static /* synthetic */ Modifier m373paddingFromY_r0B1c$default(Modifier modifier, AlignmentLine alignmentLine, long j10, long j11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        long j12 = j10;
        if ((i10 & 4) != 0) {
            j11 = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        return m372paddingFromY_r0B1c(modifier, alignmentLine, j12, j11);
    }

    @Stable
    @NotNull
    /* renamed from: paddingFromBaseline-VpY3zN4 */
    public static final Modifier m374paddingFromBaselineVpY3zN4(@NotNull Modifier paddingFromBaseline, float f10, float f11) {
        Modifier modifier;
        Modifier modifier2;
        Intrinsics.checkNotNullParameter(paddingFromBaseline, "$this$paddingFromBaseline");
        Dp.Companion companion = Dp.Companion;
        if (!Dp.m4054equalsimpl0(f11, companion.m4069getUnspecifiedD9Ej5fM())) {
            modifier = m371paddingFrom4j6BHR0$default(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0.0f, f11, 2, null);
        } else {
            modifier = Modifier.Companion;
        }
        Modifier then = paddingFromBaseline.then(modifier);
        if (!Dp.m4054equalsimpl0(f10, companion.m4069getUnspecifiedD9Ej5fM())) {
            modifier2 = m371paddingFrom4j6BHR0$default(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), f10, 0.0f, 4, null);
        } else {
            modifier2 = Modifier.Companion;
        }
        return then.then(modifier2);
    }

    /* renamed from: paddingFromBaseline-VpY3zN4$default */
    public static /* synthetic */ Modifier m375paddingFromBaselineVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m374paddingFromBaselineVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: paddingFromBaseline-wCyjxdI */
    public static final Modifier m376paddingFromBaselinewCyjxdI(@NotNull Modifier paddingFromBaseline, long j10, long j11) {
        Modifier modifier;
        Modifier modifier2;
        Intrinsics.checkNotNullParameter(paddingFromBaseline, "$this$paddingFromBaseline");
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(j11)) {
            modifier = m373paddingFromY_r0B1c$default(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0L, j11, 2, null);
        } else {
            modifier = Modifier.Companion;
        }
        Modifier then = paddingFromBaseline.then(modifier);
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(j10)) {
            modifier2 = m373paddingFromY_r0B1c$default(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), j10, 0L, 4, null);
        } else {
            modifier2 = Modifier.Companion;
        }
        return then.then(modifier2);
    }

    /* renamed from: paddingFromBaseline-wCyjxdI$default */
    public static /* synthetic */ Modifier m377paddingFromBaselinewCyjxdI$default(Modifier modifier, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        if ((i10 & 2) != 0) {
            j11 = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        return m376paddingFromBaselinewCyjxdI(modifier, j10, j11);
    }
}
