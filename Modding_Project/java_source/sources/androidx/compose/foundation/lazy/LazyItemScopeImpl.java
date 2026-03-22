package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyItemScopeImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyItemScopeImpl implements LazyItemScope {
    @NotNull
    private final MutableState maxHeight$delegate;
    @NotNull
    private final MutableState maxWidth$delegate;

    public LazyItemScopeImpl() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Dp.Companion companion = Dp.Companion;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Dp.m4047boximpl(companion.m4069getUnspecifiedD9Ej5fM()), null, 2, null);
        this.maxWidth$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Dp.m4047boximpl(companion.m4069getUnspecifiedD9Ej5fM()), null, 2, null);
        this.maxHeight$delegate = mutableStateOf$default2;
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    @ExperimentalFoundationApi
    @NotNull
    public Modifier animateItemPlacement(@NotNull Modifier modifier, @NotNull final FiniteAnimationSpec<IntOffset> animationSpec) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.lazy.LazyItemScopeImpl$animateItemPlacement$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("animateItemPlacement");
                    inspectorInfo.setValue(FiniteAnimationSpec.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new AnimateItemPlacementModifier(animationSpec, noInspectorInfo));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    @NotNull
    public Modifier fillParentMaxHeight(@NotNull Modifier modifier, float f10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return SizeKt.m474height3ABfNKs(modifier, Dp.m4049constructorimpl(m550getMaxHeightD9Ej5fM() * f10));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    @NotNull
    public Modifier fillParentMaxSize(@NotNull Modifier modifier, float f10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return SizeKt.m490sizeVpY3zN4(modifier, Dp.m4049constructorimpl(m551getMaxWidthD9Ej5fM() * f10), Dp.m4049constructorimpl(m550getMaxHeightD9Ej5fM() * f10));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    @NotNull
    public Modifier fillParentMaxWidth(@NotNull Modifier modifier, float f10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return SizeKt.m493width3ABfNKs(modifier, Dp.m4049constructorimpl(m551getMaxWidthD9Ej5fM() * f10));
    }

    /* renamed from: getMaxHeight-D9Ej5fM  reason: not valid java name */
    public final float m550getMaxHeightD9Ej5fM() {
        return ((Dp) this.maxHeight$delegate.getValue()).m4063unboximpl();
    }

    /* renamed from: getMaxWidth-D9Ej5fM  reason: not valid java name */
    public final float m551getMaxWidthD9Ej5fM() {
        return ((Dp) this.maxWidth$delegate.getValue()).m4063unboximpl();
    }

    /* renamed from: setMaxHeight-0680j_4  reason: not valid java name */
    public final void m552setMaxHeight0680j_4(float f10) {
        this.maxHeight$delegate.setValue(Dp.m4047boximpl(f10));
    }

    /* renamed from: setMaxWidth-0680j_4  reason: not valid java name */
    public final void m553setMaxWidth0680j_4(float f10) {
        this.maxWidth$delegate.setValue(Dp.m4047boximpl(f10));
    }
}
