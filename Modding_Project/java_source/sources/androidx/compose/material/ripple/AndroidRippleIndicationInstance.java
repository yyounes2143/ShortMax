package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Ripple.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;
    @NotNull
    private final State<Color> color;
    @NotNull
    private final MutableState invalidateTick$delegate;
    @NotNull
    private final Function0<Unit> onInvalidateRipple;
    private final float radius;
    @NotNull
    private final State<RippleAlpha> rippleAlpha;
    @NotNull
    private final RippleContainer rippleContainer;
    @NotNull
    private final MutableState rippleHostView$delegate;
    private int rippleRadius;
    private long rippleSize;

    public /* synthetic */ AndroidRippleIndicationInstance(boolean z10, float f10, State state, State state2, RippleContainer rippleContainer, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, state, state2, rippleContainer);
    }

    private final void dispose() {
        this.rippleContainer.disposeRippleIfNeeded(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getInvalidateTick() {
        return ((Boolean) this.invalidateTick$delegate.getValue()).booleanValue();
    }

    private final RippleHostView getRippleHostView() {
        return (RippleHostView) this.rippleHostView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInvalidateTick(boolean z10) {
        this.invalidateTick$delegate.setValue(Boolean.valueOf(z10));
    }

    private final void setRippleHostView(RippleHostView rippleHostView) {
        this.rippleHostView$delegate.setValue(rippleHostView);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void addRipple(@NotNull PressInteraction.Press interaction, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        RippleHostView rippleHostView = this.rippleContainer.getRippleHostView(this);
        rippleHostView.m1286addRippleKOepWvA(interaction, this.bounded, this.rippleSize, this.rippleRadius, this.color.getValue().m1852unboximpl(), this.rippleAlpha.getValue().getPressedAlpha(), this.onInvalidateRipple);
        setRippleHostView(rippleHostView);
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void drawIndication(@NotNull ContentDrawScope contentDrawScope) {
        int mo336roundToPx0680j_4;
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        this.rippleSize = contentDrawScope.mo2336getSizeNHjbRc();
        if (Float.isNaN(this.radius)) {
            mo336roundToPx0680j_4 = bt.a.c(RippleAnimationKt.m1283getRippleEndRadiuscSwnlzA(contentDrawScope, this.bounded, contentDrawScope.mo2336getSizeNHjbRc()));
        } else {
            mo336roundToPx0680j_4 = contentDrawScope.mo336roundToPx0680j_4(this.radius);
        }
        this.rippleRadius = mo336roundToPx0680j_4;
        long m1852unboximpl = this.color.getValue().m1852unboximpl();
        float pressedAlpha = this.rippleAlpha.getValue().getPressedAlpha();
        contentDrawScope.drawContent();
        m1288drawStateLayerH2RKhps(contentDrawScope, this.radius, m1852unboximpl);
        Canvas canvas = contentDrawScope.getDrawContext().getCanvas();
        getInvalidateTick();
        RippleHostView rippleHostView = getRippleHostView();
        if (rippleHostView != null) {
            rippleHostView.m1287updateRipplePropertiesbiQXAtU(contentDrawScope.mo2336getSizeNHjbRc(), this.rippleRadius, m1852unboximpl, pressedAlpha);
            rippleHostView.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        dispose();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        dispose();
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void removeRipple(@NotNull PressInteraction.Press interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        RippleHostView rippleHostView = getRippleHostView();
        if (rippleHostView != null) {
            rippleHostView.removeRipple();
        }
    }

    public final void resetHostView() {
        setRippleHostView(null);
    }

    private AndroidRippleIndicationInstance(boolean z10, float f10, State<Color> state, State<RippleAlpha> state2, RippleContainer rippleContainer) {
        super(z10, state2);
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        this.bounded = z10;
        this.radius = f10;
        this.color = state;
        this.rippleAlpha = state2;
        this.rippleContainer = rippleContainer;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.rippleHostView$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.invalidateTick$delegate = mutableStateOf$default2;
        this.rippleSize = Size.Companion.m1684getZeroNHjbRc();
        this.rippleRadius = -1;
        this.onInvalidateRipple = new Function0<Unit>() { // from class: androidx.compose.material.ripple.AndroidRippleIndicationInstance$onInvalidateRipple$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                boolean invalidateTick;
                AndroidRippleIndicationInstance androidRippleIndicationInstance = AndroidRippleIndicationInstance.this;
                invalidateTick = androidRippleIndicationInstance.getInvalidateTick();
                androidRippleIndicationInstance.setInvalidateTick(!invalidateTick);
            }
        };
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }
}
