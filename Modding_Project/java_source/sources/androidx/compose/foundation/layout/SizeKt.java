package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.applovin.sdk.AppLovinMediationProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes.dex */
public final class SizeKt {
    @NotNull
    private static final WrapContentModifier WrapContentHeightCenter;
    @NotNull
    private static final WrapContentModifier WrapContentHeightTop;
    @NotNull
    private static final WrapContentModifier WrapContentSizeCenter;
    @NotNull
    private static final WrapContentModifier WrapContentSizeTopStart;
    @NotNull
    private static final WrapContentModifier WrapContentWidthCenter;
    @NotNull
    private static final WrapContentModifier WrapContentWidthStart;
    @NotNull
    private static final FillModifier FillWholeMaxWidth = createFillWidthModifier(1.0f);
    @NotNull
    private static final FillModifier FillWholeMaxHeight = createFillHeightModifier(1.0f);
    @NotNull
    private static final FillModifier FillWholeMaxSize = createFillSizeModifier(1.0f);

    static {
        Alignment.Companion companion = Alignment.Companion;
        WrapContentWidthCenter = createWrapContentWidthModifier(companion.getCenterHorizontally(), false);
        WrapContentWidthStart = createWrapContentWidthModifier(companion.getStart(), false);
        WrapContentHeightCenter = createWrapContentHeightModifier(companion.getCenterVertically(), false);
        WrapContentHeightTop = createWrapContentHeightModifier(companion.getTop(), false);
        WrapContentSizeCenter = createWrapContentSizeModifier(companion.getCenter(), false);
        WrapContentSizeTopStart = createWrapContentSizeModifier(companion.getTopStart(), false);
    }

    private static final FillModifier createFillHeightModifier(final float f10) {
        return new FillModifier(Direction.Vertical, f10, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createFillHeightModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("fillMaxHeight");
                $receiver.getProperties().set("fraction", Float.valueOf(f10));
            }
        });
    }

    private static final FillModifier createFillSizeModifier(final float f10) {
        return new FillModifier(Direction.Both, f10, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createFillSizeModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("fillMaxSize");
                $receiver.getProperties().set("fraction", Float.valueOf(f10));
            }
        });
    }

    private static final FillModifier createFillWidthModifier(final float f10) {
        return new FillModifier(Direction.Horizontal, f10, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createFillWidthModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("fillMaxWidth");
                $receiver.getProperties().set("fraction", Float.valueOf(f10));
            }
        });
    }

    private static final WrapContentModifier createWrapContentHeightModifier(final Alignment.Vertical vertical, final boolean z10) {
        return new WrapContentModifier(Direction.Vertical, z10, new Function2<IntSize, LayoutDirection, IntOffset>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentHeightModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
                return IntOffset.m4158boximpl(m496invoke5SAbXVA(intSize.m4213unboximpl(), layoutDirection));
            }

            /* renamed from: invoke-5SAbXVA  reason: not valid java name */
            public final long m496invoke5SAbXVA(long j10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 1>");
                return IntOffsetKt.IntOffset(0, Alignment.Vertical.this.align(0, IntSize.m4208getHeightimpl(j10)));
            }
        }, vertical, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentHeightModifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("wrapContentHeight");
                $receiver.getProperties().set("align", Alignment.Vertical.this);
                $receiver.getProperties().set("unbounded", Boolean.valueOf(z10));
            }
        });
    }

    private static final WrapContentModifier createWrapContentSizeModifier(final Alignment alignment, final boolean z10) {
        return new WrapContentModifier(Direction.Both, z10, new Function2<IntSize, LayoutDirection, IntOffset>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentSizeModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
                return IntOffset.m4158boximpl(m497invoke5SAbXVA(intSize.m4213unboximpl(), layoutDirection));
            }

            /* renamed from: invoke-5SAbXVA  reason: not valid java name */
            public final long m497invoke5SAbXVA(long j10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                return Alignment.this.mo1514alignKFBX0sM(IntSize.Companion.m4214getZeroYbymL2g(), j10, layoutDirection);
            }
        }, alignment, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentSizeModifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("wrapContentSize");
                $receiver.getProperties().set("align", Alignment.this);
                $receiver.getProperties().set("unbounded", Boolean.valueOf(z10));
            }
        });
    }

    private static final WrapContentModifier createWrapContentWidthModifier(final Alignment.Horizontal horizontal, final boolean z10) {
        return new WrapContentModifier(Direction.Horizontal, z10, new Function2<IntSize, LayoutDirection, IntOffset>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentWidthModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
                return IntOffset.m4158boximpl(m498invoke5SAbXVA(intSize.m4213unboximpl(), layoutDirection));
            }

            /* renamed from: invoke-5SAbXVA  reason: not valid java name */
            public final long m498invoke5SAbXVA(long j10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                return IntOffsetKt.IntOffset(Alignment.Horizontal.this.align(0, IntSize.m4209getWidthimpl(j10), layoutDirection), 0);
            }
        }, horizontal, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$createWrapContentWidthModifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("wrapContentWidth");
                $receiver.getProperties().set("align", Alignment.Horizontal.this);
                $receiver.getProperties().set("unbounded", Boolean.valueOf(z10));
            }
        });
    }

    @Stable
    @NotNull
    /* renamed from: defaultMinSize-VpY3zN4  reason: not valid java name */
    public static final Modifier m472defaultMinSizeVpY3zN4(@NotNull Modifier defaultMinSize, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(defaultMinSize, "$this$defaultMinSize");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$defaultMinSize-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("defaultMinSize");
                    inspectorInfo.getProperties().set("minWidth", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("minHeight", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return defaultMinSize.then(new UnspecifiedConstraintsModifier(f10, f11, noInspectorInfo, null));
    }

    /* renamed from: defaultMinSize-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m473defaultMinSizeVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m472defaultMinSizeVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    public static final Modifier fillMaxHeight(@NotNull Modifier modifier, float f10) {
        FillModifier createFillHeightModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (f10 == 1.0f) {
            createFillHeightModifier = FillWholeMaxHeight;
        } else {
            createFillHeightModifier = createFillHeightModifier(f10);
        }
        return modifier.then(createFillHeightModifier);
    }

    public static /* synthetic */ Modifier fillMaxHeight$default(Modifier modifier, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return fillMaxHeight(modifier, f10);
    }

    @Stable
    @NotNull
    public static final Modifier fillMaxSize(@NotNull Modifier modifier, float f10) {
        FillModifier createFillSizeModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (f10 == 1.0f) {
            createFillSizeModifier = FillWholeMaxSize;
        } else {
            createFillSizeModifier = createFillSizeModifier(f10);
        }
        return modifier.then(createFillSizeModifier);
    }

    public static /* synthetic */ Modifier fillMaxSize$default(Modifier modifier, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return fillMaxSize(modifier, f10);
    }

    @Stable
    @NotNull
    public static final Modifier fillMaxWidth(@NotNull Modifier modifier, float f10) {
        FillModifier createFillWidthModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (f10 == 1.0f) {
            createFillWidthModifier = FillWholeMaxWidth;
        } else {
            createFillWidthModifier = createFillWidthModifier(f10);
        }
        return modifier.then(createFillWidthModifier);
    }

    public static /* synthetic */ Modifier fillMaxWidth$default(Modifier modifier, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return fillMaxWidth(modifier, f10);
    }

    @Stable
    @NotNull
    /* renamed from: height-3ABfNKs  reason: not valid java name */
    public static final Modifier m474height3ABfNKs(@NotNull Modifier height, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(height, "$this$height");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("height");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return height.then(new SizeModifier(0.0f, f10, 0.0f, f10, true, noInspectorInfo, 5, null));
    }

    @Stable
    @NotNull
    /* renamed from: heightIn-VpY3zN4  reason: not valid java name */
    public static final Modifier m475heightInVpY3zN4(@NotNull Modifier heightIn, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(heightIn, "$this$heightIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("heightIn");
                    inspectorInfo.getProperties().set("min", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(AppLovinMediationProvider.MAX, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return heightIn.then(new SizeModifier(0.0f, f10, 0.0f, f11, true, noInspectorInfo, 5, null));
    }

    /* renamed from: heightIn-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m476heightInVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m475heightInVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: requiredHeight-3ABfNKs  reason: not valid java name */
    public static final Modifier m477requiredHeight3ABfNKs(@NotNull Modifier requiredHeight, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredHeight, "$this$requiredHeight");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredHeight-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredHeight");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredHeight.then(new SizeModifier(0.0f, f10, 0.0f, f10, false, noInspectorInfo, 5, null));
    }

    @Stable
    @NotNull
    /* renamed from: requiredHeightIn-VpY3zN4  reason: not valid java name */
    public static final Modifier m478requiredHeightInVpY3zN4(@NotNull Modifier requiredHeightIn, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredHeightIn, "$this$requiredHeightIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredHeightIn-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredHeightIn");
                    inspectorInfo.getProperties().set("min", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(AppLovinMediationProvider.MAX, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredHeightIn.then(new SizeModifier(0.0f, f10, 0.0f, f11, false, noInspectorInfo, 5, null));
    }

    /* renamed from: requiredHeightIn-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m479requiredHeightInVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m478requiredHeightInVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: requiredSize-3ABfNKs  reason: not valid java name */
    public static final Modifier m480requiredSize3ABfNKs(@NotNull Modifier requiredSize, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredSize, "$this$requiredSize");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredSize-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredSize");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredSize.then(new SizeModifier(f10, f10, f10, f10, false, noInspectorInfo, null));
    }

    @Stable
    @NotNull
    /* renamed from: requiredSize-6HolHcs  reason: not valid java name */
    public static final Modifier m481requiredSize6HolHcs(@NotNull Modifier requiredSize, long j10) {
        Intrinsics.checkNotNullParameter(requiredSize, "$this$requiredSize");
        return m482requiredSizeVpY3zN4(requiredSize, DpSize.m4147getWidthD9Ej5fM(j10), DpSize.m4145getHeightD9Ej5fM(j10));
    }

    @Stable
    @NotNull
    /* renamed from: requiredSize-VpY3zN4  reason: not valid java name */
    public static final Modifier m482requiredSizeVpY3zN4(@NotNull Modifier requiredSize, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredSize, "$this$requiredSize");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredSize-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredSize");
                    inspectorInfo.getProperties().set("width", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("height", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredSize.then(new SizeModifier(f10, f11, f10, f11, false, noInspectorInfo, null));
    }

    @Stable
    @NotNull
    /* renamed from: requiredSizeIn-qDBjuR0  reason: not valid java name */
    public static final Modifier m483requiredSizeInqDBjuR0(@NotNull Modifier requiredSizeIn, final float f10, final float f11, final float f12, final float f13) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredSizeIn, "$this$requiredSizeIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredSizeIn");
                    inspectorInfo.getProperties().set("minWidth", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("minHeight", Dp.m4047boximpl(f11));
                    inspectorInfo.getProperties().set("maxWidth", Dp.m4047boximpl(f12));
                    inspectorInfo.getProperties().set("maxHeight", Dp.m4047boximpl(f13));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredSizeIn.then(new SizeModifier(f10, f11, f12, f13, false, noInspectorInfo, null));
    }

    /* renamed from: requiredSizeIn-qDBjuR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m484requiredSizeInqDBjuR0$default(Modifier modifier, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 4) != 0) {
            f12 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 8) != 0) {
            f13 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m483requiredSizeInqDBjuR0(modifier, f10, f11, f12, f13);
    }

    @Stable
    @NotNull
    /* renamed from: requiredWidth-3ABfNKs  reason: not valid java name */
    public static final Modifier m485requiredWidth3ABfNKs(@NotNull Modifier requiredWidth, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredWidth, "$this$requiredWidth");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredWidth-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredWidth");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredWidth.then(new SizeModifier(f10, 0.0f, f10, 0.0f, false, noInspectorInfo, 10, null));
    }

    @Stable
    @NotNull
    /* renamed from: requiredWidthIn-VpY3zN4  reason: not valid java name */
    public static final Modifier m486requiredWidthInVpY3zN4(@NotNull Modifier requiredWidthIn, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(requiredWidthIn, "$this$requiredWidthIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$requiredWidthIn-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("requiredWidthIn");
                    inspectorInfo.getProperties().set("min", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(AppLovinMediationProvider.MAX, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return requiredWidthIn.then(new SizeModifier(f10, 0.0f, f11, 0.0f, false, noInspectorInfo, 10, null));
    }

    /* renamed from: requiredWidthIn-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m487requiredWidthInVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m486requiredWidthInVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    /* renamed from: size-3ABfNKs  reason: not valid java name */
    public static final Modifier m488size3ABfNKs(@NotNull Modifier size, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(size, "$this$size");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("size");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return size.then(new SizeModifier(f10, f10, f10, f10, true, noInspectorInfo, null));
    }

    @Stable
    @NotNull
    /* renamed from: size-6HolHcs  reason: not valid java name */
    public static final Modifier m489size6HolHcs(@NotNull Modifier size, long j10) {
        Intrinsics.checkNotNullParameter(size, "$this$size");
        return m490sizeVpY3zN4(size, DpSize.m4147getWidthD9Ej5fM(j10), DpSize.m4145getHeightD9Ej5fM(j10));
    }

    @Stable
    @NotNull
    /* renamed from: size-VpY3zN4  reason: not valid java name */
    public static final Modifier m490sizeVpY3zN4(@NotNull Modifier size, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(size, "$this$size");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("size");
                    inspectorInfo.getProperties().set("width", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("height", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return size.then(new SizeModifier(f10, f11, f10, f11, true, noInspectorInfo, null));
    }

    @Stable
    @NotNull
    /* renamed from: sizeIn-qDBjuR0  reason: not valid java name */
    public static final Modifier m491sizeInqDBjuR0(@NotNull Modifier sizeIn, final float f10, final float f11, final float f12, final float f13) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(sizeIn, "$this$sizeIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("sizeIn");
                    inspectorInfo.getProperties().set("minWidth", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("minHeight", Dp.m4047boximpl(f11));
                    inspectorInfo.getProperties().set("maxWidth", Dp.m4047boximpl(f12));
                    inspectorInfo.getProperties().set("maxHeight", Dp.m4047boximpl(f13));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return sizeIn.then(new SizeModifier(f10, f11, f12, f13, true, noInspectorInfo, null));
    }

    /* renamed from: sizeIn-qDBjuR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m492sizeInqDBjuR0$default(Modifier modifier, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 4) != 0) {
            f12 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 8) != 0) {
            f13 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m491sizeInqDBjuR0(modifier, f10, f11, f12, f13);
    }

    @Stable
    @NotNull
    /* renamed from: width-3ABfNKs  reason: not valid java name */
    public static final Modifier m493width3ABfNKs(@NotNull Modifier width, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(width, "$this$width");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("width");
                    inspectorInfo.setValue(Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return width.then(new SizeModifier(f10, 0.0f, f10, 0.0f, true, noInspectorInfo, 10, null));
    }

    @Stable
    @NotNull
    /* renamed from: widthIn-VpY3zN4  reason: not valid java name */
    public static final Modifier m494widthInVpY3zN4(@NotNull Modifier widthIn, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(widthIn, "$this$widthIn");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("widthIn");
                    inspectorInfo.getProperties().set("min", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(AppLovinMediationProvider.MAX, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return widthIn.then(new SizeModifier(f10, 0.0f, f11, 0.0f, true, noInspectorInfo, 10, null));
    }

    /* renamed from: widthIn-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m495widthInVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        return m494widthInVpY3zN4(modifier, f10, f11);
    }

    @Stable
    @NotNull
    public static final Modifier wrapContentHeight(@NotNull Modifier modifier, @NotNull Alignment.Vertical align, boolean z10) {
        WrapContentModifier createWrapContentHeightModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(align, "align");
        Alignment.Companion companion = Alignment.Companion;
        if (Intrinsics.areEqual(align, companion.getCenterVertically()) && !z10) {
            createWrapContentHeightModifier = WrapContentHeightCenter;
        } else if (Intrinsics.areEqual(align, companion.getTop()) && !z10) {
            createWrapContentHeightModifier = WrapContentHeightTop;
        } else {
            createWrapContentHeightModifier = createWrapContentHeightModifier(align, z10);
        }
        return modifier.then(createWrapContentHeightModifier);
    }

    public static /* synthetic */ Modifier wrapContentHeight$default(Modifier modifier, Alignment.Vertical vertical, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            vertical = Alignment.Companion.getCenterVertically();
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return wrapContentHeight(modifier, vertical, z10);
    }

    @Stable
    @NotNull
    public static final Modifier wrapContentSize(@NotNull Modifier modifier, @NotNull Alignment align, boolean z10) {
        WrapContentModifier createWrapContentSizeModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(align, "align");
        Alignment.Companion companion = Alignment.Companion;
        if (Intrinsics.areEqual(align, companion.getCenter()) && !z10) {
            createWrapContentSizeModifier = WrapContentSizeCenter;
        } else if (Intrinsics.areEqual(align, companion.getTopStart()) && !z10) {
            createWrapContentSizeModifier = WrapContentSizeTopStart;
        } else {
            createWrapContentSizeModifier = createWrapContentSizeModifier(align, z10);
        }
        return modifier.then(createWrapContentSizeModifier);
    }

    public static /* synthetic */ Modifier wrapContentSize$default(Modifier modifier, Alignment alignment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            alignment = Alignment.Companion.getCenter();
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return wrapContentSize(modifier, alignment, z10);
    }

    @Stable
    @NotNull
    public static final Modifier wrapContentWidth(@NotNull Modifier modifier, @NotNull Alignment.Horizontal align, boolean z10) {
        WrapContentModifier createWrapContentWidthModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(align, "align");
        Alignment.Companion companion = Alignment.Companion;
        if (Intrinsics.areEqual(align, companion.getCenterHorizontally()) && !z10) {
            createWrapContentWidthModifier = WrapContentWidthCenter;
        } else if (Intrinsics.areEqual(align, companion.getStart()) && !z10) {
            createWrapContentWidthModifier = WrapContentWidthStart;
        } else {
            createWrapContentWidthModifier = createWrapContentWidthModifier(align, z10);
        }
        return modifier.then(createWrapContentWidthModifier);
    }

    public static /* synthetic */ Modifier wrapContentWidth$default(Modifier modifier, Alignment.Horizontal horizontal, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            horizontal = Alignment.Companion.getCenterHorizontally();
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return wrapContentWidth(modifier, horizontal, z10);
    }
}
