package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsetsSize.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInsetsSizeKt {
    @Stable
    @NotNull
    public static final Modifier windowInsetsBottomHeight(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsBottomHeight$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("insetsBottomHeight");
                    inspectorInfo.getProperties().set("insets", WindowInsets.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new DerivedHeightModifier(insets, noInspectorInfo, new Function2<WindowInsets, Density, Integer>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsBottomHeight$2
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull Density it) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf($receiver.getBottom(it));
            }
        }));
    }

    @Stable
    @NotNull
    public static final Modifier windowInsetsEndWidth(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsEndWidth$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("insetsEndWidth");
                    inspectorInfo.getProperties().set("insets", WindowInsets.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new DerivedWidthModifier(insets, noInspectorInfo, new n<WindowInsets, LayoutDirection, Density, Integer>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsEndWidth$2
            @Override // at.n
            @NotNull
            public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                int right;
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                if (layoutDirection == LayoutDirection.Rtl) {
                    right = $receiver.getLeft(density, layoutDirection);
                } else {
                    right = $receiver.getRight(density, layoutDirection);
                }
                return Integer.valueOf(right);
            }
        }));
    }

    @Stable
    @NotNull
    public static final Modifier windowInsetsStartWidth(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsStartWidth$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("insetsStartWidth");
                    inspectorInfo.getProperties().set("insets", WindowInsets.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new DerivedWidthModifier(insets, noInspectorInfo, new n<WindowInsets, LayoutDirection, Density, Integer>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsStartWidth$2
            @Override // at.n
            @NotNull
            public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                int right;
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                if (layoutDirection == LayoutDirection.Ltr) {
                    right = $receiver.getLeft(density, layoutDirection);
                } else {
                    right = $receiver.getRight(density, layoutDirection);
                }
                return Integer.valueOf(right);
            }
        }));
    }

    @Stable
    @NotNull
    public static final Modifier windowInsetsTopHeight(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsTopHeight$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("insetsTopHeight");
                    inspectorInfo.getProperties().set("insets", WindowInsets.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new DerivedHeightModifier(insets, noInspectorInfo, new Function2<WindowInsets, Density, Integer>() { // from class: androidx.compose.foundation.layout.WindowInsetsSizeKt$windowInsetsTopHeight$2
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull WindowInsets $receiver, @NotNull Density it) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf($receiver.getTop(it));
            }
        }));
    }
}
