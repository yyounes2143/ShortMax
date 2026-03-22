package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Padding.kt */
@Metadata
/* loaded from: classes.dex */
public final class PaddingKt {
    @Stable
    @NotNull
    /* renamed from: PaddingValues-0680j_4  reason: not valid java name */
    public static final PaddingValues m440PaddingValues0680j_4(float f10) {
        return new PaddingValuesImpl(f10, f10, f10, f10, null);
    }

    @Stable
    @NotNull
    /* renamed from: PaddingValues-YgX7TsA  reason: not valid java name */
    public static final PaddingValues m441PaddingValuesYgX7TsA(float f10, float f11) {
        return new PaddingValuesImpl(f10, f11, f10, f11, null);
    }

    /* renamed from: PaddingValues-YgX7TsA$default  reason: not valid java name */
    public static /* synthetic */ PaddingValues m442PaddingValuesYgX7TsA$default(float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        return m441PaddingValuesYgX7TsA(f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: PaddingValues-a9UjIt4  reason: not valid java name */
    public static final PaddingValues m443PaddingValuesa9UjIt4(float f10, float f11, float f12, float f13) {
        return new PaddingValuesImpl(f10, f11, f12, f13, null);
    }

    /* renamed from: PaddingValues-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ PaddingValues m444PaddingValuesa9UjIt4$default(float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 4) != 0) {
            f12 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 8) != 0) {
            f13 = Dp.m4049constructorimpl(0);
        }
        return m443PaddingValuesa9UjIt4(f10, f11, f12, f13);
    }

    @Stable
    @NotNull
    /* renamed from: absolutePadding-qDBjuR0  reason: not valid java name */
    public static final Modifier m445absolutePaddingqDBjuR0(@NotNull Modifier absolutePadding, final float f10, final float f11, final float f12, final float f13) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(absolutePadding, "$this$absolutePadding");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("absolutePadding");
                    inspectorInfo.getProperties().set(TtmlNode.LEFT, Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("top", Dp.m4047boximpl(f11));
                    inspectorInfo.getProperties().set(TtmlNode.RIGHT, Dp.m4047boximpl(f12));
                    inspectorInfo.getProperties().set("bottom", Dp.m4047boximpl(f13));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return absolutePadding.then(new PaddingModifier(f10, f11, f12, f13, false, noInspectorInfo, null));
    }

    /* renamed from: absolutePadding-qDBjuR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m446absolutePaddingqDBjuR0$default(Modifier modifier, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 4) != 0) {
            f12 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 8) != 0) {
            f13 = Dp.m4049constructorimpl(0);
        }
        return m445absolutePaddingqDBjuR0(modifier, f10, f11, f12, f13);
    }

    @Stable
    public static final float calculateEndPadding(@NotNull PaddingValues paddingValues, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(paddingValues, "<this>");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (layoutDirection == LayoutDirection.Ltr) {
            return paddingValues.mo429calculateRightPaddingu2uoSUM(layoutDirection);
        }
        return paddingValues.mo428calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    @Stable
    public static final float calculateStartPadding(@NotNull PaddingValues paddingValues, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(paddingValues, "<this>");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (layoutDirection == LayoutDirection.Ltr) {
            return paddingValues.mo428calculateLeftPaddingu2uoSUM(layoutDirection);
        }
        return paddingValues.mo429calculateRightPaddingu2uoSUM(layoutDirection);
    }

    @Stable
    @NotNull
    public static final Modifier padding(@NotNull Modifier modifier, @NotNull final PaddingValues paddingValues) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("padding");
                    inspectorInfo.getProperties().set("paddingValues", PaddingValues.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new PaddingValuesModifier(paddingValues, noInspectorInfo));
    }

    @Stable
    @NotNull
    /* renamed from: padding-3ABfNKs  reason: not valid java name */
    public static final Modifier m447padding3ABfNKs(@NotNull Modifier padding, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(padding, "$this$padding");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("padding");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return padding.then(new PaddingModifier(f10, f10, f10, f10, true, noInspectorInfo, null));
    }

    @Stable
    @NotNull
    /* renamed from: padding-VpY3zN4  reason: not valid java name */
    public static final Modifier m448paddingVpY3zN4(@NotNull Modifier padding, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(padding, "$this$padding");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("padding");
                    inspectorInfo.getProperties().set("horizontal", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("vertical", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return padding.then(new PaddingModifier(f10, f11, f10, f11, true, noInspectorInfo, null));
    }

    /* renamed from: padding-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m449paddingVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        return m448paddingVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: padding-qDBjuR0  reason: not valid java name */
    public static final Modifier m450paddingqDBjuR0(@NotNull Modifier padding, final float f10, final float f11, final float f12, final float f13) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(padding, "$this$padding");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding-qDBjuR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("padding");
                    inspectorInfo.getProperties().set("start", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("top", Dp.m4047boximpl(f11));
                    inspectorInfo.getProperties().set("end", Dp.m4047boximpl(f12));
                    inspectorInfo.getProperties().set("bottom", Dp.m4047boximpl(f13));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return padding.then(new PaddingModifier(f10, f11, f12, f13, true, noInspectorInfo, null));
    }

    /* renamed from: padding-qDBjuR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m451paddingqDBjuR0$default(Modifier modifier, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 4) != 0) {
            f12 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 8) != 0) {
            f13 = Dp.m4049constructorimpl(0);
        }
        return m450paddingqDBjuR0(modifier, f10, f11, f12, f13);
    }
}
