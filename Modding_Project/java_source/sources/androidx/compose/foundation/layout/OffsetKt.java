package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Offset.kt */
@Metadata
/* loaded from: classes.dex */
public final class OffsetKt {
    @NotNull
    public static final Modifier absoluteOffset(@NotNull Modifier modifier, @NotNull final Function1<? super Density, IntOffset> offset) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(offset, "offset");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$absoluteOffset$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("absoluteOffset");
                    inspectorInfo.getProperties().set(TypedValues.CycleType.S_WAVE_OFFSET, Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new OffsetPxModifier(offset, false, noInspectorInfo));
    }

    @Stable
    @NotNull
    /* renamed from: absoluteOffset-VpY3zN4  reason: not valid java name */
    public static final Modifier m433absoluteOffsetVpY3zN4(@NotNull Modifier absoluteOffset, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(absoluteOffset, "$this$absoluteOffset");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$absoluteOffset-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("absoluteOffset");
                    inspectorInfo.getProperties().set(TextureRenderKeys.KEY_IS_X, Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(TextureRenderKeys.KEY_IS_Y, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return absoluteOffset.then(new OffsetModifier(f10, f11, false, noInspectorInfo, null));
    }

    /* renamed from: absoluteOffset-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m434absoluteOffsetVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        return m433absoluteOffsetVpY3zN4(modifier, f10, f11);
    }

    @NotNull
    public static final Modifier offset(@NotNull Modifier modifier, @NotNull final Function1<? super Density, IntOffset> offset) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(offset, "offset");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$offset$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName(TypedValues.CycleType.S_WAVE_OFFSET);
                    inspectorInfo.getProperties().set(TypedValues.CycleType.S_WAVE_OFFSET, Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new OffsetPxModifier(offset, true, noInspectorInfo));
    }

    @Stable
    @NotNull
    /* renamed from: offset-VpY3zN4  reason: not valid java name */
    public static final Modifier m435offsetVpY3zN4(@NotNull Modifier offset, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(offset, "$this$offset");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$offset-VpY3zN4$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName(TypedValues.CycleType.S_WAVE_OFFSET);
                    inspectorInfo.getProperties().set(TextureRenderKeys.KEY_IS_X, Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set(TextureRenderKeys.KEY_IS_Y, Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return offset.then(new OffsetModifier(f10, f11, true, noInspectorInfo, null));
    }

    /* renamed from: offset-VpY3zN4$default  reason: not valid java name */
    public static /* synthetic */ Modifier m436offsetVpY3zN4$default(Modifier modifier, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(0);
        }
        if ((i10 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(0);
        }
        return m435offsetVpY3zN4(modifier, f10, f11);
    }
}
